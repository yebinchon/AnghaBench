
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int demod_address; } ;
struct drxd_state {int i2c; TYPE_1__ config; } ;


 scalar_t__ i2c_write (int ,int,int*,int) ;

__attribute__((used)) static int Write16(struct drxd_state *state, u32 reg, u16 data, u8 flags)
{
 u8 adr = state->config.demod_address;
 u8 mm[6] = { reg & 0xff, (reg >> 16) & 0xff,
  flags | ((reg >> 24) & 0xff), (reg >> 8) & 0xff,
  data & 0xff, (data >> 8) & 0xff
 };

 if (i2c_write(state->i2c, adr, mm, 6) < 0)
  return -1;
 return 0;
}
