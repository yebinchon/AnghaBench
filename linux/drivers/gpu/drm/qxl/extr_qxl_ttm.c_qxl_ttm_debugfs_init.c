
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* man; } ;
struct TYPE_6__ {TYPE_2__ bdev; } ;
struct qxl_device {TYPE_3__ mman; } ;
struct drm_info_list {char* name; int data; scalar_t__ driver_features; int * show; } ;
struct TYPE_4__ {int priv; } ;


 int QXL_DEBUGFS_MEM_TYPES ;
 size_t TTM_PL_PRIV ;
 size_t TTM_PL_VRAM ;
 int qxl_debugfs_add_files (struct qxl_device*,struct drm_info_list*,unsigned int) ;
 int qxl_mm_dump_table ;
 int sprintf (char*,char*) ;

int qxl_ttm_debugfs_init(struct qxl_device *qdev)
{
 return 0;

}
