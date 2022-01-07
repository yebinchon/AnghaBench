
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct qxl_device {long io_base; int last_sent_io_cmd; int async_io_mutex; int irq_received_io_cmd; int io_cmd_event; } ;


 int HZ ;
 int atomic_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb (int ,long) ;
 int wait_event_interruptible_timeout (int ,int,int) ;
 int wait_event_timeout (int ,int,int) ;

__attribute__((used)) static int wait_for_io_cmd_user(struct qxl_device *qdev, uint8_t val, long port, bool intr)
{
 int irq_num;
 long addr = qdev->io_base + port;
 int ret;

 mutex_lock(&qdev->async_io_mutex);
 irq_num = atomic_read(&qdev->irq_received_io_cmd);
 if (qdev->last_sent_io_cmd > irq_num) {
  if (intr)
   ret = wait_event_interruptible_timeout(qdev->io_cmd_event,
              atomic_read(&qdev->irq_received_io_cmd) > irq_num, 5*HZ);
  else
   ret = wait_event_timeout(qdev->io_cmd_event,
       atomic_read(&qdev->irq_received_io_cmd) > irq_num, 5*HZ);

  if (ret <= 0)
   goto out;
  irq_num = atomic_read(&qdev->irq_received_io_cmd);
 }
 outb(val, addr);
 qdev->last_sent_io_cmd = irq_num + 1;
 if (intr)
  ret = wait_event_interruptible_timeout(qdev->io_cmd_event,
             atomic_read(&qdev->irq_received_io_cmd) > irq_num, 5*HZ);
 else
  ret = wait_event_timeout(qdev->io_cmd_event,
      atomic_read(&qdev->irq_received_io_cmd) > irq_num, 5*HZ);
out:
 if (ret > 0)
  ret = 0;
 mutex_unlock(&qdev->async_io_mutex);
 return ret;
}
