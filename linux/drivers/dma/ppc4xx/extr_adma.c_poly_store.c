
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef size_t ssize_t ;


 int DCRN_MQ0_CFBHL ;
 size_t EINVAL ;
 int MQ0_CFBHL_POLY ;
 unsigned long dcr_read (int ,int ) ;
 int dcr_write (int ,int ,unsigned long) ;
 int ppc440spe_mq_dcr_host ;
 int sscanf (char const*,char*,unsigned long*) ;

__attribute__((used)) static ssize_t poly_store(struct device_driver *dev, const char *buf,
     size_t count)
{
 unsigned long reg, val;






 if (!count || count > 6)
  return -EINVAL;


 sscanf(buf, "%lx", &val);

 if (val & ~0x1FF)
  return -EINVAL;

 val &= 0xFF;
 reg = dcr_read(ppc440spe_mq_dcr_host, DCRN_MQ0_CFBHL);
 reg &= ~(0xFF << MQ0_CFBHL_POLY);
 reg |= val << MQ0_CFBHL_POLY;
 dcr_write(ppc440spe_mq_dcr_host, DCRN_MQ0_CFBHL, reg);

 return count;
}
