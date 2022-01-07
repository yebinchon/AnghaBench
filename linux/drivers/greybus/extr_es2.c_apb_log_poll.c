
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct es2_ap_dev {int dummy; } ;


 int APB1_LOG_MSG_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int apb_log_get (struct es2_ap_dev*,char*) ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;
 int kthread_should_stop () ;
 int msleep (int) ;

__attribute__((used)) static int apb_log_poll(void *data)
{
 struct es2_ap_dev *es2 = data;
 char *buf;

 buf = kmalloc(APB1_LOG_MSG_SIZE, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 while (!kthread_should_stop()) {
  msleep(1000);
  apb_log_get(es2, buf);
 }

 kfree(buf);

 return 0;
}
