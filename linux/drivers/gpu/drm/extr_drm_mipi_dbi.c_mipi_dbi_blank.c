
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct mipi_dbi {int dummy; } ;
struct TYPE_2__ {int min_height; int min_width; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct mipi_dbi_dev {scalar_t__ tx_buf; struct mipi_dbi dbi; struct drm_device drm; } ;


 int MIPI_DCS_SET_COLUMN_ADDRESS ;
 int MIPI_DCS_SET_PAGE_ADDRESS ;
 int MIPI_DCS_WRITE_MEMORY_START ;
 int drm_dev_enter (struct drm_device*,int*) ;
 int drm_dev_exit (int) ;
 int memset (scalar_t__,int ,size_t) ;
 int mipi_dbi_command (struct mipi_dbi*,int ,int ,int ,int,int) ;
 int mipi_dbi_command_buf (struct mipi_dbi*,int ,int *,size_t) ;

__attribute__((used)) static void mipi_dbi_blank(struct mipi_dbi_dev *dbidev)
{
 struct drm_device *drm = &dbidev->drm;
 u16 height = drm->mode_config.min_height;
 u16 width = drm->mode_config.min_width;
 struct mipi_dbi *dbi = &dbidev->dbi;
 size_t len = width * height * 2;
 int idx;

 if (!drm_dev_enter(drm, &idx))
  return;

 memset(dbidev->tx_buf, 0, len);

 mipi_dbi_command(dbi, MIPI_DCS_SET_COLUMN_ADDRESS, 0, 0,
    (width >> 8) & 0xFF, (width - 1) & 0xFF);
 mipi_dbi_command(dbi, MIPI_DCS_SET_PAGE_ADDRESS, 0, 0,
    (height >> 8) & 0xFF, (height - 1) & 0xFF);
 mipi_dbi_command_buf(dbi, MIPI_DCS_WRITE_MEMORY_START,
        (u8 *)dbidev->tx_buf, len);

 drm_dev_exit(idx);
}
