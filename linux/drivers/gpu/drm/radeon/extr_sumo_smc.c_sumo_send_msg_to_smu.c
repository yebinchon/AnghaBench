
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int usec_timeout; } ;


 int GFX_INT_REQ ;
 int GFX_INT_STATUS ;
 int INT_ACK ;
 int INT_DONE ;
 int INT_REQ ;
 int RREG32 (int ) ;
 int SERV_INDEX (int) ;
 int WREG32 (int ,int) ;
 int udelay (int) ;

__attribute__((used)) static void sumo_send_msg_to_smu(struct radeon_device *rdev, u32 id)
{
 u32 gfx_int_req;
 int i;

 for (i = 0; i < rdev->usec_timeout; i++) {
  if (RREG32(GFX_INT_STATUS) & INT_DONE)
   break;
  udelay(1);
 }

 gfx_int_req = SERV_INDEX(id) | INT_REQ;
 WREG32(GFX_INT_REQ, gfx_int_req);

 for (i = 0; i < rdev->usec_timeout; i++) {
  if (RREG32(GFX_INT_REQ) & INT_REQ)
   break;
  udelay(1);
 }

 for (i = 0; i < rdev->usec_timeout; i++) {
  if (RREG32(GFX_INT_STATUS) & INT_ACK)
   break;
  udelay(1);
 }

 for (i = 0; i < rdev->usec_timeout; i++) {
  if (RREG32(GFX_INT_STATUS) & INT_DONE)
   break;
  udelay(1);
 }

 gfx_int_req &= ~INT_REQ;
 WREG32(GFX_INT_REQ, gfx_int_req);
}
