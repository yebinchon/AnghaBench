
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int chcr_unregister_alg () ;

int stop_crypto(void)
{
 chcr_unregister_alg();
 return 0;
}
