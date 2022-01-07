
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_ringbuffer {int* data; size_t size; } ;
typedef size_t ssize_t ;


 size_t DVB_RINGBUFFER_PKTHDRSIZE ;
 size_t EINVAL ;
 int memcpy (int *,size_t*,size_t) ;

ssize_t dvb_ringbuffer_pkt_read(struct dvb_ringbuffer *rbuf, size_t idx,
    int offset, u8* buf, size_t len)
{
 size_t todo;
 size_t split;
 size_t pktlen;

 pktlen = rbuf->data[idx] << 8;
 pktlen |= rbuf->data[(idx + 1) % rbuf->size];
 if (offset > pktlen) return -EINVAL;
 if ((offset + len) > pktlen) len = pktlen - offset;

 idx = (idx + DVB_RINGBUFFER_PKTHDRSIZE + offset) % rbuf->size;
 todo = len;
 split = ((idx + len) > rbuf->size) ? rbuf->size - idx : 0;
 if (split > 0) {
  memcpy(buf, rbuf->data+idx, split);
  buf += split;
  todo -= split;
  idx = 0;
 }
 memcpy(buf, rbuf->data+idx, todo);
 return len;
}
