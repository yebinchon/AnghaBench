
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_device {int dummy; } ;


 int dvb_free_device (struct dvb_device*) ;
 int dvb_remove_device (struct dvb_device*) ;

void dvb_unregister_device(struct dvb_device *dvbdev)
{
 dvb_remove_device(dvbdev);
 dvb_free_device(dvbdev);
}
