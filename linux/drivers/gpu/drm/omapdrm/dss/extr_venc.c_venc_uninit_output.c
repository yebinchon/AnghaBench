
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venc_device {int output; } ;


 int omapdss_device_cleanup_output (int *) ;
 int omapdss_device_unregister (int *) ;

__attribute__((used)) static void venc_uninit_output(struct venc_device *venc)
{
 omapdss_device_unregister(&venc->output);
 omapdss_device_cleanup_output(&venc->output);
}
