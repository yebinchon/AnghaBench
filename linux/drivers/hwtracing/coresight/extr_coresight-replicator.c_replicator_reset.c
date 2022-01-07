
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct replicator_drvdata {scalar_t__ base; } ;


 int dynamic_replicator_reset (struct replicator_drvdata*) ;

__attribute__((used)) static inline void replicator_reset(struct replicator_drvdata *drvdata)
{
 if (drvdata->base)
  dynamic_replicator_reset(drvdata);
}
