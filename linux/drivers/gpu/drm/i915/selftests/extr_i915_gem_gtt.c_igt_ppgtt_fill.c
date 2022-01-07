
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exercise_ppgtt (void*,int ) ;
 int fill_hole ;

__attribute__((used)) static int igt_ppgtt_fill(void *arg)
{
 return exercise_ppgtt(arg, fill_hole);
}
