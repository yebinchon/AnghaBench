
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int value; int agg_flags; } ;
struct TYPE_4__ {int raw; TYPE_1__ data; } ;
struct qedr_cq {int db_addr; TYPE_2__ db; } ;


 int cpu_to_le32 (int ) ;
 int writeq (int ,int ) ;

__attribute__((used)) static void doorbell_cq(struct qedr_cq *cq, u32 cons, u8 flags)
{
 cq->db.data.agg_flags = flags;
 cq->db.data.value = cpu_to_le32(cons);
 writeq(cq->db.raw, cq->db_addr);
}
