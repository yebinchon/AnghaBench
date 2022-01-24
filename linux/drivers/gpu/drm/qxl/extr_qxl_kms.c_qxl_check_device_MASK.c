#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct qxl_rom {int magic; int /*<<< orphan*/  ram_header_offset; int /*<<< orphan*/  surface0_area_size; int /*<<< orphan*/  draw_area_offset; int /*<<< orphan*/  pages_offset; int /*<<< orphan*/  num_io_pages; int /*<<< orphan*/  log_level; int /*<<< orphan*/  compression_level; int /*<<< orphan*/  update_id; int /*<<< orphan*/  id; } ;
struct qxl_device {int /*<<< orphan*/  vram_size; struct qxl_rom* rom; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static bool FUNC2(struct qxl_device *qdev)
{
	struct qxl_rom *rom = qdev->rom;

	if (rom->magic != 0x4f525851) {
		FUNC0("bad rom signature %x\n", rom->magic);
		return false;
	}

	FUNC1("Device Version %d.%d\n", rom->id, rom->update_id);
	FUNC1("Compression level %d log level %d\n", rom->compression_level,
		 rom->log_level);
	FUNC1("%d io pages at offset 0x%x\n",
		 rom->num_io_pages, rom->pages_offset);
	FUNC1("%d byte draw area at offset 0x%x\n",
		 rom->surface0_area_size, rom->draw_area_offset);

	qdev->vram_size = rom->surface0_area_size;
	FUNC1("RAM header offset: 0x%x\n", rom->ram_header_offset);
	return true;
}