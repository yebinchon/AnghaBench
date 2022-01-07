
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aem_data {int ver_major; } ;


 int update_aem_energy_one (struct aem_data*,int) ;

__attribute__((used)) static void update_aem_energy(struct aem_data *data)
{
 update_aem_energy_one(data, 0);
 if (data->ver_major < 2)
  return;
 update_aem_energy_one(data, 1);
}
