
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ioatdma_chan {size_t xfercap_log; } ;



__attribute__((used)) static inline u16
ioat_xferlen_to_descs(struct ioatdma_chan *ioat_chan, size_t len)
{
 u16 num_descs = len >> ioat_chan->xfercap_log;

 num_descs += !!(len & ((1 << ioat_chan->xfercap_log) - 1));
 return num_descs;
}
