
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_ca_en50221 {struct cxd* data; } ;
struct cxd {int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_mode (struct cxd*,int ) ;
 int write_io (struct cxd*,int ,int ) ;

__attribute__((used)) static int write_cam_control(struct dvb_ca_en50221 *ca, int slot,
        u8 address, u8 value)
{
 struct cxd *ci = ca->data;

 mutex_lock(&ci->lock);
 set_mode(ci, 0);
 write_io(ci, address, value);
 mutex_unlock(&ci->lock);
 return 0;
}
