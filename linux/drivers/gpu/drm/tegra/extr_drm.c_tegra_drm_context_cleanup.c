
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_drm_context {int dummy; } ;


 int tegra_drm_context_free (struct tegra_drm_context*) ;

__attribute__((used)) static int tegra_drm_context_cleanup(int id, void *p, void *data)
{
 struct tegra_drm_context *context = p;

 tegra_drm_context_free(context);

 return 0;
}
