
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_perf_trace {int dummy; } ;


 int kfree (struct dc_perf_trace*) ;

__attribute__((used)) static void dc_perf_trace_destroy(struct dc_perf_trace **perf_trace)
{
 kfree(*perf_trace);
 *perf_trace = ((void*)0);
}
