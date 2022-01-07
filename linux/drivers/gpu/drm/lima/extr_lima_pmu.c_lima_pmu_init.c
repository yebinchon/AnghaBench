
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lima_ip {int dummy; } ;


 int LIMA_PMU_INT_MASK ;
 int LIMA_PMU_POWER_UP ;
 int LIMA_PMU_STATUS ;
 int LIMA_PMU_SW_DELAY ;
 int lima_pmu_wait_cmd (struct lima_ip*) ;
 int pmu_read (int ) ;
 int pmu_write (int ,int) ;

int lima_pmu_init(struct lima_ip *ip)
{
 int err;
 u32 stat;

 pmu_write(LIMA_PMU_INT_MASK, 0);




 pmu_write(LIMA_PMU_SW_DELAY, 0xffff);


 stat = pmu_read(LIMA_PMU_STATUS);


 if (stat) {
  pmu_write(LIMA_PMU_POWER_UP, stat);
  err = lima_pmu_wait_cmd(ip);
  if (err)
   return err;
 }
 return 0;
}
