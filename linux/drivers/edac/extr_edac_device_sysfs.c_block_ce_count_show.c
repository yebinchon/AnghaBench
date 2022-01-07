
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct TYPE_2__ {int ce_count; } ;
struct edac_device_block {TYPE_1__ counters; } ;
struct attribute {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct edac_device_block* to_block (struct kobject*) ;

__attribute__((used)) static ssize_t block_ce_count_show(struct kobject *kobj,
     struct attribute *attr, char *data)
{
 struct edac_device_block *block = to_block(kobj);

 return sprintf(data, "%u\n", block->counters.ce_count);
}
