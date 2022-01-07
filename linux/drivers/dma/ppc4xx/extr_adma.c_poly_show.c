
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int DCRN_MQ0_CFBHL ;
 int MQ0_CFBHL_POLY ;
 int PAGE_SIZE ;
 int dcr_read (int ,int ) ;
 int ppc440spe_mq_dcr_host ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t poly_show(struct device_driver *dev, char *buf)
{
 ssize_t size = 0;
 u32 reg;





 reg = dcr_read(ppc440spe_mq_dcr_host, DCRN_MQ0_CFBHL);
 reg >>= MQ0_CFBHL_POLY;
 reg &= 0xFF;


 size = snprintf(buf, PAGE_SIZE, "PPC440SP(e) RAID-6 driver "
   "uses 0x1%02x polynomial.\n", reg);
 return size;
}
