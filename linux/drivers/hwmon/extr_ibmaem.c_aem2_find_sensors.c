
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aem_data {int dummy; } ;


 int aem2_ro_sensors ;
 int aem2_rw_sensors ;
 int aem_register_sensors (struct aem_data*,int ,int ) ;

__attribute__((used)) static int aem2_find_sensors(struct aem_data *data)
{
 return aem_register_sensors(data, aem2_ro_sensors, aem2_rw_sensors);
}
