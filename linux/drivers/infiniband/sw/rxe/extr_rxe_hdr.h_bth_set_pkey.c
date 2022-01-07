
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rxe_pkt_info {scalar_t__ offset; scalar_t__ hdr; } ;


 int __bth_set_pkey (scalar_t__,int ) ;

__attribute__((used)) static inline void bth_set_pkey(struct rxe_pkt_info *pkt, u16 pkey)
{
 __bth_set_pkey(pkt->hdr + pkt->offset, pkey);
}
