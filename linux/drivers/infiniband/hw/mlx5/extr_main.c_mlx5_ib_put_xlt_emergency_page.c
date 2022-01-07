
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mutex_unlock (int *) ;
 int xlt_emergency_page_mutex ;

void mlx5_ib_put_xlt_emergency_page(void)
{
 mutex_unlock(&xlt_emergency_page_mutex);
}
