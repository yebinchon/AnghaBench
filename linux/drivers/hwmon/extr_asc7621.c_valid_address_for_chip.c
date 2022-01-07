
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* addresses; } ;


 int I2C_CLIENT_END ;
 TYPE_1__* asc7621_chips ;

__attribute__((used)) static inline int valid_address_for_chip(int chip_type, int address)
{
 int i;

 for (i = 0; asc7621_chips[chip_type].addresses[i] != I2C_CLIENT_END;
      i++) {
  if (asc7621_chips[chip_type].addresses[i] == address)
   return 1;
 }
 return 0;
}
