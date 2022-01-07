
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_crtc {int debugfs_entry; TYPE_1__* funcs; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int verify_crc_source; int set_crc_source; } ;


 int S_IRUGO ;
 struct dentry* debugfs_create_dir (char*,int ) ;
 int debugfs_create_file (char*,int ,struct dentry*,struct drm_crtc*,int *) ;
 int drm_crtc_crc_control_fops ;
 int drm_crtc_crc_data_fops ;

void drm_debugfs_crtc_crc_add(struct drm_crtc *crtc)
{
 struct dentry *crc_ent;

 if (!crtc->funcs->set_crc_source || !crtc->funcs->verify_crc_source)
  return;

 crc_ent = debugfs_create_dir("crc", crtc->debugfs_entry);

 debugfs_create_file("control", S_IRUGO, crc_ent, crtc,
       &drm_crtc_crc_control_fops);
 debugfs_create_file("data", S_IRUGO, crc_ent, crtc,
       &drm_crtc_crc_data_fops);
}
