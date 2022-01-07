
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {struct drm_crtc* i_private; } ;
struct file {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int crc_control_show ;
 int single_open (struct file*,int ,struct drm_crtc*) ;

__attribute__((used)) static int crc_control_open(struct inode *inode, struct file *file)
{
 struct drm_crtc *crtc = inode->i_private;

 return single_open(file, crc_control_show, crtc);
}
