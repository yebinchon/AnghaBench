
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drxk_state {int dummy; } ;


 int read32_flags (struct drxk_state*,int ,int *,int ) ;

__attribute__((used)) static int read32(struct drxk_state *state, u32 reg, u32 *data)
{
 return read32_flags(state, reg, data, 0);
}
