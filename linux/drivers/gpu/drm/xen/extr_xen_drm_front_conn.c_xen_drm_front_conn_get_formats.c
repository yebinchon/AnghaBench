
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ARRAY_SIZE (int const*) ;
 int const* plane_formats ;

const u32 *xen_drm_front_conn_get_formats(int *format_count)
{
 *format_count = ARRAY_SIZE(plane_formats);
 return plane_formats;
}
