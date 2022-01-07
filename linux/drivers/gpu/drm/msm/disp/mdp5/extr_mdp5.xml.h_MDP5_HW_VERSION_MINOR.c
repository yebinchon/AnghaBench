
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MDP5_HW_VERSION_MINOR__MASK ;
 int MDP5_HW_VERSION_MINOR__SHIFT ;

__attribute__((used)) static inline uint32_t MDP5_HW_VERSION_MINOR(uint32_t val)
{
 return ((val) << MDP5_HW_VERSION_MINOR__SHIFT) & MDP5_HW_VERSION_MINOR__MASK;
}
