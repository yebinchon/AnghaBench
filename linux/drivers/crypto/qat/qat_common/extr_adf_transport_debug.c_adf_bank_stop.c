
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int bank_read_lock ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void adf_bank_stop(struct seq_file *sfile, void *v)
{
 mutex_unlock(&bank_read_lock);
}
