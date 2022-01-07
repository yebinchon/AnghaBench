
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exercise_ppgtt (void*,int ) ;
 int shrink_boom ;

__attribute__((used)) static int igt_ppgtt_shrink_boom(void *arg)
{
 return exercise_ppgtt(arg, shrink_boom);
}
