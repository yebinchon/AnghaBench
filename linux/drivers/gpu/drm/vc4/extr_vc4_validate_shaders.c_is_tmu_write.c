
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ QPU_W_TMU0_S ;
 scalar_t__ QPU_W_TMU1_B ;

__attribute__((used)) static bool
is_tmu_write(uint32_t waddr)
{
 return (waddr >= QPU_W_TMU0_S &&
  waddr <= QPU_W_TMU1_B);
}
