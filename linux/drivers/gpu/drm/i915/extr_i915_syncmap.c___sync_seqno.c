
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i915_syncmap {int height; } ;


 int GEM_BUG_ON (int ) ;

__attribute__((used)) static inline u32 *__sync_seqno(struct i915_syncmap *p)
{
 GEM_BUG_ON(p->height);
 return (u32 *)(p + 1);
}
