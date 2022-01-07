
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int x; int y; int lock; } ;
struct mdp4_crtc {TYPE_1__ cursor; } ;
struct drm_crtc {int dummy; } ;


 int PENDING_CURSOR ;
 int crtc_flush (struct drm_crtc*) ;
 int request_pending (struct drm_crtc*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct mdp4_crtc* to_mdp4_crtc (struct drm_crtc*) ;

__attribute__((used)) static int mdp4_crtc_cursor_move(struct drm_crtc *crtc, int x, int y)
{
 struct mdp4_crtc *mdp4_crtc = to_mdp4_crtc(crtc);
 unsigned long flags;

 spin_lock_irqsave(&mdp4_crtc->cursor.lock, flags);
 mdp4_crtc->cursor.x = x;
 mdp4_crtc->cursor.y = y;
 spin_unlock_irqrestore(&mdp4_crtc->cursor.lock, flags);

 crtc_flush(crtc);
 request_pending(crtc, PENDING_CURSOR);

 return 0;
}
