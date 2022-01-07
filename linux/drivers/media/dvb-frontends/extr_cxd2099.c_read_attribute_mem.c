
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_ca_en50221 {struct cxd* data; } ;
struct cxd {int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int read_pccard (struct cxd*,int,int*,int) ;
 int set_mode (struct cxd*,int) ;

__attribute__((used)) static int read_attribute_mem(struct dvb_ca_en50221 *ca,
         int slot, int address)
{
 struct cxd *ci = ca->data;
 u8 val;

 mutex_lock(&ci->lock);
 set_mode(ci, 1);
 read_pccard(ci, address, &val, 1);
 mutex_unlock(&ci->lock);
 return val;
}
