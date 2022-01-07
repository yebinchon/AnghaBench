
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hns_roce_eq_context {int nxt_eqe_ba1; int nxt_eqe_ba0; int byte_36; int byte_32; int byte_28; int eqe_ba1; int eqe_ba0; int eqe_report_timer; int byte_12; int byte_8; int byte_4; } ;
struct hns_roce_eq {int hop_num; int over_ignore; int coalesce; int arm_st; int eqe_ba_pg_sz; int eqe_buf_pg_sz; int shift; int eqe_ba; int l0_dma; int eqn; int eq_max_cnt; int eq_period; int cur_eqe_ba; int nxt_eqe_ba; TYPE_2__* buf_list; scalar_t__ entries; scalar_t__ cons_index; scalar_t__ doorbell; } ;
struct TYPE_3__ {int eqe_hop_num; int eqe_ba_pg_sz; int eqe_buf_pg_sz; } ;
struct hns_roce_dev {TYPE_1__ caps; scalar_t__ reg_base; } ;
struct TYPE_4__ {int map; } ;


 int HNS_ROCE_EQC_ARM_ST_M ;
 int HNS_ROCE_EQC_ARM_ST_S ;
 int HNS_ROCE_EQC_BA_PG_SZ_M ;
 int HNS_ROCE_EQC_BA_PG_SZ_S ;
 int HNS_ROCE_EQC_BUF_PG_SZ_M ;
 int HNS_ROCE_EQC_BUF_PG_SZ_S ;
 int HNS_ROCE_EQC_COALESCE_M ;
 int HNS_ROCE_EQC_COALESCE_S ;
 int HNS_ROCE_EQC_CONS_INDX_M ;
 int HNS_ROCE_EQC_CONS_INDX_S ;
 int HNS_ROCE_EQC_CUR_EQE_BA_H_M ;
 int HNS_ROCE_EQC_CUR_EQE_BA_H_S ;
 int HNS_ROCE_EQC_CUR_EQE_BA_L_M ;
 int HNS_ROCE_EQC_CUR_EQE_BA_L_S ;
 int HNS_ROCE_EQC_CUR_EQE_BA_M_M ;
 int HNS_ROCE_EQC_CUR_EQE_BA_M_S ;
 int HNS_ROCE_EQC_EQE_BA_H_M ;
 int HNS_ROCE_EQC_EQE_BA_H_S ;
 int HNS_ROCE_EQC_EQE_BA_L_M ;
 int HNS_ROCE_EQC_EQE_BA_L_S ;
 int HNS_ROCE_EQC_EQE_CNT_M ;
 int HNS_ROCE_EQC_EQE_CNT_S ;
 int HNS_ROCE_EQC_EQN_M ;
 int HNS_ROCE_EQC_EQN_S ;
 int HNS_ROCE_EQC_EQ_ST_M ;
 int HNS_ROCE_EQC_EQ_ST_S ;
 int HNS_ROCE_EQC_HOP_NUM_M ;
 int HNS_ROCE_EQC_HOP_NUM_S ;
 int HNS_ROCE_EQC_MAX_CNT_M ;
 int HNS_ROCE_EQC_MAX_CNT_S ;
 int HNS_ROCE_EQC_MSI_INDX_M ;
 int HNS_ROCE_EQC_MSI_INDX_S ;
 int HNS_ROCE_EQC_NXT_EQE_BA_H_M ;
 int HNS_ROCE_EQC_NXT_EQE_BA_H_S ;
 int HNS_ROCE_EQC_NXT_EQE_BA_L_M ;
 int HNS_ROCE_EQC_NXT_EQE_BA_L_S ;
 int HNS_ROCE_EQC_OVER_IGNORE_M ;
 int HNS_ROCE_EQC_OVER_IGNORE_S ;
 int HNS_ROCE_EQC_PERIOD_M ;
 int HNS_ROCE_EQC_PERIOD_S ;
 int HNS_ROCE_EQC_PROD_INDX_M ;
 int HNS_ROCE_EQC_PROD_INDX_S ;
 int HNS_ROCE_EQC_REPORT_TIMER_M ;
 int HNS_ROCE_EQC_REPORT_TIMER_S ;
 int HNS_ROCE_EQC_SHIFT_M ;
 int HNS_ROCE_EQC_SHIFT_S ;
 int HNS_ROCE_EQ_INIT_CONS_IDX ;
 int HNS_ROCE_EQ_INIT_EQE_CNT ;
 int HNS_ROCE_EQ_INIT_MSI_IDX ;
 int HNS_ROCE_EQ_INIT_PROD_IDX ;
 int HNS_ROCE_EQ_INIT_REPORT_TIMER ;
 int HNS_ROCE_V2_EQ_ALWAYS_ARMED ;
 int HNS_ROCE_V2_EQ_COALESCE_0 ;
 int HNS_ROCE_V2_EQ_OVER_IGNORE_0 ;
 int HNS_ROCE_V2_EQ_STATE_VALID ;
 int PG_SHIFT_OFFSET ;
 scalar_t__ ROCEE_VF_EQ_DB_CFG0_REG ;
 int ilog2 (unsigned int) ;
 int memset (struct hns_roce_eq_context*,int ,int) ;
 int roce_set_field (int ,int ,int ,int) ;

