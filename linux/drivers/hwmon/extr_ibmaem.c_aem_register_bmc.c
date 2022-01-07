
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct aem_ipmi_data {int user; } ;


 int aem_init_aem1 (struct aem_ipmi_data*) ;
 int aem_init_aem2 (struct aem_ipmi_data*) ;
 scalar_t__ aem_init_ipmi_data (struct aem_ipmi_data*,int,struct device*) ;
 int ipmi_destroy_user (int ) ;

__attribute__((used)) static void aem_register_bmc(int iface, struct device *dev)
{
 struct aem_ipmi_data probe;

 if (aem_init_ipmi_data(&probe, iface, dev))
  return;


 aem_init_aem1(&probe);
 aem_init_aem2(&probe);

 ipmi_destroy_user(probe.user);
}
