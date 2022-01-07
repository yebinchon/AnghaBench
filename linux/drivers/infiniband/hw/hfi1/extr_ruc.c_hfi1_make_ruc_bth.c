
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rvt_qp {int dummy; } ;
struct ib_other_headers {void** bth; } ;


 void* cpu_to_be32 (int ) ;

__attribute__((used)) static inline void hfi1_make_ruc_bth(struct rvt_qp *qp,
         struct ib_other_headers *ohdr,
         u32 bth0, u32 bth1, u32 bth2)
{
 ohdr->bth[0] = cpu_to_be32(bth0);
 ohdr->bth[1] = cpu_to_be32(bth1);
 ohdr->bth[2] = cpu_to_be32(bth2);
}
