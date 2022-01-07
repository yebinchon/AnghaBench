
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double dml_ceil (double,int) ;

__attribute__((used)) static double RoundToDFSGranularityDown(double Clock, double VCOSpeed)
{
 return VCOSpeed * 4 / dml_ceil(VCOSpeed * 4 / Clock, 1);
}
