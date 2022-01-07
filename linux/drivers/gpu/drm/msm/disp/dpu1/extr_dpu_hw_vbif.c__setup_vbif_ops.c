
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_hw_vbif_ops {int set_write_gather_en; int clear_errors; int set_mem_type; int set_qos_remap; int get_halt_ctrl; int set_halt_ctrl; int get_limit_conf; int set_limit_conf; } ;


 int DPU_VBIF_QOS_REMAP ;
 int dpu_hw_clear_errors ;
 int dpu_hw_get_halt_ctrl ;
 int dpu_hw_get_limit_conf ;
 int dpu_hw_set_halt_ctrl ;
 int dpu_hw_set_limit_conf ;
 int dpu_hw_set_mem_type ;
 int dpu_hw_set_qos_remap ;
 int dpu_hw_set_write_gather_en ;
 scalar_t__ test_bit (int ,unsigned long*) ;

__attribute__((used)) static void _setup_vbif_ops(struct dpu_hw_vbif_ops *ops,
  unsigned long cap)
{
 ops->set_limit_conf = dpu_hw_set_limit_conf;
 ops->get_limit_conf = dpu_hw_get_limit_conf;
 ops->set_halt_ctrl = dpu_hw_set_halt_ctrl;
 ops->get_halt_ctrl = dpu_hw_get_halt_ctrl;
 if (test_bit(DPU_VBIF_QOS_REMAP, &cap))
  ops->set_qos_remap = dpu_hw_set_qos_remap;
 ops->set_mem_type = dpu_hw_set_mem_type;
 ops->clear_errors = dpu_hw_clear_errors;
 ops->set_write_gather_en = dpu_hw_set_write_gather_en;
}
