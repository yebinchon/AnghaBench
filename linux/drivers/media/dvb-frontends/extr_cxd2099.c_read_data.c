
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_ca_en50221 {struct cxd* data; } ;
struct cxd {int* rbuf; int lock; scalar_t__ dr; } ;


 int EIO ;
 int campoll (struct cxd*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int read_block (struct cxd*,int,int*,int) ;
 int read_reg (struct cxd*,int,int*) ;

__attribute__((used)) static int read_data(struct dvb_ca_en50221 *ca, int slot, u8 *ebuf, int ecount)
{
 struct cxd *ci = ca->data;
 u8 msb, lsb;
 u16 len;

 mutex_lock(&ci->lock);
 campoll(ci);
 mutex_unlock(&ci->lock);

 if (!ci->dr)
  return 0;

 mutex_lock(&ci->lock);
 read_reg(ci, 0x0f, &msb);
 read_reg(ci, 0x10, &lsb);
 len = ((u16)msb << 8) | lsb;
 if (len > ecount || len < 2) {

  read_block(ci, 0x12, ci->rbuf, len);
  mutex_unlock(&ci->lock);
  return -EIO;
 }
 read_block(ci, 0x12, ebuf, len);
 ci->dr = 0;
 mutex_unlock(&ci->lock);
 return len;
}
