
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct msm_kms {int aspace; } ;
struct TYPE_3__ {struct msm_kms base; } ;
struct mdp4_kms {int blank_cursor_iova; TYPE_1__ base; } ;
struct TYPE_4__ {int stale; int next_iova; int lock; int y; int x; struct drm_gem_object* scanout_bo; int height; int width; struct drm_gem_object* next_bo; } ;
struct mdp4_crtc {int dma; TYPE_2__ cursor; int unref_cursor_work; } ;
struct drm_gem_object {int dummy; } ;
struct drm_crtc {int dummy; } ;
typedef enum mdp4_dma { ____Placeholder_mdp4_dma } mdp4_dma ;


 int CURSOR_ARGB ;
 int MDP4_DMA_CURSOR_BLEND_CONFIG_CURSOR_EN ;
 int MDP4_DMA_CURSOR_BLEND_CONFIG_FORMAT (int ) ;
 int MDP4_DMA_CURSOR_POS_X (int ) ;
 int MDP4_DMA_CURSOR_POS_Y (int ) ;
 int MDP4_DMA_CURSOR_SIZE_HEIGHT (int ) ;
 int MDP4_DMA_CURSOR_SIZE_WIDTH (int ) ;
 int REG_MDP4_DMA_CURSOR_BASE (int) ;
 int REG_MDP4_DMA_CURSOR_BLEND_CONFIG (int) ;
 int REG_MDP4_DMA_CURSOR_POS (int) ;
 int REG_MDP4_DMA_CURSOR_SIZE (int) ;
 int drm_flip_work_queue (int *,struct drm_gem_object*) ;
 int drm_gem_object_get (struct drm_gem_object*) ;
 struct mdp4_kms* get_kms (struct drm_crtc*) ;
 int mdp4_write (struct mdp4_kms*,int ,int) ;
 int msm_gem_get_and_pin_iova (struct drm_gem_object*,int ,int*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mdp4_crtc* to_mdp4_crtc (struct drm_crtc*) ;

__attribute__((used)) static void update_cursor(struct drm_crtc *crtc)
{
 struct mdp4_crtc *mdp4_crtc = to_mdp4_crtc(crtc);
 struct mdp4_kms *mdp4_kms = get_kms(crtc);
 struct msm_kms *kms = &mdp4_kms->base.base;
 enum mdp4_dma dma = mdp4_crtc->dma;
 unsigned long flags;

 spin_lock_irqsave(&mdp4_crtc->cursor.lock, flags);
 if (mdp4_crtc->cursor.stale) {
  struct drm_gem_object *next_bo = mdp4_crtc->cursor.next_bo;
  struct drm_gem_object *prev_bo = mdp4_crtc->cursor.scanout_bo;
  uint64_t iova = mdp4_crtc->cursor.next_iova;

  if (next_bo) {

   drm_gem_object_get(next_bo);
   msm_gem_get_and_pin_iova(next_bo, kms->aspace, &iova);


   mdp4_write(mdp4_kms, REG_MDP4_DMA_CURSOR_SIZE(dma),
     MDP4_DMA_CURSOR_SIZE_WIDTH(mdp4_crtc->cursor.width) |
     MDP4_DMA_CURSOR_SIZE_HEIGHT(mdp4_crtc->cursor.height));
   mdp4_write(mdp4_kms, REG_MDP4_DMA_CURSOR_BASE(dma), iova);
   mdp4_write(mdp4_kms, REG_MDP4_DMA_CURSOR_BLEND_CONFIG(dma),
     MDP4_DMA_CURSOR_BLEND_CONFIG_FORMAT(CURSOR_ARGB) |
     MDP4_DMA_CURSOR_BLEND_CONFIG_CURSOR_EN);
  } else {

   mdp4_write(mdp4_kms, REG_MDP4_DMA_CURSOR_BASE(dma),
     mdp4_kms->blank_cursor_iova);
  }


  if (prev_bo)
   drm_flip_work_queue(&mdp4_crtc->unref_cursor_work, prev_bo);

  mdp4_crtc->cursor.scanout_bo = next_bo;
  mdp4_crtc->cursor.stale = 0;
 }

 mdp4_write(mdp4_kms, REG_MDP4_DMA_CURSOR_POS(dma),
   MDP4_DMA_CURSOR_POS_X(mdp4_crtc->cursor.x) |
   MDP4_DMA_CURSOR_POS_Y(mdp4_crtc->cursor.y));

 spin_unlock_irqrestore(&mdp4_crtc->cursor.lock, flags);
}
