
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int debugfs_entry; } ;
struct armada_crtc {TYPE_1__ crtc; } ;


 int armada_debugfs_crtc_reg_fops ;
 int debugfs_create_file (char*,int,int ,struct armada_crtc*,int *) ;

void armada_drm_crtc_debugfs_init(struct armada_crtc *dcrtc)
{
 debugfs_create_file("armada-regs", 0600, dcrtc->crtc.debugfs_entry,
       dcrtc, &armada_debugfs_crtc_reg_fops);
}
