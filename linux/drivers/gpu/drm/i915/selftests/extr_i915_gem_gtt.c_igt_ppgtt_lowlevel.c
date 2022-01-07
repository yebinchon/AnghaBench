
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exercise_ppgtt (void*,int ) ;
 int lowlevel_hole ;

__attribute__((used)) static int igt_ppgtt_lowlevel(void *arg)
{
 return exercise_ppgtt(arg, lowlevel_hole);
}
