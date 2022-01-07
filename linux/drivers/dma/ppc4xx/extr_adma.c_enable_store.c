
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef size_t ssize_t ;


 int DCRN_MQ0_XORBA ;
 size_t EFAULT ;
 size_t EINVAL ;
 int dcr_write (int ,int ,unsigned long) ;
 int isync () ;
 int ppc440spe_mq_dcr_host ;
 int ppc440spe_r6_enabled ;
 int ppc440spe_r6_tchan ;
 scalar_t__ ppc440spe_test_raid6 (int ) ;
 int pr_info (char*) ;
 int sscanf (char const*,char*,unsigned long*) ;

__attribute__((used)) static ssize_t enable_store(struct device_driver *dev, const char *buf,
       size_t count)
{
 unsigned long val;

 if (!count || count > 11)
  return -EINVAL;

 if (!ppc440spe_r6_tchan)
  return -EFAULT;


 sscanf(buf, "%lx", &val);
 dcr_write(ppc440spe_mq_dcr_host, DCRN_MQ0_XORBA, val);
 isync();


 if (ppc440spe_test_raid6(ppc440spe_r6_tchan) == 0) {
  pr_info("PPC440SP(e) RAID-6 has been activated "
   "successfully\n");
  ppc440spe_r6_enabled = 1;
 } else {
  pr_info("PPC440SP(e) RAID-6 hasn't been activated!"
   " Error key ?\n");
  ppc440spe_r6_enabled = 0;
 }
 return count;
}
