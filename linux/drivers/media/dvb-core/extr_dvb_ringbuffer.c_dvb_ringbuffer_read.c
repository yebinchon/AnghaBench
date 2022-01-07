
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_ringbuffer {size_t pread; size_t size; scalar_t__ data; } ;


 int memcpy (int *,scalar_t__,size_t) ;
 int smp_store_release (size_t*,size_t) ;

void dvb_ringbuffer_read(struct dvb_ringbuffer *rbuf, u8 *buf, size_t len)
{
 size_t todo = len;
 size_t split;

 split = (rbuf->pread + len > rbuf->size) ? rbuf->size - rbuf->pread : 0;
 if (split > 0) {
  memcpy(buf, rbuf->data+rbuf->pread, split);
  buf += split;
  todo -= split;




  smp_store_release(&rbuf->pread, 0);
 }
 memcpy(buf, rbuf->data+rbuf->pread, todo);


 smp_store_release(&rbuf->pread, (rbuf->pread + todo) % rbuf->size);
}
