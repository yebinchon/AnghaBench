
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct applespi_data {int read_active; int write_active; int cmd_msg_queued; int cmd_msg_lock; int drain_complete; scalar_t__ drain; } ;


 int applespi_send_cmd_msg (struct applespi_data*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void applespi_msg_complete(struct applespi_data *applespi,
      bool is_write_msg, bool is_read_compl)
{
 unsigned long flags;

 spin_lock_irqsave(&applespi->cmd_msg_lock, flags);

 if (is_read_compl)
  applespi->read_active = 0;
 if (is_write_msg)
  applespi->write_active = 0;

 if (applespi->drain && !applespi->write_active)
  wake_up_all(&applespi->drain_complete);

 if (is_write_msg) {
  applespi->cmd_msg_queued = 0;
  applespi_send_cmd_msg(applespi);
 }

 spin_unlock_irqrestore(&applespi->cmd_msg_lock, flags);
}
