
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;
typedef size_t ssize_t ;



ssize_t dm_attr_rq_based_seq_io_merge_deadline_store(struct mapped_device *md,
           const char *buf, size_t count)
{
 return count;
}
