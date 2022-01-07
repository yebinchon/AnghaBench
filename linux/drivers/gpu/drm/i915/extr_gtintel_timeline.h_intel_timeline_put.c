
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_timeline {int kref; } ;


 int __intel_timeline_free ;
 int kref_put (int *,int ) ;

__attribute__((used)) static inline void intel_timeline_put(struct intel_timeline *timeline)
{
 kref_put(&timeline->kref, __intel_timeline_free);
}
