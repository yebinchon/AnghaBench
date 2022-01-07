
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sseu_dev_info {int max_subslices; int max_eus_per_subslice; } ;


 int GEN_SSEU_STRIDE (int ) ;

__attribute__((used)) static int sseu_eu_idx(const struct sseu_dev_info *sseu, int slice,
         int subslice)
{
 int subslice_stride = GEN_SSEU_STRIDE(sseu->max_eus_per_subslice);
 int slice_stride = sseu->max_subslices * subslice_stride;

 return slice * slice_stride + subslice * subslice_stride;
}