__attribute__((used)) static void hns_roce_config_eqc(struct hns_roce_dev *hr_dev,
    struct hns_roce_eq *eq,
    void *mb_buf)
{
 struct hns_roce_eq_context *eqc;

 eqc = mb_buf;
 memset(eqc, 0, sizeof(struct hns_roce_eq_context));


 eq->doorbell = hr_dev->reg_base + ROCEE_VF_EQ_DB_CFG0_REG;
 eq->hop_num = hr_dev->caps.eqe_hop_num;
 eq->cons_index = 0;
 eq->over_ignore = HNS_ROCE_V2_EQ_OVER_IGNORE_0;
 eq->coalesce = HNS_ROCE_V2_EQ_COALESCE_0;
 eq->arm_st = HNS_ROCE_V2_EQ_ALWAYS_ARMED;
 eq->eqe_ba_pg_sz = hr_dev->caps.eqe_ba_pg_sz;
 eq->eqe_buf_pg_sz = hr_dev->caps.eqe_buf_pg_sz;
 eq->shift = ilog2((unsigned int)eq->entries);

 if (!eq->hop_num)
  eq->eqe_ba = eq->buf_list->map;
 else
  eq->eqe_ba = eq->l0_dma;


 roce_set_field(eqc->byte_4,
         HNS_ROCE_EQC_EQ_ST_M,
         HNS_ROCE_EQC_EQ_ST_S,
         HNS_ROCE_V2_EQ_STATE_VALID);


 roce_set_field(eqc->byte_4,
         HNS_ROCE_EQC_HOP_NUM_M,
         HNS_ROCE_EQC_HOP_NUM_S, eq->hop_num);


 roce_set_field(eqc->byte_4,
         HNS_ROCE_EQC_OVER_IGNORE_M,
         HNS_ROCE_EQC_OVER_IGNORE_S, eq->over_ignore);


 roce_set_field(eqc->byte_4,
         HNS_ROCE_EQC_COALESCE_M,
         HNS_ROCE_EQC_COALESCE_S, eq->coalesce);


 roce_set_field(eqc->byte_4,
         HNS_ROCE_EQC_ARM_ST_M,
         HNS_ROCE_EQC_ARM_ST_S, eq->arm_st);


 roce_set_field(eqc->byte_4,
         HNS_ROCE_EQC_EQN_M,
         HNS_ROCE_EQC_EQN_S, eq->eqn);


 roce_set_field(eqc->byte_4,
         HNS_ROCE_EQC_EQE_CNT_M,
         HNS_ROCE_EQC_EQE_CNT_S,
         HNS_ROCE_EQ_INIT_EQE_CNT);


 roce_set_field(eqc->byte_8,
         HNS_ROCE_EQC_BA_PG_SZ_M,
         HNS_ROCE_EQC_BA_PG_SZ_S,
         eq->eqe_ba_pg_sz + PG_SHIFT_OFFSET);


 roce_set_field(eqc->byte_8,
         HNS_ROCE_EQC_BUF_PG_SZ_M,
         HNS_ROCE_EQC_BUF_PG_SZ_S,
         eq->eqe_buf_pg_sz + PG_SHIFT_OFFSET);


 roce_set_field(eqc->byte_8,
         HNS_ROCE_EQC_PROD_INDX_M,
         HNS_ROCE_EQC_PROD_INDX_S,
         HNS_ROCE_EQ_INIT_PROD_IDX);


 roce_set_field(eqc->byte_12,
         HNS_ROCE_EQC_MAX_CNT_M,
         HNS_ROCE_EQC_MAX_CNT_S, eq->eq_max_cnt);


 roce_set_field(eqc->byte_12,
         HNS_ROCE_EQC_PERIOD_M,
         HNS_ROCE_EQC_PERIOD_S, eq->eq_period);


 roce_set_field(eqc->eqe_report_timer,
         HNS_ROCE_EQC_REPORT_TIMER_M,
         HNS_ROCE_EQC_REPORT_TIMER_S,
         HNS_ROCE_EQ_INIT_REPORT_TIMER);


 roce_set_field(eqc->eqe_ba0,
         HNS_ROCE_EQC_EQE_BA_L_M,
         HNS_ROCE_EQC_EQE_BA_L_S, eq->eqe_ba >> 3);


 roce_set_field(eqc->eqe_ba1,
         HNS_ROCE_EQC_EQE_BA_H_M,
         HNS_ROCE_EQC_EQE_BA_H_S, eq->eqe_ba >> 35);


 roce_set_field(eqc->byte_28,
         HNS_ROCE_EQC_SHIFT_M,
         HNS_ROCE_EQC_SHIFT_S, eq->shift);


 roce_set_field(eqc->byte_28,
         HNS_ROCE_EQC_MSI_INDX_M,
         HNS_ROCE_EQC_MSI_INDX_S,
         HNS_ROCE_EQ_INIT_MSI_IDX);


 roce_set_field(eqc->byte_28,
         HNS_ROCE_EQC_CUR_EQE_BA_L_M,
         HNS_ROCE_EQC_CUR_EQE_BA_L_S, eq->cur_eqe_ba >> 12);


 roce_set_field(eqc->byte_32,
         HNS_ROCE_EQC_CUR_EQE_BA_M_M,
         HNS_ROCE_EQC_CUR_EQE_BA_M_S, eq->cur_eqe_ba >> 28);


 roce_set_field(eqc->byte_36,
         HNS_ROCE_EQC_CUR_EQE_BA_H_M,
         HNS_ROCE_EQC_CUR_EQE_BA_H_S, eq->cur_eqe_ba >> 60);


 roce_set_field(eqc->byte_36,
         HNS_ROCE_EQC_CONS_INDX_M,
         HNS_ROCE_EQC_CONS_INDX_S,
         HNS_ROCE_EQ_INIT_CONS_IDX);


 roce_set_field(eqc->nxt_eqe_ba0,
         HNS_ROCE_EQC_NXT_EQE_BA_L_M,
         HNS_ROCE_EQC_NXT_EQE_BA_L_S, eq->nxt_eqe_ba >> 12);


 roce_set_field(eqc->nxt_eqe_ba1,
         HNS_ROCE_EQC_NXT_EQE_BA_H_M,
         HNS_ROCE_EQC_NXT_EQE_BA_H_S, eq->nxt_eqe_ba >> 44);
}
