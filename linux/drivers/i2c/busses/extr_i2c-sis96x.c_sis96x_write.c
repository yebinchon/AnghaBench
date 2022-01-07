
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int outb (scalar_t__,scalar_t__) ;
 scalar_t__ sis96x_smbus_base ;

__attribute__((used)) static inline void sis96x_write(u8 reg, u8 data)
{
 outb(data, sis96x_smbus_base + reg) ;
}
