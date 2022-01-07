
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_pkt_info {scalar_t__ offset; scalar_t__ hdr; } ;


 int __bth_set_fecn (scalar_t__,int) ;

__attribute__((used)) static inline void bth_set_fecn(struct rxe_pkt_info *pkt, int fecn)
{
 __bth_set_fecn(pkt->hdr + pkt->offset, fecn);
}
