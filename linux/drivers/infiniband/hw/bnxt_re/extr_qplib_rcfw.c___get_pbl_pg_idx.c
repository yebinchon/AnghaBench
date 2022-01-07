
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt_qplib_pbl {scalar_t__ pg_size; } ;


 int CMDQ_INITIALIZE_FW_QPC_PG_SIZE_PG_1G ;
 int CMDQ_INITIALIZE_FW_QPC_PG_SIZE_PG_2M ;
 int CMDQ_INITIALIZE_FW_QPC_PG_SIZE_PG_4K ;
 int CMDQ_INITIALIZE_FW_QPC_PG_SIZE_PG_64K ;
 int CMDQ_INITIALIZE_FW_QPC_PG_SIZE_PG_8K ;
 int CMDQ_INITIALIZE_FW_QPC_PG_SIZE_PG_8M ;
 scalar_t__ ROCE_PG_SIZE_1G ;
 scalar_t__ ROCE_PG_SIZE_2M ;
 scalar_t__ ROCE_PG_SIZE_4K ;
 scalar_t__ ROCE_PG_SIZE_64K ;
 scalar_t__ ROCE_PG_SIZE_8K ;
 scalar_t__ ROCE_PG_SIZE_8M ;

__attribute__((used)) static int __get_pbl_pg_idx(struct bnxt_qplib_pbl *pbl)
{
 return (pbl->pg_size == ROCE_PG_SIZE_4K ?
          CMDQ_INITIALIZE_FW_QPC_PG_SIZE_PG_4K :
  pbl->pg_size == ROCE_PG_SIZE_8K ?
          CMDQ_INITIALIZE_FW_QPC_PG_SIZE_PG_8K :
  pbl->pg_size == ROCE_PG_SIZE_64K ?
          CMDQ_INITIALIZE_FW_QPC_PG_SIZE_PG_64K :
  pbl->pg_size == ROCE_PG_SIZE_2M ?
          CMDQ_INITIALIZE_FW_QPC_PG_SIZE_PG_2M :
  pbl->pg_size == ROCE_PG_SIZE_8M ?
          CMDQ_INITIALIZE_FW_QPC_PG_SIZE_PG_8M :
  pbl->pg_size == ROCE_PG_SIZE_1G ?
          CMDQ_INITIALIZE_FW_QPC_PG_SIZE_PG_1G :
          CMDQ_INITIALIZE_FW_QPC_PG_SIZE_PG_4K);
}
