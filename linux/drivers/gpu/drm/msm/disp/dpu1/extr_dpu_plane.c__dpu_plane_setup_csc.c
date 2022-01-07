
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct dpu_plane {int features; struct dpu_csc_cfg* csc_ptr; } ;
struct TYPE_10__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; } ;
struct TYPE_9__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; } ;
struct TYPE_8__ {int member_0; int member_1; int member_2; } ;
struct TYPE_7__ {int member_0; int member_1; int member_2; } ;
struct TYPE_6__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; int member_8; } ;
struct dpu_csc_cfg {int * csc_mv; TYPE_5__ member_4; TYPE_4__ member_3; TYPE_3__ member_2; TYPE_2__ member_1; TYPE_1__ member_0; } ;


 int BIT (int ) ;
 int DPU_DEBUG_PLANE (struct dpu_plane*,char*,int ,int ,int ) ;
 int DPU_ERROR (char*) ;
 int DPU_SSPP_CSC_10BIT ;

__attribute__((used)) static void _dpu_plane_setup_csc(struct dpu_plane *pdpu)
{
 static const struct dpu_csc_cfg dpu_csc_YUV2RGB_601L = {
  {

   0x00012A00, 0x00000000, 0x00019880,
   0x00012A00, 0xFFFF9B80, 0xFFFF3000,
   0x00012A00, 0x00020480, 0x00000000,
  },

  { 0xfff0, 0xff80, 0xff80,},
  { 0x0, 0x0, 0x0,},

  { 0x10, 0xeb, 0x10, 0xf0, 0x10, 0xf0,},
  { 0x00, 0xff, 0x00, 0xff, 0x00, 0xff,},
 };
 static const struct dpu_csc_cfg dpu_csc10_YUV2RGB_601L = {
  {

   0x00012A00, 0x00000000, 0x00019880,
   0x00012A00, 0xFFFF9B80, 0xFFFF3000,
   0x00012A00, 0x00020480, 0x00000000,
   },

  { 0xffc0, 0xfe00, 0xfe00,},
  { 0x0, 0x0, 0x0,},

  { 0x40, 0x3ac, 0x40, 0x3c0, 0x40, 0x3c0,},
  { 0x00, 0x3ff, 0x00, 0x3ff, 0x00, 0x3ff,},
 };

 if (!pdpu) {
  DPU_ERROR("invalid plane\n");
  return;
 }

 if (BIT(DPU_SSPP_CSC_10BIT) & pdpu->features)
  pdpu->csc_ptr = (struct dpu_csc_cfg *)&dpu_csc10_YUV2RGB_601L;
 else
  pdpu->csc_ptr = (struct dpu_csc_cfg *)&dpu_csc_YUV2RGB_601L;

 DPU_DEBUG_PLANE(pdpu, "using 0x%X 0x%X 0x%X...\n",
   pdpu->csc_ptr->csc_mv[0],
   pdpu->csc_ptr->csc_mv[1],
   pdpu->csc_ptr->csc_mv[2]);
}
