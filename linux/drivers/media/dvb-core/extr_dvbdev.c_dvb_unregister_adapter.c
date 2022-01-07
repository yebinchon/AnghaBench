
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_adapter {int list_head; } ;


 int dvbdev_register_lock ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int dvb_unregister_adapter(struct dvb_adapter *adap)
{
 mutex_lock(&dvbdev_register_lock);
 list_del (&adap->list_head);
 mutex_unlock(&dvbdev_register_lock);
 return 0;
}
