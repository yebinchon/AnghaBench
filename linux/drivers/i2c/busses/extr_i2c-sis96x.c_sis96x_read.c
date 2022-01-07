
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ inb (scalar_t__) ;
 scalar_t__ sis96x_smbus_base ;

__attribute__((used)) static inline u8 sis96x_read(u8 reg)
{
 return inb(sis96x_smbus_base + reg) ;
}
