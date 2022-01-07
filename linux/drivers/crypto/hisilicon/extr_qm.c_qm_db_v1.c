
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u16 ;
struct hisi_qm {scalar_t__ io_base; } ;


 int QM_DB_CMD_SHIFT_V1 ;
 int QM_DB_INDEX_SHIFT_V1 ;
 int QM_DB_PRIORITY_SHIFT_V1 ;
 scalar_t__ QM_DOORBELL_BASE_V1 ;
 int writeq (int,scalar_t__) ;

__attribute__((used)) static void qm_db_v1(struct hisi_qm *qm, u16 qn, u8 cmd, u16 index, u8 priority)
{
 u64 doorbell;

 doorbell = qn | ((u64)cmd << QM_DB_CMD_SHIFT_V1) |
     ((u64)index << QM_DB_INDEX_SHIFT_V1) |
     ((u64)priority << QM_DB_PRIORITY_SHIFT_V1);

 writeq(doorbell, qm->io_base + QM_DOORBELL_BASE_V1);
}
