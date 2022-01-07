
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qxl_rom {int magic; int ram_header_offset; int surface0_area_size; int draw_area_offset; int pages_offset; int num_io_pages; int log_level; int compression_level; int update_id; int id; } ;
struct qxl_device {int vram_size; struct qxl_rom* rom; } ;


 int DRM_ERROR (char*,int) ;
 int DRM_INFO (char*,int ,...) ;

__attribute__((used)) static bool qxl_check_device(struct qxl_device *qdev)
{
 struct qxl_rom *rom = qdev->rom;

 if (rom->magic != 0x4f525851) {
  DRM_ERROR("bad rom signature %x\n", rom->magic);
  return 0;
 }

 DRM_INFO("Device Version %d.%d\n", rom->id, rom->update_id);
 DRM_INFO("Compression level %d log level %d\n", rom->compression_level,
   rom->log_level);
 DRM_INFO("%d io pages at offset 0x%x\n",
   rom->num_io_pages, rom->pages_offset);
 DRM_INFO("%d byte draw area at offset 0x%x\n",
   rom->surface0_area_size, rom->draw_area_offset);

 qdev->vram_size = rom->surface0_area_size;
 DRM_INFO("RAM header offset: 0x%x\n", rom->ram_header_offset);
 return 1;
}
