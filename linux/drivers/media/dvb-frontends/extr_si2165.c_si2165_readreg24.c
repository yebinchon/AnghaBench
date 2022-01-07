
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct si2165_state {TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int *,char*,int const,int) ;
 int si2165_read (struct si2165_state*,int const,int*,int) ;

__attribute__((used)) static int si2165_readreg24(struct si2165_state *state,
       const u16 reg, u32 *val)
{
 u8 buf[3];

 int ret = si2165_read(state, reg, buf, 3);
 *val = buf[0] | buf[1] << 8 | buf[2] << 16;
 dev_dbg(&state->client->dev, "reg read: R(0x%04x)=0x%06x\n", reg, *val);
 return ret;
}
