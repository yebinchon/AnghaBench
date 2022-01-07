
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etm_drvdata {int cpu; int traceid; } ;


 int coresight_get_trace_id (int ) ;

__attribute__((used)) static void etm_init_trace_id(struct etm_drvdata *drvdata)
{
 drvdata->traceid = coresight_get_trace_id(drvdata->cpu);
}
