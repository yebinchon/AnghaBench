
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int mask; int gt; } ;


 int __intel_gt_reset (int ,int ) ;

__attribute__((used)) static inline int intel_gt_reset_engine(struct intel_engine_cs *engine)
{
 return __intel_gt_reset(engine->gt, engine->mask);
}
