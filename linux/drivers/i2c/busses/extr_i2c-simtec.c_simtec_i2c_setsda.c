
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simtec_i2c_data {int reg; } ;


 int CMD_SET_SDA ;
 int STATE_SDA ;
 int writeb (int,int ) ;

__attribute__((used)) static void simtec_i2c_setsda(void *pw, int state)
{
 struct simtec_i2c_data *pd = pw;
 writeb(CMD_SET_SDA | (state ? STATE_SDA : 0), pd->reg);
}
