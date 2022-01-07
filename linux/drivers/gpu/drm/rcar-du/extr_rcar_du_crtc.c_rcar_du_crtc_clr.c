
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rcar_du_device {int dummy; } ;
struct rcar_du_crtc {int mmio_offset; struct rcar_du_device* dev; } ;


 int rcar_du_read (struct rcar_du_device*,int) ;
 int rcar_du_write (struct rcar_du_device*,int,int) ;

__attribute__((used)) static void rcar_du_crtc_clr(struct rcar_du_crtc *rcrtc, u32 reg, u32 clr)
{
 struct rcar_du_device *rcdu = rcrtc->dev;

 rcar_du_write(rcdu, rcrtc->mmio_offset + reg,
        rcar_du_read(rcdu, rcrtc->mmio_offset + reg) & ~clr);
}
