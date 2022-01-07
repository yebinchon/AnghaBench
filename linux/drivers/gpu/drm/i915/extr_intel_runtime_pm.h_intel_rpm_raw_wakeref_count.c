
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INTEL_RPM_RAW_WAKEREF_MASK ;

__attribute__((used)) static inline int
intel_rpm_raw_wakeref_count(int wakeref_count)
{
 return wakeref_count & INTEL_RPM_RAW_WAKEREF_MASK;
}
