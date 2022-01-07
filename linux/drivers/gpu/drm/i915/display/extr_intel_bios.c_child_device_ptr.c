
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void child_device_config ;
struct bdb_general_definitions {int child_dev_size; int * devices; } ;



__attribute__((used)) static const struct child_device_config *
child_device_ptr(const struct bdb_general_definitions *defs, int i)
{
 return (const void *) &defs->devices[i * defs->child_dev_size];
}
