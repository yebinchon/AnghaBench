
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
typedef int dcr_host_t ;


 int DCR_MAP_OK (int ) ;
 int EINVAL ;
 int ENODEV ;
 int KERN_ERR ;
 int KERN_INFO ;
 unsigned int SDRAM_DCR_RESOURCE_LEN ;
 int dcr_map (struct device_node const*,unsigned int,unsigned int) ;
 unsigned int dcr_resource_len (struct device_node const*,int ) ;
 unsigned int dcr_resource_start (struct device_node const*,int ) ;
 int ppc4xx_edac_printk (int ,char*,...) ;

__attribute__((used)) static int ppc4xx_edac_map_dcrs(const struct device_node *np,
    dcr_host_t *dcr_host)
{
 unsigned int dcr_base, dcr_len;

 if (np == ((void*)0) || dcr_host == ((void*)0))
  return -EINVAL;



 dcr_base = dcr_resource_start(np, 0);
 dcr_len = dcr_resource_len(np, 0);

 if (dcr_base == 0 || dcr_len == 0) {
  ppc4xx_edac_printk(KERN_ERR,
       "Failed to obtain DCR property.\n");
  return -ENODEV;
 }

 if (dcr_len != SDRAM_DCR_RESOURCE_LEN) {
  ppc4xx_edac_printk(KERN_ERR,
       "Unexpected DCR length %d, expected %d.\n",
       dcr_len, SDRAM_DCR_RESOURCE_LEN);
  return -ENODEV;
 }



 *dcr_host = dcr_map(np, dcr_base, dcr_len);

 if (!DCR_MAP_OK(*dcr_host)) {
  ppc4xx_edac_printk(KERN_INFO, "Failed to map DCRs.\n");
      return -ENODEV;
 }

 return 0;
}
