
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int setup_cdp; int get_scaler_ver; int setup_scaler; int setup_multirect; int setup_csc; int setup_qos_ctrl; int setup_creq_lut; int setup_danger_safe_lut; int setup_pe; int setup_solidfill; int setup_sourceaddress; int setup_rects; int setup_format; } ;
struct dpu_hw_pipe {TYPE_2__ ops; TYPE_1__* cap; } ;
struct TYPE_3__ {unsigned long features; } ;


 int DPU_SSPP_CDP ;
 int DPU_SSPP_CSC ;
 int DPU_SSPP_CSC_10BIT ;
 int DPU_SSPP_QOS ;
 int DPU_SSPP_SCALER_QSEED3 ;
 int DPU_SSPP_SMART_DMA_V1 ;
 int DPU_SSPP_SMART_DMA_V2 ;
 int DPU_SSPP_SRC ;
 int _dpu_hw_sspp_get_scaler3_ver ;
 int _dpu_hw_sspp_setup_scaler3 ;
 int dpu_hw_sspp_setup_cdp ;
 int dpu_hw_sspp_setup_creq_lut ;
 int dpu_hw_sspp_setup_csc ;
 int dpu_hw_sspp_setup_danger_safe_lut ;
 int dpu_hw_sspp_setup_format ;
 int dpu_hw_sspp_setup_multirect ;
 int dpu_hw_sspp_setup_pe_config ;
 int dpu_hw_sspp_setup_qos_ctrl ;
 int dpu_hw_sspp_setup_rects ;
 int dpu_hw_sspp_setup_solidfill ;
 int dpu_hw_sspp_setup_sourceaddress ;
 scalar_t__ test_bit (int ,unsigned long*) ;

__attribute__((used)) static void _setup_layer_ops(struct dpu_hw_pipe *c,
  unsigned long features)
{
 if (test_bit(DPU_SSPP_SRC, &features)) {
  c->ops.setup_format = dpu_hw_sspp_setup_format;
  c->ops.setup_rects = dpu_hw_sspp_setup_rects;
  c->ops.setup_sourceaddress = dpu_hw_sspp_setup_sourceaddress;
  c->ops.setup_solidfill = dpu_hw_sspp_setup_solidfill;
  c->ops.setup_pe = dpu_hw_sspp_setup_pe_config;
 }

 if (test_bit(DPU_SSPP_QOS, &features)) {
  c->ops.setup_danger_safe_lut =
   dpu_hw_sspp_setup_danger_safe_lut;
  c->ops.setup_creq_lut = dpu_hw_sspp_setup_creq_lut;
  c->ops.setup_qos_ctrl = dpu_hw_sspp_setup_qos_ctrl;
 }

 if (test_bit(DPU_SSPP_CSC, &features) ||
  test_bit(DPU_SSPP_CSC_10BIT, &features))
  c->ops.setup_csc = dpu_hw_sspp_setup_csc;

 if (test_bit(DPU_SSPP_SMART_DMA_V1, &c->cap->features) ||
  test_bit(DPU_SSPP_SMART_DMA_V2, &c->cap->features))
  c->ops.setup_multirect = dpu_hw_sspp_setup_multirect;

 if (test_bit(DPU_SSPP_SCALER_QSEED3, &features)) {
  c->ops.setup_scaler = _dpu_hw_sspp_setup_scaler3;
  c->ops.get_scaler_ver = _dpu_hw_sspp_get_scaler3_ver;
 }

 if (test_bit(DPU_SSPP_CDP, &features))
  c->ops.setup_cdp = dpu_hw_sspp_setup_cdp;
}
