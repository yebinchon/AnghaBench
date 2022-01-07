
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_compositor {scalar_t__* mixer; scalar_t__* vid; } ;
struct drm_minor {int dummy; } ;


 unsigned int STI_MAX_MIXER ;
 unsigned int STI_MAX_VID ;
 int sti_mixer_debugfs_init (scalar_t__,struct drm_minor*) ;
 int vid_debugfs_init (scalar_t__,struct drm_minor*) ;

int sti_compositor_debugfs_init(struct sti_compositor *compo,
    struct drm_minor *minor)
{
 unsigned int i;

 for (i = 0; i < STI_MAX_VID; i++)
  if (compo->vid[i])
   vid_debugfs_init(compo->vid[i], minor);

 for (i = 0; i < STI_MAX_MIXER; i++)
  if (compo->mixer[i])
   sti_mixer_debugfs_init(compo->mixer[i], minor);

 return 0;
}
