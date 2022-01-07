
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum source_format_class { ____Placeholder_source_format_class } source_format_class ;


 int dm_420_10 ;
 int dm_420_8 ;
 int dm_444_16 ;
 int dm_444_32 ;
 int dm_444_64 ;
 int dm_444_8 ;

__attribute__((used)) static unsigned int get_bytes_per_element(enum source_format_class source_format, bool is_chroma)
{
 unsigned int ret_val = 0;

 if (source_format == dm_444_16) {
  if (!is_chroma)
   ret_val = 2;
 } else if (source_format == dm_444_32) {
  if (!is_chroma)
   ret_val = 4;
 } else if (source_format == dm_444_64) {
  if (!is_chroma)
   ret_val = 8;
 } else if (source_format == dm_420_8) {
  if (is_chroma)
   ret_val = 2;
  else
   ret_val = 1;
 } else if (source_format == dm_420_10) {
  if (is_chroma)
   ret_val = 4;
  else
   ret_val = 2;
 } else if (source_format == dm_444_8) {
  ret_val = 1;
 }
 return ret_val;
}
