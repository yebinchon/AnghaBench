
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum source_format_class { ____Placeholder_source_format_class } source_format_class ;


 int dm_420_10 ;
 int dm_420_8 ;

__attribute__((used)) static bool is_dual_plane(enum source_format_class source_format)
{
 bool ret_val = 0;

 if ((source_format == dm_420_8) || (source_format == dm_420_10))
  ret_val = 1;

 return ret_val;
}
