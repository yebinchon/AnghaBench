
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxsfb_drm_private {int pipe; } ;
struct drm_device {struct mxsfb_drm_private* dev_private; } ;


 int mxsfb_pipe_disable_vblank (int *) ;

__attribute__((used)) static void mxsfb_irq_preinstall(struct drm_device *drm)
{
 struct mxsfb_drm_private *mxsfb = drm->dev_private;

 mxsfb_pipe_disable_vblank(&mxsfb->pipe);
}
