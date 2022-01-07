
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int T4_MAX_FR_DSGL_DEPTH ;
 int T4_MAX_FR_IMMD_DEPTH ;

__attribute__((used)) static inline int t4_max_fr_depth(int use_dsgl)
{
 return use_dsgl ? T4_MAX_FR_DSGL_DEPTH : T4_MAX_FR_IMMD_DEPTH;
}
