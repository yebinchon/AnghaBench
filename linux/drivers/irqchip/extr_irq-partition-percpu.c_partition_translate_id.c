
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partition_desc {int nr_parts; struct partition_affinity* parts; } ;
struct partition_affinity {void* partition_id; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int pr_err (char*) ;

int partition_translate_id(struct partition_desc *desc, void *partition_id)
{
 struct partition_affinity *part = ((void*)0);
 int i;

 for (i = 0; i < desc->nr_parts; i++) {
  if (desc->parts[i].partition_id == partition_id) {
   part = &desc->parts[i];
   break;
  }
 }

 if (WARN_ON(!part)) {
  pr_err("Failed to find partition\n");
  return -EINVAL;
 }

 return i;
}
