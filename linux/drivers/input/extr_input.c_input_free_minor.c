
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ida_simple_remove (int *,unsigned int) ;
 int input_ida ;

void input_free_minor(unsigned int minor)
{
 ida_simple_remove(&input_ida, minor);
}
