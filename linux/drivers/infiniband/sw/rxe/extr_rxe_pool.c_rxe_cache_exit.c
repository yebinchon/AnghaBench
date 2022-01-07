
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RXE_NUM_TYPES ;
 int rxe_cache_clean (int ) ;

void rxe_cache_exit(void)
{
 rxe_cache_clean(RXE_NUM_TYPES);
}
