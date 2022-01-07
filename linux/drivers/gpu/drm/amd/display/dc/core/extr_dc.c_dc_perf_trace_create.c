
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_perf_trace {int dummy; } ;


 int GFP_KERNEL ;
 struct dc_perf_trace* kzalloc (int,int ) ;

__attribute__((used)) static struct dc_perf_trace *dc_perf_trace_create(void)
{
 return kzalloc(sizeof(struct dc_perf_trace), GFP_KERNEL);
}
