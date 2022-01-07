
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_ca_en50221 {struct cxd* data; } ;
struct cxd {int slot_stat; int lock; } ;


 int campoll (struct cxd*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int read_reg (struct cxd*,int,int *) ;

__attribute__((used)) static int poll_slot_status(struct dvb_ca_en50221 *ca, int slot, int open)
{
 struct cxd *ci = ca->data;
 u8 slotstat;

 mutex_lock(&ci->lock);
 campoll(ci);
 read_reg(ci, 0x01, &slotstat);
 mutex_unlock(&ci->lock);

 return ci->slot_stat;
}
