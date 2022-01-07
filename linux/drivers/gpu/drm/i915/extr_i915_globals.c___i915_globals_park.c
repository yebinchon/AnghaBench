
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_2__ {scalar_t__ epoch; } ;


 scalar_t__ atomic_read (int *) ;
 int epoch ;
 int i915_globals_shrink () ;
 TYPE_1__ park ;

__attribute__((used)) static void __i915_globals_park(struct work_struct *work)
{

 if (park.epoch == atomic_read(&epoch))
  i915_globals_shrink();
}
