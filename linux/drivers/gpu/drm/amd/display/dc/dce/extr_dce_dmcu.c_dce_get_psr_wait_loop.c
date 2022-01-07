
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmcu {unsigned int cached_wait_loop_number; } ;



__attribute__((used)) static void dce_get_psr_wait_loop(
  struct dmcu *dmcu, unsigned int *psr_wait_loop_number)
{
 *psr_wait_loop_number = dmcu->cached_wait_loop_number;
 return;
}
