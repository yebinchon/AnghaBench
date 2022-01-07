
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct hfi1_devdata {int dc8051_timed_out; int dc8051_lock; scalar_t__ dc_shutdown; } ;


 int DC8051 ;
 int DC8051_COMMAND_TIMEOUT ;
 int DC_DC8051_CFG_EXT_DEV_0 ;
 int DC_DC8051_CFG_EXT_DEV_0_COMPLETED_SMASK ;
 int DC_DC8051_CFG_EXT_DEV_0_RETURN_CODE_SHIFT ;
 int DC_DC8051_CFG_EXT_DEV_0_RSP_DATA_SHIFT ;
 int DC_DC8051_CFG_EXT_DEV_1 ;
 int DC_DC8051_CFG_EXT_DEV_1_REQ_DATA_SHIFT ;
 int DC_DC8051_CFG_EXT_DEV_1_REQ_DATA_SMASK ;
 int DC_DC8051_CFG_HOST_CMD_0 ;
 int DC_DC8051_CFG_HOST_CMD_0_REQ_DATA_MASK ;
 int DC_DC8051_CFG_HOST_CMD_0_REQ_DATA_SHIFT ;
 int DC_DC8051_CFG_HOST_CMD_0_REQ_NEW_SMASK ;
 int DC_DC8051_CFG_HOST_CMD_0_REQ_TYPE_MASK ;
 int DC_DC8051_CFG_HOST_CMD_0_REQ_TYPE_SHIFT ;
 int DC_DC8051_CFG_HOST_CMD_1 ;
 int DC_DC8051_CFG_HOST_CMD_1_COMPLETED_SMASK ;
 int DC_DC8051_CFG_HOST_CMD_1_RETURN_CODE_MASK ;
 int DC_DC8051_CFG_HOST_CMD_1_RETURN_CODE_SHIFT ;
 int DC_DC8051_CFG_HOST_CMD_1_RSP_DATA_MASK ;
 int DC_DC8051_CFG_HOST_CMD_1_RSP_DATA_SHIFT ;
 int ENODEV ;
 int ENXIO ;
 int ETIMEDOUT ;
 scalar_t__ HCMD_READ_LCB_CSR ;
 scalar_t__ HCMD_WRITE_LCB_CSR ;
 int _dc_shutdown (struct hfi1_devdata*) ;
 int _dc_start (struct hfi1_devdata*) ;
 int dd_dev_err (struct hfi1_devdata*,char*,scalar_t__) ;
 int hfi1_cdbg (int ,char*,scalar_t__,int) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int read_csr (struct hfi1_devdata*,int ) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int udelay (int) ;
 int write_csr (struct hfi1_devdata*,int ,int) ;

__attribute__((used)) static int do_8051_command(struct hfi1_devdata *dd, u32 type, u64 in_data,
      u64 *out_data)
{
 u64 reg, completed;
 int return_code;
 unsigned long timeout;

 hfi1_cdbg(DC8051, "type %d, data 0x%012llx", type, in_data);

 mutex_lock(&dd->dc8051_lock);


 if (dd->dc_shutdown) {
  return_code = -ENODEV;
  goto fail;
 }
 if (dd->dc8051_timed_out) {
  if (dd->dc8051_timed_out > 1) {
   dd_dev_err(dd,
       "Previous 8051 host command timed out, skipping command %u\n",
       type);
   return_code = -ENXIO;
   goto fail;
  }
  _dc_shutdown(dd);
  _dc_start(dd);
 }
 if (type == HCMD_WRITE_LCB_CSR) {
  in_data |= ((*out_data) & 0xffffffffffull) << 8;

  reg = read_csr(dd, DC_DC8051_CFG_EXT_DEV_0);
  reg &= DC_DC8051_CFG_EXT_DEV_0_COMPLETED_SMASK;
  reg |= ((((*out_data) >> 40) & 0xff) <<
    DC_DC8051_CFG_EXT_DEV_0_RETURN_CODE_SHIFT)
        | ((((*out_data) >> 48) & 0xffff) <<
    DC_DC8051_CFG_EXT_DEV_0_RSP_DATA_SHIFT);
  write_csr(dd, DC_DC8051_CFG_EXT_DEV_0, reg);
 }





 reg = ((u64)type & DC_DC8051_CFG_HOST_CMD_0_REQ_TYPE_MASK)
   << DC_DC8051_CFG_HOST_CMD_0_REQ_TYPE_SHIFT
  | (in_data & DC_DC8051_CFG_HOST_CMD_0_REQ_DATA_MASK)
   << DC_DC8051_CFG_HOST_CMD_0_REQ_DATA_SHIFT;
 write_csr(dd, DC_DC8051_CFG_HOST_CMD_0, reg);
 reg |= DC_DC8051_CFG_HOST_CMD_0_REQ_NEW_SMASK;
 write_csr(dd, DC_DC8051_CFG_HOST_CMD_0, reg);


 timeout = jiffies + msecs_to_jiffies(DC8051_COMMAND_TIMEOUT);
 while (1) {
  reg = read_csr(dd, DC_DC8051_CFG_HOST_CMD_1);
  completed = reg & DC_DC8051_CFG_HOST_CMD_1_COMPLETED_SMASK;
  if (completed)
   break;
  if (time_after(jiffies, timeout)) {
   dd->dc8051_timed_out++;
   dd_dev_err(dd, "8051 host command %u timeout\n", type);
   if (out_data)
    *out_data = 0;
   return_code = -ETIMEDOUT;
   goto fail;
  }
  udelay(2);
 }

 if (out_data) {
  *out_data = (reg >> DC_DC8051_CFG_HOST_CMD_1_RSP_DATA_SHIFT)
    & DC_DC8051_CFG_HOST_CMD_1_RSP_DATA_MASK;
  if (type == HCMD_READ_LCB_CSR) {

   *out_data |= (read_csr(dd, DC_DC8051_CFG_EXT_DEV_1)
    & DC_DC8051_CFG_EXT_DEV_1_REQ_DATA_SMASK)
    << (48
        - DC_DC8051_CFG_EXT_DEV_1_REQ_DATA_SHIFT);
  }
 }
 return_code = (reg >> DC_DC8051_CFG_HOST_CMD_1_RETURN_CODE_SHIFT)
    & DC_DC8051_CFG_HOST_CMD_1_RETURN_CODE_MASK;
 dd->dc8051_timed_out = 0;



 write_csr(dd, DC_DC8051_CFG_HOST_CMD_0, 0);

fail:
 mutex_unlock(&dd->dc8051_lock);
 return return_code;
}
