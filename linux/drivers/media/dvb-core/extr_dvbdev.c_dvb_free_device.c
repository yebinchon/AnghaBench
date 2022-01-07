
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_device {struct dvb_device* fops; } ;


 int kfree (struct dvb_device*) ;

void dvb_free_device(struct dvb_device *dvbdev)
{
 if (!dvbdev)
  return;

 kfree (dvbdev->fops);
 kfree (dvbdev);
}
