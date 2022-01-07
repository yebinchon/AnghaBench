
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mock; } ;


 int ENOTTY ;
 TYPE_1__ i915_selftest ;
 int mock ;
 int run_selftests (int ,int *) ;

int i915_mock_selftests(void)
{
 int err;

 if (!i915_selftest.mock)
  return 0;

 err = run_selftests(mock, ((void*)0));
 if (err) {
  i915_selftest.mock = err;
  return err;
 }

 if (i915_selftest.mock < 0) {
  i915_selftest.mock = -ENOTTY;
  return 1;
 }

 return 0;
}
