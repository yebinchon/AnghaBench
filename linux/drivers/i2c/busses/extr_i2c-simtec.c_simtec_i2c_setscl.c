
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simtec_i2c_data {int reg; } ;


 int CMD_SET_SCL ;
 int STATE_SCL ;
 int writeb (int,int ) ;

__attribute__((used)) static void simtec_i2c_setscl(void *pw, int state)
{
 struct simtec_i2c_data *pd = pw;
 writeb(CMD_SET_SCL | (state ? STATE_SCL : 0), pd->reg);
}
