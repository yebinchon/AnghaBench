
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i915; } ;
struct i915_ggtt {TYPE_1__ vm; } ;


 int exercise_mock (int ,int ) ;
 int fill_hole ;

__attribute__((used)) static int igt_mock_fill(void *arg)
{
 struct i915_ggtt *ggtt = arg;

 return exercise_mock(ggtt->vm.i915, fill_hole);
}
