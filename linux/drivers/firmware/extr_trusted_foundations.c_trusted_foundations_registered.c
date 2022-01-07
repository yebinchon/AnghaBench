
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * firmware_ops ;
 int trusted_foundations_ops ;

bool trusted_foundations_registered(void)
{
 return firmware_ops == &trusted_foundations_ops;
}
