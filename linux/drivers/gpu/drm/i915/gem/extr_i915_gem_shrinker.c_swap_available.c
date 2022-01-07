
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ get_nr_swap_pages () ;

__attribute__((used)) static bool swap_available(void)
{
 return get_nr_swap_pages() > 0;
}
