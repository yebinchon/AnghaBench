
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct catu_drvdata {int base; } ;


 int CATU_STATUS ;
 int CATU_STATUS_READY ;
 int coresight_timeout (int ,int ,int ,int) ;

__attribute__((used)) static inline int catu_wait_for_ready(struct catu_drvdata *drvdata)
{
 return coresight_timeout(drvdata->base,
     CATU_STATUS, CATU_STATUS_READY, 1);
}
