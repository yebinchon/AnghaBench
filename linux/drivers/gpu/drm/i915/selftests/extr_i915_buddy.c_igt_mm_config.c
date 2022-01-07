
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int random_seed; } ;


 int BIT_ULL (int) ;
 int I915_RND_STATE (int ) ;
 int SZ_8G ;
 int i915_prandom_u64_state (int *) ;
 TYPE_1__ i915_selftest ;
 int ilog2 (int) ;
 int max (int,int) ;
 int prandom_seed_state (int *,int ) ;
 int prandom_u32_state (int *) ;
 int prng ;

__attribute__((used)) static void igt_mm_config(u64 *size, u64 *chunk_size)
{
 I915_RND_STATE(prng);
 u64 s, ms;



 prandom_seed_state(&prng, i915_selftest.random_seed);

 s = i915_prandom_u64_state(&prng) & (SZ_8G - 1);
 ms = BIT_ULL(12 + (prandom_u32_state(&prng) % ilog2(s >> 12)));
 s = max(s & -ms, ms);

 *chunk_size = ms;
 *size = s;
}
