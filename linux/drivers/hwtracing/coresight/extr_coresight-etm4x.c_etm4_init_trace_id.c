
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etmv4_drvdata {int cpu; int trcid; } ;


 int coresight_get_trace_id (int ) ;

__attribute__((used)) static void etm4_init_trace_id(struct etmv4_drvdata *drvdata)
{
 drvdata->trcid = coresight_get_trace_id(drvdata->cpu);
}
