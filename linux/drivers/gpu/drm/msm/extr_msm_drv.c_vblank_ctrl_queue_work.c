
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_vblank_work {int crtc_id; int enable; int work; struct msm_drm_private* priv; } ;
struct msm_drm_private {int wq; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 struct msm_vblank_work* kzalloc (int,int ) ;
 int queue_work (int ,int *) ;
 int vblank_ctrl_worker ;

__attribute__((used)) static int vblank_ctrl_queue_work(struct msm_drm_private *priv,
     int crtc_id, bool enable)
{
 struct msm_vblank_work *vbl_work;

 vbl_work = kzalloc(sizeof(*vbl_work), GFP_ATOMIC);
 if (!vbl_work)
  return -ENOMEM;

 INIT_WORK(&vbl_work->work, vblank_ctrl_worker);

 vbl_work->crtc_id = crtc_id;
 vbl_work->enable = enable;
 vbl_work->priv = priv;

 queue_work(priv->wq, &vbl_work->work);

 return 0;
}
