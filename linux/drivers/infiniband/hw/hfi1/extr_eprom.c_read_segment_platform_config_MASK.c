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
typedef  int u32 ;
struct hfi1_eprom_table_entry {scalar_t__ type; int size; int offset; } ;
struct hfi1_eprom_footer {scalar_t__ version; int oprom_size; int num_table_entries; } ;
struct hfi1_devdata {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EP_PAGE_SIZE ; 
 scalar_t__ FOOTER_VERSION ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HFI1_EFT_PLATFORM_CONFIG ; 
 int FUNC1 (int) ; 
 int SEG_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct hfi1_devdata*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct hfi1_devdata*,int,int,void*) ; 

__attribute__((used)) static int FUNC6(struct hfi1_devdata *dd,
					void *directory, void **data, u32 *size)
{
	struct hfi1_eprom_footer *footer;
	struct hfi1_eprom_table_entry *table;
	struct hfi1_eprom_table_entry *entry;
	void *buffer = NULL;
	void *table_buffer = NULL;
	int ret, i;
	u32 directory_size;
	u32 seg_base, seg_offset;
	u32 bytes_available, ncopied, to_copy;

	/* the footer is at the end of the directory */
	footer = (struct hfi1_eprom_footer *)
			(directory + EP_PAGE_SIZE - sizeof(*footer));

	/* make sure the structure version is supported */
	if (footer->version != FOOTER_VERSION)
		return -EINVAL;

	/* oprom size cannot be larger than a segment */
	if (footer->oprom_size >= SEG_SIZE)
		return -EINVAL;

	/* the file table must fit in a segment with the oprom */
	if (footer->num_table_entries >
			FUNC1(SEG_SIZE - footer->oprom_size))
		return -EINVAL;

	/* find the file table start, which precedes the footer */
	directory_size = FUNC0(footer->num_table_entries);
	if (directory_size <= EP_PAGE_SIZE) {
		/* the file table fits into the directory buffer handed in */
		table = (struct hfi1_eprom_table_entry *)
				(directory + EP_PAGE_SIZE - directory_size);
	} else {
		/* need to allocate and read more */
		table_buffer = FUNC4(directory_size, GFP_KERNEL);
		if (!table_buffer)
			return -ENOMEM;
		ret = FUNC5(dd, SEG_SIZE - directory_size,
				  directory_size, table_buffer);
		if (ret)
			goto done;
		table = table_buffer;
	}

	/* look for the platform configuration file in the table */
	for (entry = NULL, i = 0; i < footer->num_table_entries; i++) {
		if (table[i].type == HFI1_EFT_PLATFORM_CONFIG) {
			entry = &table[i];
			break;
		}
	}
	if (!entry) {
		ret = -ENOENT;
		goto done;
	}

	/*
	 * Sanity check on the configuration file size - it should never
	 * be larger than 4 KiB.
	 */
	if (entry->size > (4 * 1024)) {
		FUNC2(dd, "Bad configuration file size 0x%x\n",
			   entry->size);
		ret = -EINVAL;
		goto done;
	}

	/* check for bogus offset and size that wrap when added together */
	if (entry->offset + entry->size < entry->offset) {
		FUNC2(dd,
			   "Bad configuration file start + size 0x%x+0x%x\n",
			   entry->offset, entry->size);
		ret = -EINVAL;
		goto done;
	}

	/* allocate the buffer to return */
	buffer = FUNC4(entry->size, GFP_KERNEL);
	if (!buffer) {
		ret = -ENOMEM;
		goto done;
	}

	/*
	 * Extract the file by looping over segments until it is fully read.
	 */
	seg_offset = entry->offset % SEG_SIZE;
	seg_base = entry->offset - seg_offset;
	ncopied = 0;
	while (ncopied < entry->size) {
		/* calculate data bytes available in this segment */

		/* start with the bytes from the current offset to the end */
		bytes_available = SEG_SIZE - seg_offset;
		/* subtract off footer and table from segment 0 */
		if (seg_base == 0) {
			/*
			 * Sanity check: should not have a starting point
			 * at or within the directory.
			 */
			if (bytes_available <= directory_size) {
				FUNC2(dd,
					   "Bad configuration file - offset 0x%x within footer+table\n",
					   entry->offset);
				ret = -EINVAL;
				goto done;
			}
			bytes_available -= directory_size;
		}

		/* calculate bytes wanted */
		to_copy = entry->size - ncopied;

		/* max out at the available bytes in this segment */
		if (to_copy > bytes_available)
			to_copy = bytes_available;

		/*
		 * Read from the EPROM.
		 *
		 * The sanity check for entry->offset is done in read_length().
		 * The EPROM offset is validated against what the hardware
		 * addressing supports.  In addition, if the offset is larger
		 * than the actual EPROM, it silently wraps.  It will work
		 * fine, though the reader may not get what they expected
		 * from the EPROM.
		 */
		ret = FUNC5(dd, seg_base + seg_offset, to_copy,
				  buffer + ncopied);
		if (ret)
			goto done;

		ncopied += to_copy;

		/* set up for next segment */
		seg_offset = footer->oprom_size;
		seg_base += SEG_SIZE;
	}

	/* success */
	ret = 0;
	*data = buffer;
	*size = entry->size;

done:
	FUNC3(table_buffer);
	if (ret)
		FUNC3(buffer);
	return ret;
}