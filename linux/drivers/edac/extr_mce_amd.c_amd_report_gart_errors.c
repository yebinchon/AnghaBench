
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int report_gart_errors ;

void amd_report_gart_errors(bool v)
{
 report_gart_errors = v;
}
