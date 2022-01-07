
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ quad_part; } ;
struct TYPE_7__ {TYPE_1__ addr; } ;
struct TYPE_8__ {TYPE_2__ grph; } ;
struct hubp {TYPE_3__ request_address; } ;
struct dcn20_hubp {int dummy; } ;
struct TYPE_9__ {scalar_t__ quad_part; scalar_t__ high_part; scalar_t__ low_part; } ;
struct TYPE_10__ {TYPE_4__ addr; } ;
struct dc_plane_address {TYPE_5__ grph; } ;


 int DCSURF_FLIP_CONTROL ;
 int DCSURF_SURFACE_EARLIEST_INUSE ;
 int DCSURF_SURFACE_EARLIEST_INUSE_HIGH ;
 int REG_GET (int ,int ,scalar_t__*) ;
 int SURFACE_EARLIEST_INUSE_ADDRESS ;
 int SURFACE_EARLIEST_INUSE_ADDRESS_HIGH ;
 int SURFACE_FLIP_PENDING ;
 struct dcn20_hubp* TO_DCN20_HUBP (struct hubp*) ;

bool hubp2_is_flip_pending(struct hubp *hubp)
{
 uint32_t flip_pending = 0;
 struct dcn20_hubp *hubp2 = TO_DCN20_HUBP(hubp);
 struct dc_plane_address earliest_inuse_address;

 REG_GET(DCSURF_FLIP_CONTROL,
   SURFACE_FLIP_PENDING, &flip_pending);

 REG_GET(DCSURF_SURFACE_EARLIEST_INUSE,
   SURFACE_EARLIEST_INUSE_ADDRESS, &earliest_inuse_address.grph.addr.low_part);

 REG_GET(DCSURF_SURFACE_EARLIEST_INUSE_HIGH,
   SURFACE_EARLIEST_INUSE_ADDRESS_HIGH, &earliest_inuse_address.grph.addr.high_part);

 if (flip_pending)
  return 1;

 if (earliest_inuse_address.grph.addr.quad_part != hubp->request_address.grph.addr.quad_part)
  return 1;

 return 0;
}
