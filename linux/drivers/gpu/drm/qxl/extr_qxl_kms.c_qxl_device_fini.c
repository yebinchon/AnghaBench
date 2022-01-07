
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_device {int * rom; int * ram_header; int vram_mapping; int surface_mapping; int release_ring; int cursor_ring; int command_ring; int gc_work; int * current_release_bo; } ;


 int flush_work (int *) ;
 int io_mapping_free (int ) ;
 int iounmap (int *) ;
 int qxl_bo_fini (struct qxl_device*) ;
 int qxl_bo_unref (int *) ;
 int qxl_gem_fini (struct qxl_device*) ;
 int qxl_ring_free (int ) ;

void qxl_device_fini(struct qxl_device *qdev)
{
 qxl_bo_unref(&qdev->current_release_bo[0]);
 qxl_bo_unref(&qdev->current_release_bo[1]);
 flush_work(&qdev->gc_work);
 qxl_ring_free(qdev->command_ring);
 qxl_ring_free(qdev->cursor_ring);
 qxl_ring_free(qdev->release_ring);
 qxl_gem_fini(qdev);
 qxl_bo_fini(qdev);
 io_mapping_free(qdev->surface_mapping);
 io_mapping_free(qdev->vram_mapping);
 iounmap(qdev->ram_header);
 iounmap(qdev->rom);
 qdev->rom = ((void*)0);
}
