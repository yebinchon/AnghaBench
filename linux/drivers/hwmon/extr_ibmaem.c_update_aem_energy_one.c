
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aem_data {int * energy; } ;


 int AEM_ENERGY_ELEMENT ;
 int aem_read_sensor (struct aem_data*,int ,int,int *,int) ;

__attribute__((used)) static void update_aem_energy_one(struct aem_data *data, int which)
{
 aem_read_sensor(data, AEM_ENERGY_ELEMENT, which,
   &data->energy[which], 8);
}
