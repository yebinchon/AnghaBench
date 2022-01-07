
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clone {TYPE_1__* ti; } ;
struct TYPE_2__ {int table; } ;


 char const* dm_table_device_name (int ) ;

__attribute__((used)) static const char *clone_device_name(struct clone *clone)
{
 return dm_table_device_name(clone->ti->table);
}
