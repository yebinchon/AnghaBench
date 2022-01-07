
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_du_device {int dev; } ;
struct rcar_du_crtc {int flip_wait; struct rcar_du_device* dev; } ;


 int dev_warn (int ,char*) ;
 int msecs_to_jiffies (int) ;
 int rcar_du_crtc_finish_page_flip (struct rcar_du_crtc*) ;
 int rcar_du_crtc_page_flip_pending (struct rcar_du_crtc*) ;
 scalar_t__ wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static void rcar_du_crtc_wait_page_flip(struct rcar_du_crtc *rcrtc)
{
 struct rcar_du_device *rcdu = rcrtc->dev;

 if (wait_event_timeout(rcrtc->flip_wait,
          !rcar_du_crtc_page_flip_pending(rcrtc),
          msecs_to_jiffies(50)))
  return;

 dev_warn(rcdu->dev, "page flip timeout\n");

 rcar_du_crtc_finish_page_flip(rcrtc);
}
