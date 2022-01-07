
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I2C_IN ;
 int I2C_SDA ;
 int inb (int ) ;

__attribute__((used)) static int bit_via_getsda(void *data)
{
 return (0 != (inb(I2C_IN) & I2C_SDA));
}
