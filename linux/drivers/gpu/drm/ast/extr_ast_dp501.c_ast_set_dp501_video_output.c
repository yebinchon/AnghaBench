
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_device {int dummy; } ;


 int ast_write_cmd (struct drm_device*,int) ;
 int ast_write_data (struct drm_device*,int ) ;
 int msleep (int) ;

void ast_set_dp501_video_output(struct drm_device *dev, u8 mode)
{
 ast_write_cmd(dev, 0x40);
 ast_write_data(dev, mode);

 msleep(10);
}
