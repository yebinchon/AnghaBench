
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rnd_state {int dummy; } ;


 int mul_u32_u32 (int ,int ) ;
 int prandom_u32_state (struct rnd_state*) ;
 int upper_32_bits (int ) ;

__attribute__((used)) static inline u32 i915_prandom_u32_max_state(u32 ep_ro, struct rnd_state *state)
{
 return upper_32_bits(mul_u32_u32(prandom_u32_state(state), ep_ro));
}
