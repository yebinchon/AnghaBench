
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_stats {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int memset (struct drm_stats*,int ,int) ;

__attribute__((used)) static int drm_getstats(struct drm_device *dev, void *data,
   struct drm_file *file_priv)
{
 struct drm_stats *stats = data;


 memset(stats, 0, sizeof(*stats));

 return 0;
}
