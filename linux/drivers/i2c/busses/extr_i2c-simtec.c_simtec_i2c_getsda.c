
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simtec_i2c_data {int reg; } ;


 int STATE_SDA ;
 int readb (int ) ;

__attribute__((used)) static int simtec_i2c_getsda(void *pw)
{
 struct simtec_i2c_data *pd = pw;
 return readb(pd->reg) & STATE_SDA ? 1 : 0;
}
