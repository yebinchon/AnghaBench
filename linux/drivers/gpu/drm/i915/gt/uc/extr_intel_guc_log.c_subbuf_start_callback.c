
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rchan_buf {int dummy; } ;


 scalar_t__ relay_buf_full (struct rchan_buf*) ;

__attribute__((used)) static int subbuf_start_callback(struct rchan_buf *buf,
     void *subbuf,
     void *prev_subbuf,
     size_t prev_padding)
{
 if (relay_buf_full(buf))
  return 0;

 return 1;
}
