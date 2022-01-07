
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_dev_info {scalar_t__* regs; } ;


 scalar_t__ SEC_Q_VMID_CFG_REG (int) ;
 size_t SEC_SAA ;
 int SEC_SID ;
 int SEC_VMID ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void sec_streamid(struct sec_dev_info *info, int i)
{



 writel_relaxed((0 | ((0x600 & 0xffff) << 8)),
         info->regs[SEC_SAA] + SEC_Q_VMID_CFG_REG(i));
}
