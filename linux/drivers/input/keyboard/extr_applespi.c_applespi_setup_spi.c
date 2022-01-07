
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct applespi_data {int drain_complete; int cmd_msg_lock; } ;


 int applespi_get_spi_settings (struct applespi_data*) ;
 int init_waitqueue_head (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int applespi_setup_spi(struct applespi_data *applespi)
{
 int sts;

 sts = applespi_get_spi_settings(applespi);
 if (sts)
  return sts;

 spin_lock_init(&applespi->cmd_msg_lock);
 init_waitqueue_head(&applespi->drain_complete);

 return 0;
}
