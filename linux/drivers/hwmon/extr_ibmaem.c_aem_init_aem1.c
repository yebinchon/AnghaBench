
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aem_ipmi_data {int bmc_device; } ;


 int aem_find_aem1_count (struct aem_ipmi_data*) ;
 int aem_init_aem1_inst (struct aem_ipmi_data*,int) ;
 int dev_err (int ,char*,int,int) ;

__attribute__((used)) static void aem_init_aem1(struct aem_ipmi_data *probe)
{
 int num, i, err;

 num = aem_find_aem1_count(probe);
 for (i = 0; i < num; i++) {
  err = aem_init_aem1_inst(probe, i);
  if (err) {
   dev_err(probe->bmc_device,
    "Error %d initializing AEM1 0x%X\n",
    err, i);
  }
 }
}
