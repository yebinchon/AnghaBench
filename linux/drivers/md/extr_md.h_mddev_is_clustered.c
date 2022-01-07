
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nodes; } ;
struct mddev {TYPE_1__ bitmap_info; scalar_t__ cluster_info; } ;



__attribute__((used)) static inline int mddev_is_clustered(struct mddev *mddev)
{
 return mddev->cluster_info && mddev->bitmap_info.nodes > 1;
}
