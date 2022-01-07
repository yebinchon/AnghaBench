
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rxe_pkt_info {size_t opcode; scalar_t__ offset; scalar_t__ hdr; } ;
struct TYPE_2__ {scalar_t__* offset; } ;


 size_t RXE_DETH ;
 int __deth_sqp (scalar_t__) ;
 TYPE_1__* rxe_opcode ;

__attribute__((used)) static inline u32 deth_sqp(struct rxe_pkt_info *pkt)
{
 return __deth_sqp(pkt->hdr + pkt->offset
  + rxe_opcode[pkt->opcode].offset[RXE_DETH]);
}
