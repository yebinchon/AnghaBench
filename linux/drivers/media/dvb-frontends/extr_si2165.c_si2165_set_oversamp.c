
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct si2165_state {TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int REG_OVERSAMP ;
 int dev_dbg (int *,char*,int) ;
 int do_div (int,int) ;
 int si2165_get_fe_clk (struct si2165_state*) ;
 int si2165_writereg32 (struct si2165_state*,int ,int) ;

__attribute__((used)) static int si2165_set_oversamp(struct si2165_state *state, u32 dvb_rate)
{
 u64 oversamp;
 u32 reg_value;

 if (!dvb_rate)
  return -EINVAL;

 oversamp = si2165_get_fe_clk(state);
 oversamp <<= 23;
 do_div(oversamp, dvb_rate);
 reg_value = oversamp & 0x3fffffff;

 dev_dbg(&state->client->dev, "Write oversamp=%#x\n", reg_value);
 return si2165_writereg32(state, REG_OVERSAMP, reg_value);
}
