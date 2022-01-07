
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int device; } ;
struct rvt_qp {TYPE_1__ ibqp; } ;
struct hfi1_pkt_state {size_t opcode; } ;
struct hfi1_opcode_stats_perctx {int * stats; } ;
struct hfi1_devdata {int tx_opstats; } ;


 struct hfi1_devdata* dd_from_ibdev (int ) ;
 struct hfi1_opcode_stats_perctx* get_cpu_ptr (int ) ;
 int inc_opstats (int,int *) ;
 int put_cpu_ptr (struct hfi1_opcode_stats_perctx*) ;

__attribute__((used)) static void update_tx_opstats(struct rvt_qp *qp, struct hfi1_pkt_state *ps,
         u32 plen)
{







}
