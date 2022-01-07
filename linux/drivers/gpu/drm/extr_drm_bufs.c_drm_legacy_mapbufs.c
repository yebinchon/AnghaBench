
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_buf_map {int virtual; int count; } ;


 int __drm_legacy_mapbufs (struct drm_device*,void*,int *,int *,int ,struct drm_file*) ;
 int map_one_buf ;

int drm_legacy_mapbufs(struct drm_device *dev, void *data,
         struct drm_file *file_priv)
{
 struct drm_buf_map *request = data;
 return __drm_legacy_mapbufs(dev, data, &request->count,
        &request->virtual, map_one_buf,
        file_priv);
}
