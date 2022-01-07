
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_ringbuffer {size_t pwrite; size_t size; scalar_t__ data; } ;
typedef size_t ssize_t ;


 int memcpy (scalar_t__,int const*,size_t) ;
 int smp_store_release (size_t*,size_t) ;

ssize_t dvb_ringbuffer_write(struct dvb_ringbuffer *rbuf, const u8 *buf, size_t len)
{
 size_t todo = len;
 size_t split;

 split = (rbuf->pwrite + len > rbuf->size) ? rbuf->size - rbuf->pwrite : 0;

 if (split > 0) {
  memcpy(rbuf->data+rbuf->pwrite, buf, split);
  buf += split;
  todo -= split;





  smp_store_release(&rbuf->pwrite, 0);
 }
 memcpy(rbuf->data+rbuf->pwrite, buf, todo);

 smp_store_release(&rbuf->pwrite, (rbuf->pwrite + todo) % rbuf->size);

 return len;
}
