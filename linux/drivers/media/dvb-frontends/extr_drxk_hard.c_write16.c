
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct drxk_state {int dummy; } ;


 int write16_flags (struct drxk_state*,int ,int ,int ) ;

__attribute__((used)) static int write16(struct drxk_state *state, u32 reg, u16 data)
{
 return write16_flags(state, reg, data, 0);
}
