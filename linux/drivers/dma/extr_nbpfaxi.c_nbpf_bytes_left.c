
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nbpf_channel {int dummy; } ;


 int NBPF_CHAN_CUR_TR_BYTE ;
 size_t nbpf_chan_read (struct nbpf_channel*,int ) ;

__attribute__((used)) static size_t nbpf_bytes_left(struct nbpf_channel *chan)
{
 return nbpf_chan_read(chan, NBPF_CHAN_CUR_TR_BYTE);
}
