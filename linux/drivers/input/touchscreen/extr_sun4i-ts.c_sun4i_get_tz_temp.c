
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sun4i_get_temp (void*,int*) ;

__attribute__((used)) static int sun4i_get_tz_temp(void *data, int *temp)
{
 return sun4i_get_temp(data, temp);
}
