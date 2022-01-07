
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t INT_MAX ;
 size_t const SIZE_MAX ;
 size_t eb_element_size () ;

__attribute__((used)) static bool check_buffer_count(size_t count)
{
 const size_t sz = eb_element_size();







 return !(count < 1 || count > INT_MAX || count > SIZE_MAX / sz - 1);
}
