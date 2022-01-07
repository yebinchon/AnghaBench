
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mutex_lock (int *) ;
 unsigned long xlt_emergency_page ;
 int xlt_emergency_page_mutex ;

unsigned long mlx5_ib_get_xlt_emergency_page(void)
{
 mutex_lock(&xlt_emergency_page_mutex);
 return xlt_emergency_page;
}
