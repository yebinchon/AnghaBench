
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum dpu_chroma_samp_type { ____Placeholder_dpu_chroma_samp_type } dpu_chroma_samp_type ;






__attribute__((used)) static void _dpu_get_v_h_subsample_rate(
 enum dpu_chroma_samp_type chroma_sample,
 uint32_t *v_sample,
 uint32_t *h_sample)
{
 if (!v_sample || !h_sample)
  return;

 switch (chroma_sample) {
 case 128:
  *v_sample = 1;
  *h_sample = 2;
  break;
 case 129:
  *v_sample = 2;
  *h_sample = 1;
  break;
 case 130:
  *v_sample = 2;
  *h_sample = 2;
  break;
 default:
  *v_sample = 1;
  *h_sample = 1;
  break;
 }
}
