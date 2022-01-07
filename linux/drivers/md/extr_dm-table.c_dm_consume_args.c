
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_arg_set {unsigned int argc; int argv; } ;


 int BUG_ON (int) ;

void dm_consume_args(struct dm_arg_set *as, unsigned num_args)
{
 BUG_ON(as->argc < num_args);
 as->argc -= num_args;
 as->argv += num_args;
}
