
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psp_device {int dev; TYPE_1__* vdata; scalar_t__ io_regs; scalar_t__ sev_int_rcvd; } ;
struct TYPE_2__ {scalar_t__ cmdresp_reg; scalar_t__ cmdbuff_addr_hi_reg; scalar_t__ cmdbuff_addr_lo_reg; } ;


 int DUMP_PREFIX_OFFSET ;
 int EBUSY ;
 unsigned int EIO ;
 int ENODEV ;
 unsigned int PSP_CMDRESP_CMD_SHIFT ;
 unsigned int PSP_CMDRESP_ERR_MASK ;
 unsigned int PSP_CMDRESP_IOC ;
 int __psp_pa (void*) ;
 int dev_dbg (int ,char*,int,unsigned int,...) ;
 int dev_err (int ,char*,int) ;
 int iowrite32 (unsigned int,scalar_t__) ;
 unsigned int lower_32_bits (int ) ;
 int print_hex_dump_debug (char*,int ,int,int,void*,int ,int) ;
 int psp_cmd_timeout ;
 int psp_dead ;
 struct psp_device* psp_master ;
 int psp_timeout ;
 int sev_cmd_buffer_len (int) ;
 unsigned int sev_wait_cmd_ioc (struct psp_device*,unsigned int*,int ) ;
 unsigned int upper_32_bits (int ) ;

__attribute__((used)) static int __sev_do_cmd_locked(int cmd, void *data, int *psp_ret)
{
 struct psp_device *psp = psp_master;
 unsigned int phys_lsb, phys_msb;
 unsigned int reg, ret = 0;

 if (!psp)
  return -ENODEV;

 if (psp_dead)
  return -EBUSY;


 phys_lsb = data ? lower_32_bits(__psp_pa(data)) : 0;
 phys_msb = data ? upper_32_bits(__psp_pa(data)) : 0;

 dev_dbg(psp->dev, "sev command id %#x buffer 0x%08x%08x timeout %us\n",
  cmd, phys_msb, phys_lsb, psp_timeout);

 print_hex_dump_debug("(in):  ", DUMP_PREFIX_OFFSET, 16, 2, data,
        sev_cmd_buffer_len(cmd), 0);

 iowrite32(phys_lsb, psp->io_regs + psp->vdata->cmdbuff_addr_lo_reg);
 iowrite32(phys_msb, psp->io_regs + psp->vdata->cmdbuff_addr_hi_reg);

 psp->sev_int_rcvd = 0;

 reg = cmd;
 reg <<= PSP_CMDRESP_CMD_SHIFT;
 reg |= PSP_CMDRESP_IOC;
 iowrite32(reg, psp->io_regs + psp->vdata->cmdresp_reg);


 ret = sev_wait_cmd_ioc(psp, &reg, psp_timeout);
 if (ret) {
  if (psp_ret)
   *psp_ret = 0;

  dev_err(psp->dev, "sev command %#x timed out, disabling PSP \n", cmd);
  psp_dead = 1;

  return ret;
 }

 psp_timeout = psp_cmd_timeout;

 if (psp_ret)
  *psp_ret = reg & PSP_CMDRESP_ERR_MASK;

 if (reg & PSP_CMDRESP_ERR_MASK) {
  dev_dbg(psp->dev, "sev command %#x failed (%#010x)\n",
   cmd, reg & PSP_CMDRESP_ERR_MASK);
  ret = -EIO;
 }

 print_hex_dump_debug("(out): ", DUMP_PREFIX_OFFSET, 16, 2, data,
        sev_cmd_buffer_len(cmd), 0);

 return ret;
}
