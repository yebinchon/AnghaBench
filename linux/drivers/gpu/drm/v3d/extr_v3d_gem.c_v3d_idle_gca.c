
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v3d_dev {int ver; } ;


 int DRM_ERROR (char*) ;
 int V3D_GCA_READ (int ) ;
 int V3D_GCA_SAFE_SHUTDOWN ;
 int V3D_GCA_SAFE_SHUTDOWN_ACK ;
 int V3D_GCA_SAFE_SHUTDOWN_ACK_ACKED ;
 int V3D_GCA_SAFE_SHUTDOWN_EN ;
 int V3D_GCA_WRITE (int ,int ) ;
 scalar_t__ wait_for (int,int) ;

__attribute__((used)) static void
v3d_idle_gca(struct v3d_dev *v3d)
{
 if (v3d->ver >= 41)
  return;

 V3D_GCA_WRITE(V3D_GCA_SAFE_SHUTDOWN, V3D_GCA_SAFE_SHUTDOWN_EN);

 if (wait_for((V3D_GCA_READ(V3D_GCA_SAFE_SHUTDOWN_ACK) &
        V3D_GCA_SAFE_SHUTDOWN_ACK_ACKED) ==
       V3D_GCA_SAFE_SHUTDOWN_ACK_ACKED, 100)) {
  DRM_ERROR("Failed to wait for safe GCA shutdown\n");
 }
}
