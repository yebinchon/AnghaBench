
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_ca_en50221 {struct cxd* data; } ;
struct cxd {int mode; int lock; scalar_t__ ready; int rbuf; scalar_t__ cammode; } ;


 int cam_mode (struct cxd*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int read_data (struct dvb_ca_en50221*,int,int ,int ) ;
 int usleep_range (int,int) ;
 int write_reg (struct cxd*,int,int) ;
 int write_regm (struct cxd*,int,int,int) ;

__attribute__((used)) static int slot_reset(struct dvb_ca_en50221 *ca, int slot)
{
 struct cxd *ci = ca->data;

 if (ci->cammode)
  read_data(ca, slot, ci->rbuf, 0);

 mutex_lock(&ci->lock);
 cam_mode(ci, 0);
 write_reg(ci, 0x00, 0x21);
 write_reg(ci, 0x06, 0x1F);
 write_reg(ci, 0x00, 0x31);
 write_regm(ci, 0x20, 0x80, 0x80);
 write_reg(ci, 0x03, 0x02);
 ci->ready = 0;
 ci->mode = -1;
 {
  int i;

  for (i = 0; i < 100; i++) {
   usleep_range(10000, 11000);
   if (ci->ready)
    break;
  }
 }
 mutex_unlock(&ci->lock);
 return 0;
}
