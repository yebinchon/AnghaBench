
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long get_arg (unsigned long) ;

__attribute__((used)) static int get_extended_index(unsigned long offset)
{
 return get_arg(offset) | ((offset >> 16) & 0xff) << 8;
}
