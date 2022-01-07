
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int __dump_byte_array (char const*,int const*,size_t) ;
 scalar_t__ cc_dump_bytes ;

__attribute__((used)) static inline void dump_byte_array(const char *name, const u8 *the_array,
       size_t size)
{
 if (cc_dump_bytes)
  __dump_byte_array(name, the_array, size);
}
