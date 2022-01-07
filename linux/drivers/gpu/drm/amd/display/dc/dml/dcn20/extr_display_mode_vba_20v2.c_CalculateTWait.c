
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double dml_max (double,double) ;

__attribute__((used)) static double CalculateTWait(
  unsigned int PrefetchMode,
  double DRAMClockChangeLatency,
  double UrgentLatencyPixelDataOnly,
  double SREnterPlusExitTime)
{
 if (PrefetchMode == 0) {
  return dml_max(
    DRAMClockChangeLatency + UrgentLatencyPixelDataOnly,
    dml_max(SREnterPlusExitTime, UrgentLatencyPixelDataOnly));
 } else if (PrefetchMode == 1) {
  return dml_max(SREnterPlusExitTime, UrgentLatencyPixelDataOnly);
 } else {
  return UrgentLatencyPixelDataOnly;
 }
}
