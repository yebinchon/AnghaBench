
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct psb_intel_i2c_chan {int dummy; } ;


 int GPIO_DATA ;
 int LPC_READ_REG (struct psb_intel_i2c_chan*,int ) ;
 int LPC_WRITE_REG (struct psb_intel_i2c_chan*,int ,int ) ;
 int RGIO ;
 int RGLVL ;

__attribute__((used)) static void set_data(void *data, int state_high)
{
 struct psb_intel_i2c_chan *chan = data;
 u32 val;

 if (state_high) {
  val = LPC_READ_REG(chan, RGIO);
  val |= GPIO_DATA;
  LPC_WRITE_REG(chan, RGIO, val);
 } else {
  val = LPC_READ_REG(chan, RGIO);
  val &= ~GPIO_DATA;
  LPC_WRITE_REG(chan, RGIO, val);
  val = LPC_READ_REG(chan, RGLVL);
  val &= ~GPIO_DATA;
  LPC_WRITE_REG(chan, RGLVL, val);
 }
}
