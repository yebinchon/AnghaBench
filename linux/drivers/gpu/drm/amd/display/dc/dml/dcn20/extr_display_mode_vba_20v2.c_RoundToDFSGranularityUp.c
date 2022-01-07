
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double dml_floor (double,int) ;

__attribute__((used)) static double RoundToDFSGranularityUp(double Clock, double VCOSpeed)
{
 return VCOSpeed * 4 / dml_floor(VCOSpeed * 4 / Clock, 1);
}
