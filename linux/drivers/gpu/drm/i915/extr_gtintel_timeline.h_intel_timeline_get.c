
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_timeline {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline struct intel_timeline *
intel_timeline_get(struct intel_timeline *timeline)
{
 kref_get(&timeline->kref);
 return timeline;
}
