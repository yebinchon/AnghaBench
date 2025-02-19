
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct i3c_device_info {int dcr; int bcr; int pid; int dyn_addr; } ;
struct cdns_i3c_master {scalar_t__ regs; } ;


 scalar_t__ DEV_ID_RR0 (unsigned int) ;
 int DEV_ID_RR0_GET_DEV_ADDR (int) ;
 scalar_t__ DEV_ID_RR1 (unsigned int) ;
 scalar_t__ DEV_ID_RR2 (unsigned int) ;
 int memset (struct i3c_device_info*,int ,int) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void cdns_i3c_master_dev_rr_to_info(struct cdns_i3c_master *master,
        unsigned int slot,
        struct i3c_device_info *info)
{
 u32 rr;

 memset(info, 0, sizeof(*info));
 rr = readl(master->regs + DEV_ID_RR0(slot));
 info->dyn_addr = DEV_ID_RR0_GET_DEV_ADDR(rr);
 rr = readl(master->regs + DEV_ID_RR2(slot));
 info->dcr = rr;
 info->bcr = rr >> 8;
 info->pid = rr >> 16;
 info->pid |= (u64)readl(master->regs + DEV_ID_RR1(slot)) << 16;
}
