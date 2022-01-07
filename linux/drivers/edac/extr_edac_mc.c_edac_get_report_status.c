
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int edac_report ;

int edac_get_report_status(void)
{
 return edac_report;
}
