
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int mutex_unlock (int *) ;
 int ring_read_lock ;

__attribute__((used)) static void adf_ring_stop(struct seq_file *sfile, void *v)
{
 mutex_unlock(&ring_read_lock);
}
