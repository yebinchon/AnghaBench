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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct dmz_super {scalar_t__ nr_bitmap_blocks; scalar_t__ nr_map_blocks; scalar_t__ nr_chunks; scalar_t__ nr_reserved_seq; scalar_t__ nr_meta_blocks; scalar_t__ version; scalar_t__ magic; scalar_t__ crc; int /*<<< orphan*/  gen; } ;
struct dmz_metadata {unsigned int nr_rnd_zones; unsigned int nr_useable_zones; unsigned int nr_meta_blocks; unsigned int nr_reserved_seq; unsigned int nr_chunks; unsigned int nr_map_blocks; unsigned int nr_bitmap_blocks; unsigned int nr_meta_zones; unsigned int nr_data_zones; struct dmz_dev* dev; } ;
struct dmz_dev {int zone_nr_blocks; int zone_nr_blocks_shift; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMZ_BLOCK_SIZE ; 
 unsigned int DMZ_MAGIC ; 
 unsigned int DMZ_META_VER ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dmz_dev*,char*,...) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct dmz_metadata *zmd, struct dmz_super *sb)
{
	unsigned int nr_meta_zones, nr_data_zones;
	struct dmz_dev *dev = zmd->dev;
	u32 crc, stored_crc;
	u64 gen;

	gen = FUNC3(sb->gen);
	stored_crc = FUNC2(sb->crc);
	sb->crc = 0;
	crc = FUNC0(gen, (unsigned char *)sb, DMZ_BLOCK_SIZE);
	if (crc != stored_crc) {
		FUNC1(dev, "Invalid checksum (needed 0x%08x, got 0x%08x)",
			    crc, stored_crc);
		return -ENXIO;
	}

	if (FUNC2(sb->magic) != DMZ_MAGIC) {
		FUNC1(dev, "Invalid meta magic (needed 0x%08x, got 0x%08x)",
			    DMZ_MAGIC, FUNC2(sb->magic));
		return -ENXIO;
	}

	if (FUNC2(sb->version) != DMZ_META_VER) {
		FUNC1(dev, "Invalid meta version (needed %d, got %d)",
			    DMZ_META_VER, FUNC2(sb->version));
		return -ENXIO;
	}

	nr_meta_zones = (FUNC2(sb->nr_meta_blocks) + dev->zone_nr_blocks - 1)
		>> dev->zone_nr_blocks_shift;
	if (!nr_meta_zones ||
	    nr_meta_zones >= zmd->nr_rnd_zones) {
		FUNC1(dev, "Invalid number of metadata blocks");
		return -ENXIO;
	}

	if (!FUNC2(sb->nr_reserved_seq) ||
	    FUNC2(sb->nr_reserved_seq) >= (zmd->nr_useable_zones - nr_meta_zones)) {
		FUNC1(dev, "Invalid number of reserved sequential zones");
		return -ENXIO;
	}

	nr_data_zones = zmd->nr_useable_zones -
		(nr_meta_zones * 2 + FUNC2(sb->nr_reserved_seq));
	if (FUNC2(sb->nr_chunks) > nr_data_zones) {
		FUNC1(dev, "Invalid number of chunks %u / %u",
			    FUNC2(sb->nr_chunks), nr_data_zones);
		return -ENXIO;
	}

	/* OK */
	zmd->nr_meta_blocks = FUNC2(sb->nr_meta_blocks);
	zmd->nr_reserved_seq = FUNC2(sb->nr_reserved_seq);
	zmd->nr_chunks = FUNC2(sb->nr_chunks);
	zmd->nr_map_blocks = FUNC2(sb->nr_map_blocks);
	zmd->nr_bitmap_blocks = FUNC2(sb->nr_bitmap_blocks);
	zmd->nr_meta_zones = nr_meta_zones;
	zmd->nr_data_zones = nr_data_zones;

	return 0;
}