
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s32 ;


 int DBG (char*,int) ;
 int DBG_LOTS (char*,int,int ) ;
 int EIO ;
 int FIX32TOPRINT (int) ;
 int * sens_cpu_amps ;
 int * sens_cpu_temp ;
 int * sens_cpu_volts ;
 int wf_sensor_get (int ,int*) ;

__attribute__((used)) static int read_one_cpu_vals(int cpu, s32 *temp, s32 *power)
{
 s32 dtemp, volts, amps;
 int rc;


 rc = wf_sensor_get(sens_cpu_temp[cpu], &dtemp);
 if (rc) {
  DBG("  CPU%d: temp reading error !\n", cpu);
  return -EIO;
 }
 DBG_LOTS("  CPU%d: temp   = %d.%03d\n", cpu, FIX32TOPRINT((dtemp)));
 *temp = dtemp;


 rc = wf_sensor_get(sens_cpu_volts[cpu], &volts);
 if (rc) {
  DBG("  CPU%d, volts reading error !\n", cpu);
  return -EIO;
 }
 DBG_LOTS("  CPU%d: volts  = %d.%03d\n", cpu, FIX32TOPRINT((volts)));


 rc = wf_sensor_get(sens_cpu_amps[cpu], &amps);
 if (rc) {
  DBG("  CPU%d, current reading error !\n", cpu);
  return -EIO;
 }
 DBG_LOTS("  CPU%d: amps   = %d.%03d\n", cpu, FIX32TOPRINT((amps)));






 *power = (((u64)volts) * ((u64)amps)) >> 16;

 DBG_LOTS("  CPU%d: power  = %d.%03d\n", cpu, FIX32TOPRINT((*power)));

 return 0;

}
