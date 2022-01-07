
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_pkt_info {scalar_t__ offset; scalar_t__ hdr; } ;


 int __bth_set_becn (scalar_t__,int) ;

__attribute__((used)) static inline void bth_set_becn(struct rxe_pkt_info *pkt, int becn)
{
 __bth_set_becn(pkt->hdr + pkt->offset, becn);
}
