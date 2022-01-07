
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct intel_timeline {int sync; } ;


 int i915_syncmap_set (int *,int ,int ) ;

__attribute__((used)) static inline int __intel_timeline_sync_set(struct intel_timeline *tl,
         u64 context, u32 seqno)
{
 return i915_syncmap_set(&tl->sync, context, seqno);
}
