
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_drvdata {int edprsr; } ;


 int EDPRSR_DLK ;
 int EDPRSR_PU ;

__attribute__((used)) static bool debug_access_permitted(struct debug_drvdata *drvdata)
{

 if (!(drvdata->edprsr & EDPRSR_PU))
  return 0;


 if (drvdata->edprsr & EDPRSR_DLK)
  return 0;

 return 1;
}
