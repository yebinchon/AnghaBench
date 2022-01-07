
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct si2165_state {TYPE_1__* client; int regmap; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,int const,scalar_t__) ;
 int regmap_read (int ,int const,unsigned int*) ;

__attribute__((used)) static int si2165_readreg8(struct si2165_state *state,
      const u16 reg, u8 *val)
{
 unsigned int val_tmp;
 int ret = regmap_read(state->regmap, reg, &val_tmp);
 *val = (u8)val_tmp;
 dev_dbg(&state->client->dev, "reg read: R(0x%04x)=0x%02x\n", reg, *val);
 return ret;
}
