
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_commit {struct drm_crtc* crtc; int ref; int commit_entry; int cleanup_done; int hw_done; int flip_done; } ;
struct drm_crtc {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int init_completion (int *) ;
 int kref_init (int *) ;

__attribute__((used)) static void init_commit(struct drm_crtc_commit *commit, struct drm_crtc *crtc)
{
 init_completion(&commit->flip_done);
 init_completion(&commit->hw_done);
 init_completion(&commit->cleanup_done);
 INIT_LIST_HEAD(&commit->commit_entry);
 kref_init(&commit->ref);
 commit->crtc = crtc;
}
