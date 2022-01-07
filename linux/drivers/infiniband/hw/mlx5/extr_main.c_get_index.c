
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_arg (unsigned long) ;

__attribute__((used)) static int get_index(unsigned long offset)
{
 return get_arg(offset);
}
