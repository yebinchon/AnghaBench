
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aspeed_i2c_bus {scalar_t__ msgs_index; scalar_t__ msgs_count; } ;


 int aspeed_i2c_do_start (struct aspeed_i2c_bus*) ;
 int aspeed_i2c_do_stop (struct aspeed_i2c_bus*) ;

__attribute__((used)) static void aspeed_i2c_next_msg_or_stop(struct aspeed_i2c_bus *bus)
{
 if (bus->msgs_index + 1 < bus->msgs_count) {
  bus->msgs_index++;
  aspeed_i2c_do_start(bus);
 } else {
  aspeed_i2c_do_stop(bus);
 }
}
