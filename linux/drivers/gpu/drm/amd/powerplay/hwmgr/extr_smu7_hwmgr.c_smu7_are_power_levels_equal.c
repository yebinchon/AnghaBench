
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu7_performance_level {scalar_t__ memory_clock; scalar_t__ engine_clock; scalar_t__ pcie_gen; scalar_t__ pcie_lane; } ;



__attribute__((used)) static inline bool smu7_are_power_levels_equal(const struct smu7_performance_level *pl1,
          const struct smu7_performance_level *pl2)
{
 return ((pl1->memory_clock == pl2->memory_clock) &&
    (pl1->engine_clock == pl2->engine_clock) &&
    (pl1->pcie_gen == pl2->pcie_gen) &&
    (pl1->pcie_lane == pl2->pcie_lane));
}
