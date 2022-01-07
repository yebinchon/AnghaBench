
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int complete (int *) ;
 int ppc440spe_r6_test_comp ;

__attribute__((used)) static void ppc440spe_test_callback(void *unused)
{
 complete(&ppc440spe_r6_test_comp);
}
