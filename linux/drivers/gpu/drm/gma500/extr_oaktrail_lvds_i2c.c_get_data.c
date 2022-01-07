
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct psb_intel_i2c_chan {int dummy; } ;


 int GPIO_DATA ;
 int LPC_READ_REG (struct psb_intel_i2c_chan*,int ) ;
 int LPC_WRITE_REG (struct psb_intel_i2c_chan*,int ,int) ;
 int RGIO ;
 int RGLVL ;

__attribute__((used)) static int get_data(void *data)
{
 struct psb_intel_i2c_chan *chan = data;
 u32 val, tmp;

 val = LPC_READ_REG(chan, RGIO);
 val |= GPIO_DATA;
 LPC_WRITE_REG(chan, RGIO, val);
 tmp = LPC_READ_REG(chan, RGLVL);
 val = (LPC_READ_REG(chan, RGLVL) & GPIO_DATA) ? 1 : 0;

 return val;
}
