
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mirror_set {unsigned int nr_mirrors; TYPE_1__* mirror; scalar_t__ leg_failure; } ;
struct TYPE_2__ {scalar_t__ error_type; int error_count; } ;


 int atomic_set (int *,int ) ;

__attribute__((used)) static void reset_ms_flags(struct mirror_set *ms)
{
 unsigned int m;

 ms->leg_failure = 0;
 for (m = 0; m < ms->nr_mirrors; m++) {
  atomic_set(&(ms->mirror[m].error_count), 0);
  ms->mirror[m].error_type = 0;
 }
}
