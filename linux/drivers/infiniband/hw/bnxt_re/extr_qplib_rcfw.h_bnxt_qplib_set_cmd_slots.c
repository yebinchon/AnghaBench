
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdq_base {int cmd_size; } ;


 int BNXT_QPLIB_CMDQE_UNITS ;

__attribute__((used)) static inline void bnxt_qplib_set_cmd_slots(struct cmdq_base *req)
{
 req->cmd_size = (req->cmd_size + BNXT_QPLIB_CMDQE_UNITS - 1) /
    BNXT_QPLIB_CMDQE_UNITS;
}
