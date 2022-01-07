
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int igt_align_pot (int) ;

__attribute__((used)) static int igt_align64(void *ignored)
{
 return igt_align_pot(64);
}
