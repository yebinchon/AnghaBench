
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLEAN_SHUTDOWN ;
 int set_bit (int ,unsigned long*) ;

__attribute__((used)) static unsigned long set_clean_shutdown(unsigned long flags)
{
 set_bit(CLEAN_SHUTDOWN, &flags);
 return flags;
}
