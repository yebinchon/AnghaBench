
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdi_device {int output; } ;


 int omapdss_device_cleanup_output (int *) ;
 int omapdss_device_unregister (int *) ;

__attribute__((used)) static void sdi_uninit_output(struct sdi_device *sdi)
{
 omapdss_device_unregister(&sdi->output);
 omapdss_device_cleanup_output(&sdi->output);
}
