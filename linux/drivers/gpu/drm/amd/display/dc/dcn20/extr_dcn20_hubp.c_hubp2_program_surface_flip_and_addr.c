
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;
typedef struct TYPE_16__ TYPE_12__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_16__ {int low_part; int high_part; int quad_part; } ;
struct TYPE_15__ {int low_part; int high_part; int quad_part; } ;
struct TYPE_14__ {int low_part; int high_part; int quad_part; } ;
struct TYPE_26__ {int low_part; int high_part; int quad_part; } ;
struct TYPE_17__ {TYPE_12__ left_addr; TYPE_11__ right_addr; TYPE_10__ left_meta_addr; TYPE_9__ right_meta_addr; } ;
struct TYPE_24__ {int low_part; int high_part; int quad_part; } ;
struct TYPE_23__ {int low_part; int high_part; int quad_part; } ;
struct TYPE_22__ {int low_part; int high_part; int quad_part; } ;
struct TYPE_21__ {int low_part; int high_part; } ;
struct TYPE_25__ {TYPE_7__ luma_addr; TYPE_6__ chroma_addr; TYPE_5__ luma_meta_addr; TYPE_4__ chroma_meta_addr; } ;
struct TYPE_19__ {int low_part; int high_part; int quad_part; } ;
struct TYPE_18__ {int low_part; int high_part; int quad_part; } ;
struct TYPE_20__ {TYPE_2__ addr; TYPE_1__ meta_addr; } ;
struct dc_plane_address {int vmid; int type; TYPE_13__ grph_stereo; int tmz_surface; TYPE_8__ video_progressive; TYPE_3__ grph; } ;
struct hubp {struct dc_plane_address request_address; } ;
struct dcn20_hubp {int dummy; } ;


 int BREAK_TO_DEBUGGER () ;
 int DCSURF_FLIP_CONTROL ;
 int DCSURF_PRIMARY_META_SURFACE_ADDRESS ;
 int DCSURF_PRIMARY_META_SURFACE_ADDRESS_C ;
 int DCSURF_PRIMARY_META_SURFACE_ADDRESS_HIGH ;
 int DCSURF_PRIMARY_META_SURFACE_ADDRESS_HIGH_C ;
 int DCSURF_PRIMARY_SURFACE_ADDRESS ;
 int DCSURF_PRIMARY_SURFACE_ADDRESS_C ;
 int DCSURF_PRIMARY_SURFACE_ADDRESS_HIGH ;
 int DCSURF_PRIMARY_SURFACE_ADDRESS_HIGH_C ;
 int DCSURF_SECONDARY_META_SURFACE_ADDRESS ;
 int DCSURF_SECONDARY_META_SURFACE_ADDRESS_HIGH ;
 int DCSURF_SECONDARY_SURFACE_ADDRESS ;
 int DCSURF_SECONDARY_SURFACE_ADDRESS_HIGH ;
 int DCSURF_SURFACE_CONTROL ;



 int PRIMARY_META_SURFACE_ADDRESS ;
 int PRIMARY_META_SURFACE_ADDRESS_C ;
 int PRIMARY_META_SURFACE_ADDRESS_HIGH ;
 int PRIMARY_META_SURFACE_ADDRESS_HIGH_C ;
 int PRIMARY_META_SURFACE_TMZ ;
 int PRIMARY_META_SURFACE_TMZ_C ;
 int PRIMARY_SURFACE_ADDRESS ;
 int PRIMARY_SURFACE_ADDRESS_C ;
 int PRIMARY_SURFACE_ADDRESS_HIGH ;
 int PRIMARY_SURFACE_ADDRESS_HIGH_C ;
 int PRIMARY_SURFACE_TMZ ;
 int PRIMARY_SURFACE_TMZ_C ;
 int REG_SET (int ,int ,int ,int ) ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_2 (int ,int ,int ,int ,int ) ;
 int REG_UPDATE_4 (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int REG_UPDATE_8 (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int SECONDARY_META_SURFACE_ADDRESS ;
 int SECONDARY_META_SURFACE_ADDRESS_HIGH ;
 int SECONDARY_META_SURFACE_TMZ ;
 int SECONDARY_META_SURFACE_TMZ_C ;
 int SECONDARY_SURFACE_ADDRESS ;
 int SECONDARY_SURFACE_ADDRESS_HIGH ;
 int SECONDARY_SURFACE_TMZ ;
 int SECONDARY_SURFACE_TMZ_C ;
 int SURFACE_FLIP_IN_STEREOSYNC ;
 int SURFACE_FLIP_MODE_FOR_STEREOSYNC ;
 int SURFACE_FLIP_TYPE ;
 struct dcn20_hubp* TO_DCN20_HUBP (struct hubp*) ;
 int VMID ;
 int VMID_SETTINGS_0 ;

bool hubp2_program_surface_flip_and_addr(
 struct hubp *hubp,
 const struct dc_plane_address *address,
 bool flip_immediate)
{
 struct dcn20_hubp *hubp2 = TO_DCN20_HUBP(hubp);


 REG_UPDATE(DCSURF_FLIP_CONTROL,
   SURFACE_FLIP_TYPE, flip_immediate);


 REG_UPDATE(VMID_SETTINGS_0,
   VMID, address->vmid);

 if (address->type == 129) {
  REG_UPDATE(DCSURF_FLIP_CONTROL, SURFACE_FLIP_MODE_FOR_STEREOSYNC, 0x1);
  REG_UPDATE(DCSURF_FLIP_CONTROL, SURFACE_FLIP_IN_STEREOSYNC, 0x1);

 } else {

  REG_UPDATE(DCSURF_FLIP_CONTROL, SURFACE_FLIP_MODE_FOR_STEREOSYNC, 0x0);
  REG_UPDATE(DCSURF_FLIP_CONTROL, SURFACE_FLIP_IN_STEREOSYNC, 0x0);
 }
 switch (address->type) {
 case 130:







  if (address->grph.addr.quad_part == 0)
   break;

  REG_UPDATE_2(DCSURF_SURFACE_CONTROL,
    PRIMARY_SURFACE_TMZ, address->tmz_surface,
    PRIMARY_META_SURFACE_TMZ, address->tmz_surface);

  if (address->grph.meta_addr.quad_part != 0) {
   REG_SET(DCSURF_PRIMARY_META_SURFACE_ADDRESS_HIGH, 0,
     PRIMARY_META_SURFACE_ADDRESS_HIGH,
     address->grph.meta_addr.high_part);

   REG_SET(DCSURF_PRIMARY_META_SURFACE_ADDRESS, 0,
     PRIMARY_META_SURFACE_ADDRESS,
     address->grph.meta_addr.low_part);
  }

  REG_SET(DCSURF_PRIMARY_SURFACE_ADDRESS_HIGH, 0,
    PRIMARY_SURFACE_ADDRESS_HIGH,
    address->grph.addr.high_part);

  REG_SET(DCSURF_PRIMARY_SURFACE_ADDRESS, 0,
    PRIMARY_SURFACE_ADDRESS,
    address->grph.addr.low_part);
  break;
 case 128:
  if (address->video_progressive.luma_addr.quad_part == 0
    || address->video_progressive.chroma_addr.quad_part == 0)
   break;

  REG_UPDATE_4(DCSURF_SURFACE_CONTROL,
    PRIMARY_SURFACE_TMZ, address->tmz_surface,
    PRIMARY_SURFACE_TMZ_C, address->tmz_surface,
    PRIMARY_META_SURFACE_TMZ, address->tmz_surface,
    PRIMARY_META_SURFACE_TMZ_C, address->tmz_surface);

  if (address->video_progressive.luma_meta_addr.quad_part != 0) {
   REG_SET(DCSURF_PRIMARY_META_SURFACE_ADDRESS_HIGH_C, 0,
     PRIMARY_META_SURFACE_ADDRESS_HIGH_C,
     address->video_progressive.chroma_meta_addr.high_part);

   REG_SET(DCSURF_PRIMARY_META_SURFACE_ADDRESS_C, 0,
     PRIMARY_META_SURFACE_ADDRESS_C,
     address->video_progressive.chroma_meta_addr.low_part);

   REG_SET(DCSURF_PRIMARY_META_SURFACE_ADDRESS_HIGH, 0,
     PRIMARY_META_SURFACE_ADDRESS_HIGH,
     address->video_progressive.luma_meta_addr.high_part);

   REG_SET(DCSURF_PRIMARY_META_SURFACE_ADDRESS, 0,
     PRIMARY_META_SURFACE_ADDRESS,
     address->video_progressive.luma_meta_addr.low_part);
  }

  REG_SET(DCSURF_PRIMARY_SURFACE_ADDRESS_HIGH_C, 0,
    PRIMARY_SURFACE_ADDRESS_HIGH_C,
    address->video_progressive.chroma_addr.high_part);

  REG_SET(DCSURF_PRIMARY_SURFACE_ADDRESS_C, 0,
    PRIMARY_SURFACE_ADDRESS_C,
    address->video_progressive.chroma_addr.low_part);

  REG_SET(DCSURF_PRIMARY_SURFACE_ADDRESS_HIGH, 0,
    PRIMARY_SURFACE_ADDRESS_HIGH,
    address->video_progressive.luma_addr.high_part);

  REG_SET(DCSURF_PRIMARY_SURFACE_ADDRESS, 0,
    PRIMARY_SURFACE_ADDRESS,
    address->video_progressive.luma_addr.low_part);
  break;
 case 129:
  if (address->grph_stereo.left_addr.quad_part == 0)
   break;
  if (address->grph_stereo.right_addr.quad_part == 0)
   break;

  REG_UPDATE_8(DCSURF_SURFACE_CONTROL,
    PRIMARY_SURFACE_TMZ, address->tmz_surface,
    PRIMARY_SURFACE_TMZ_C, address->tmz_surface,
    PRIMARY_META_SURFACE_TMZ, address->tmz_surface,
    PRIMARY_META_SURFACE_TMZ_C, address->tmz_surface,
    SECONDARY_SURFACE_TMZ, address->tmz_surface,
    SECONDARY_SURFACE_TMZ_C, address->tmz_surface,
    SECONDARY_META_SURFACE_TMZ, address->tmz_surface,
    SECONDARY_META_SURFACE_TMZ_C, address->tmz_surface);

  if (address->grph_stereo.right_meta_addr.quad_part != 0) {

   REG_SET(DCSURF_SECONDARY_META_SURFACE_ADDRESS_HIGH, 0,
     SECONDARY_META_SURFACE_ADDRESS_HIGH,
     address->grph_stereo.right_meta_addr.high_part);

   REG_SET(DCSURF_SECONDARY_META_SURFACE_ADDRESS, 0,
     SECONDARY_META_SURFACE_ADDRESS,
     address->grph_stereo.right_meta_addr.low_part);
  }
  if (address->grph_stereo.left_meta_addr.quad_part != 0) {

   REG_SET(DCSURF_PRIMARY_META_SURFACE_ADDRESS_HIGH, 0,
     PRIMARY_META_SURFACE_ADDRESS_HIGH,
     address->grph_stereo.left_meta_addr.high_part);

   REG_SET(DCSURF_PRIMARY_META_SURFACE_ADDRESS, 0,
     PRIMARY_META_SURFACE_ADDRESS,
     address->grph_stereo.left_meta_addr.low_part);
  }

  REG_SET(DCSURF_SECONDARY_SURFACE_ADDRESS_HIGH, 0,
    SECONDARY_SURFACE_ADDRESS_HIGH,
    address->grph_stereo.right_addr.high_part);

  REG_SET(DCSURF_SECONDARY_SURFACE_ADDRESS, 0,
    SECONDARY_SURFACE_ADDRESS,
    address->grph_stereo.right_addr.low_part);

  REG_SET(DCSURF_PRIMARY_SURFACE_ADDRESS_HIGH, 0,
    PRIMARY_SURFACE_ADDRESS_HIGH,
    address->grph_stereo.left_addr.high_part);

  REG_SET(DCSURF_PRIMARY_SURFACE_ADDRESS, 0,
    PRIMARY_SURFACE_ADDRESS,
    address->grph_stereo.left_addr.low_part);
  break;
 default:
  BREAK_TO_DEBUGGER();
  break;
 }

 hubp->request_address = *address;

 return 1;
}
