
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsdvb_debugfs {int stats_count; int lock; scalar_t__ stats_was_read; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int smsdvb_stats_wait_read(struct smsdvb_debugfs *debug_data)
{
 int rc = 1;

 spin_lock(&debug_data->lock);

 if (debug_data->stats_was_read)
  goto exit;

 rc = debug_data->stats_count;

exit:
 spin_unlock(&debug_data->lock);
 return rc;
}
