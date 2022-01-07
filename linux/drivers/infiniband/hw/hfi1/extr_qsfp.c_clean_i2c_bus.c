
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_i2c_bus {int adapter; } ;


 int i2c_del_adapter (int *) ;
 int kfree (struct hfi1_i2c_bus*) ;

__attribute__((used)) static void clean_i2c_bus(struct hfi1_i2c_bus *bus)
{
 if (bus) {
  i2c_del_adapter(&bus->adapter);
  kfree(bus);
 }
}
