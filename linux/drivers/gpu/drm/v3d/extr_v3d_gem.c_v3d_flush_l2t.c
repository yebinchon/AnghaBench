
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v3d_dev {int cache_clean_lock; } ;


 int V3D_CORE_WRITE (int,int ,int) ;
 int V3D_CTL_L2TCACTL ;
 int V3D_L2TCACTL_FLM ;
 int V3D_L2TCACTL_FLM_FLUSH ;
 int V3D_L2TCACTL_L2TFLS ;
 int V3D_SET_FIELD (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
v3d_flush_l2t(struct v3d_dev *v3d, int core)
{







 mutex_lock(&v3d->cache_clean_lock);
 V3D_CORE_WRITE(core, V3D_CTL_L2TCACTL,
         V3D_L2TCACTL_L2TFLS |
         V3D_SET_FIELD(V3D_L2TCACTL_FLM_FLUSH, V3D_L2TCACTL_FLM));
 mutex_unlock(&v3d->cache_clean_lock);
}
