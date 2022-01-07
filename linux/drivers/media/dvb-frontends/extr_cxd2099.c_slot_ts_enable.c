
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_ca_en50221 {struct cxd* data; } ;
struct cxd {int lock; } ;


 int cam_mode (struct cxd*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_mode (struct cxd*,int ) ;
 int write_regm (struct cxd*,int,int,int) ;

__attribute__((used)) static int slot_ts_enable(struct dvb_ca_en50221 *ca, int slot)
{
 struct cxd *ci = ca->data;

 mutex_lock(&ci->lock);
 write_regm(ci, 0x09, 0x00, 0x08);
 set_mode(ci, 0);
 cam_mode(ci, 1);
 mutex_unlock(&ci->lock);
 return 0;
}
