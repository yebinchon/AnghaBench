
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_ca_en50221 {struct cxd* data; } ;
struct cxd {int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int read_io (struct cxd*,int ,unsigned int*) ;
 int set_mode (struct cxd*,int ) ;

__attribute__((used)) static int read_cam_control(struct dvb_ca_en50221 *ca,
       int slot, u8 address)
{
 struct cxd *ci = ca->data;
 unsigned int val;

 mutex_lock(&ci->lock);
 set_mode(ci, 0);
 read_io(ci, address, &val);
 mutex_unlock(&ci->lock);
 return val;
}
