
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnet_peer {int pd_list; } ;
struct fwnet_partial_datagram {unsigned int pbuf; int pd_link; } ;


 int * fwnet_frag_new (struct fwnet_partial_datagram*,unsigned int,unsigned int) ;
 int list_move_tail (int *,int *) ;
 int memcpy (unsigned int,void*,unsigned int) ;

__attribute__((used)) static bool fwnet_pd_update(struct fwnet_peer *peer,
  struct fwnet_partial_datagram *pd, void *frag_buf,
  unsigned frag_off, unsigned frag_len)
{
 if (fwnet_frag_new(pd, frag_off, frag_len) == ((void*)0))
  return 0;

 memcpy(pd->pbuf + frag_off, frag_buf, frag_len);





 list_move_tail(&pd->pd_link, &peer->pd_list);

 return 1;
}
