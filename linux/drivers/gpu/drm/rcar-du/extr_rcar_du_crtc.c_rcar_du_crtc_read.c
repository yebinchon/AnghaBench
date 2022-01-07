
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rcar_du_device {int dummy; } ;
struct rcar_du_crtc {scalar_t__ mmio_offset; struct rcar_du_device* dev; } ;


 scalar_t__ rcar_du_read (struct rcar_du_device*,scalar_t__) ;

__attribute__((used)) static u32 rcar_du_crtc_read(struct rcar_du_crtc *rcrtc, u32 reg)
{
 struct rcar_du_device *rcdu = rcrtc->dev;

 return rcar_du_read(rcdu, rcrtc->mmio_offset + reg);
}
