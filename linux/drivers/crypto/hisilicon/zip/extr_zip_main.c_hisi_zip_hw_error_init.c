
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_zip {int qm; } ;


 int QM_ACC_WB_NOT_READY_TIMEOUT ;
 int QM_BASE_CE ;
 int QM_BASE_NFE ;
 int QM_DB_RANDOM_INVALID ;
 int hisi_qm_hw_error_init (int *,int ,int,int ,int ) ;
 int hisi_zip_hw_error_set_state (struct hisi_zip*,int) ;

__attribute__((used)) static void hisi_zip_hw_error_init(struct hisi_zip *hisi_zip)
{
 hisi_qm_hw_error_init(&hisi_zip->qm, QM_BASE_CE,
         QM_BASE_NFE | QM_ACC_WB_NOT_READY_TIMEOUT, 0,
         QM_DB_RANDOM_INVALID);
 hisi_zip_hw_error_set_state(hisi_zip, 1);
}
