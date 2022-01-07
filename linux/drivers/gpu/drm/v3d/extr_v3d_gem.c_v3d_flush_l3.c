
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v3d_dev {int ver; } ;


 int V3D_GCA_CACHE_CTRL ;
 int V3D_GCA_CACHE_CTRL_FLUSH ;
 int V3D_GCA_READ (int ) ;
 int V3D_GCA_WRITE (int ,int) ;

__attribute__((used)) static void
v3d_flush_l3(struct v3d_dev *v3d)
{
 if (v3d->ver < 41) {
  u32 gca_ctrl = V3D_GCA_READ(V3D_GCA_CACHE_CTRL);

  V3D_GCA_WRITE(V3D_GCA_CACHE_CTRL,
         gca_ctrl | V3D_GCA_CACHE_CTRL_FLUSH);

  if (v3d->ver < 33) {
   V3D_GCA_WRITE(V3D_GCA_CACHE_CTRL,
          gca_ctrl & ~V3D_GCA_CACHE_CTRL_FLUSH);
  }
 }
}
