
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_ca_en50221 {struct cxd* data; } ;
struct cxd {int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_mode (struct cxd*,int) ;
 int write_pccard (struct cxd*,int,int *,int) ;

__attribute__((used)) static int write_attribute_mem(struct dvb_ca_en50221 *ca, int slot,
          int address, u8 value)
{
 struct cxd *ci = ca->data;

 mutex_lock(&ci->lock);
 set_mode(ci, 1);
 write_pccard(ci, address, &value, 1);
 mutex_unlock(&ci->lock);
 return 0;
}
