
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MDP4_VERSION_MINOR__MASK ;
 int MDP4_VERSION_MINOR__SHIFT ;

__attribute__((used)) static inline uint32_t MDP4_VERSION_MINOR(uint32_t val)
{
 return ((val) << MDP4_VERSION_MINOR__SHIFT) & MDP4_VERSION_MINOR__MASK;
}
