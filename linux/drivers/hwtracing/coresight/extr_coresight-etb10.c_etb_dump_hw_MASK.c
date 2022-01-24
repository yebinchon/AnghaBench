#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct etb_drvdata {int buffer_depth; scalar_t__ base; int /*<<< orphan*/ * buf; TYPE_1__* csdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int ETB_FRAME_SIZE_WORDS ; 
 scalar_t__ ETB_RAM_READ_DATA_REG ; 
 scalar_t__ ETB_RAM_READ_POINTER ; 
 scalar_t__ ETB_RAM_WRITE_POINTER ; 
 int ETB_STATUS_RAM_FULL ; 
 scalar_t__ ETB_STATUS_REG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,unsigned long,...) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct etb_drvdata *drvdata)
{
	bool lost = false;
	int i;
	u8 *buf_ptr;
	u32 read_data, depth;
	u32 read_ptr, write_ptr;
	u32 frame_off, frame_endoff;
	struct device *dev = &drvdata->csdev->dev;

	FUNC1(drvdata->base);

	read_ptr = FUNC4(drvdata->base + ETB_RAM_READ_POINTER);
	write_ptr = FUNC4(drvdata->base + ETB_RAM_WRITE_POINTER);

	frame_off = write_ptr % ETB_FRAME_SIZE_WORDS;
	frame_endoff = ETB_FRAME_SIZE_WORDS - frame_off;
	if (frame_off) {
		FUNC3(dev,
			"write_ptr: %lu not aligned to formatter frame size\n",
			(unsigned long)write_ptr);
		FUNC3(dev, "frameoff: %lu, frame_endoff: %lu\n",
			(unsigned long)frame_off, (unsigned long)frame_endoff);
		write_ptr += frame_endoff;
	}

	if ((FUNC4(drvdata->base + ETB_STATUS_REG)
		      & ETB_STATUS_RAM_FULL) == 0) {
		FUNC5(0x0, drvdata->base + ETB_RAM_READ_POINTER);
	} else {
		FUNC5(write_ptr, drvdata->base + ETB_RAM_READ_POINTER);
		lost = true;
	}

	depth = drvdata->buffer_depth;
	buf_ptr = drvdata->buf;
	for (i = 0; i < depth; i++) {
		read_data = FUNC4(drvdata->base +
					  ETB_RAM_READ_DATA_REG);
		*(u32 *)buf_ptr = read_data;
		buf_ptr += 4;
	}

	if (lost)
		FUNC2(drvdata->buf);

	if (frame_off) {
		buf_ptr -= (frame_endoff * 4);
		for (i = 0; i < frame_endoff; i++) {
			*buf_ptr++ = 0x0;
			*buf_ptr++ = 0x0;
			*buf_ptr++ = 0x0;
			*buf_ptr++ = 0x0;
		}
	}

	FUNC5(read_ptr, drvdata->base + ETB_RAM_READ_POINTER);

	FUNC0(drvdata->base);
}