
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_drm_priv {int dummy; } ;
struct drm_file {struct lima_drm_priv* driver_priv; } ;



__attribute__((used)) static inline struct lima_drm_priv *
to_lima_drm_priv(struct drm_file *file)
{
 return file->driver_priv;
}
