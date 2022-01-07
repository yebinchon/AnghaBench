
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct applespi_data {int want_mt_init_cmd; int want_tp_info_cmd; int cmd_msg_lock; } ;


 int applespi_send_cmd_msg (struct applespi_data*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void applespi_init(struct applespi_data *applespi, bool is_resume)
{
 unsigned long flags;

 spin_lock_irqsave(&applespi->cmd_msg_lock, flags);

 if (is_resume)
  applespi->want_mt_init_cmd = 1;
 else
  applespi->want_tp_info_cmd = 1;
 applespi_send_cmd_msg(applespi);

 spin_unlock_irqrestore(&applespi->cmd_msg_lock, flags);
}
