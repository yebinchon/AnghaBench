
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_pkt_info {scalar_t__ offset; scalar_t__ hdr; } ;


 int __bth_becn (scalar_t__) ;

__attribute__((used)) static inline int bth_becn(struct rxe_pkt_info *pkt)
{
 return __bth_becn(pkt->hdr + pkt->offset);
}
