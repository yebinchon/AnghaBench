
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cpc925_dev_info {scalar_t__ vbase; } ;


 int HT_ERRCTRL_ENABLE ;
 scalar_t__ REG_ERRCTRL_OFFSET ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int ,scalar_t__) ;

__attribute__((used)) static void cpc925_htlink_exit(struct cpc925_dev_info *dev_info)
{
 u32 ht_errctrl;

 ht_errctrl = __raw_readl(dev_info->vbase + REG_ERRCTRL_OFFSET);
 ht_errctrl &= ~HT_ERRCTRL_ENABLE;
 __raw_writel(ht_errctrl, dev_info->vbase + REG_ERRCTRL_OFFSET);
}
