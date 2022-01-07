
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EDAC_REPORTING_DISABLED ;
 int EDAC_REPORTING_ENABLED ;
 int EDAC_REPORTING_FORCE ;
 int edac_report ;

void edac_set_report_status(int new)
{
 if (new == EDAC_REPORTING_ENABLED ||
     new == EDAC_REPORTING_DISABLED ||
     new == EDAC_REPORTING_FORCE)
  edac_report = new;
}
