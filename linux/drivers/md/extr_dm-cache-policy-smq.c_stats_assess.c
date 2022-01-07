
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stats {int hits; scalar_t__ misses; } ;
typedef enum performance { ____Placeholder_performance } performance ;


 unsigned int EIGHTH ;
 int FP_SHIFT ;
 int Q_FAIR ;
 int Q_POOR ;
 int Q_WELL ;
 unsigned int SIXTEENTH ;
 unsigned int safe_div (int,scalar_t__) ;

__attribute__((used)) static enum performance stats_assess(struct stats *s)
{
 unsigned confidence = safe_div(s->hits << FP_SHIFT, s->hits + s->misses);

 if (confidence < SIXTEENTH)
  return Q_POOR;

 else if (confidence < EIGHTH)
  return Q_FAIR;

 else
  return Q_WELL;
}
