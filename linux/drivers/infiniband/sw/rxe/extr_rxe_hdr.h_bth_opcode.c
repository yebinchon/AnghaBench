
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rxe_pkt_info {scalar_t__ offset; scalar_t__ hdr; } ;


 int __bth_opcode (scalar_t__) ;

__attribute__((used)) static inline u8 bth_opcode(struct rxe_pkt_info *pkt)
{
 return __bth_opcode(pkt->hdr + pkt->offset);
}
