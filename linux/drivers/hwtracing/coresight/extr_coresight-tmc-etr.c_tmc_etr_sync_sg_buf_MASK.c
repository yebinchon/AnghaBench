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
struct tmc_sg_table {int /*<<< orphan*/  dev; } ;
struct etr_sg_table {struct tmc_sg_table* sg_table; } ;
struct etr_buf {long len; long offset; long size; scalar_t__ full; struct etr_sg_table* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 long FUNC1 (struct tmc_sg_table*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tmc_sg_table*,long,long) ; 

__attribute__((used)) static void FUNC3(struct etr_buf *etr_buf, u64 rrp, u64 rwp)
{
	long r_offset, w_offset;
	struct etr_sg_table *etr_table = etr_buf->private;
	struct tmc_sg_table *table = etr_table->sg_table;

	/* Convert hw address to offset in the buffer */
	r_offset = FUNC1(table, rrp);
	if (r_offset < 0) {
		FUNC0(table->dev,
			 "Unable to map RRP %llx to offset\n", rrp);
		etr_buf->len = 0;
		return;
	}

	w_offset = FUNC1(table, rwp);
	if (w_offset < 0) {
		FUNC0(table->dev,
			 "Unable to map RWP %llx to offset\n", rwp);
		etr_buf->len = 0;
		return;
	}

	etr_buf->offset = r_offset;
	if (etr_buf->full)
		etr_buf->len = etr_buf->size;
	else
		etr_buf->len = ((w_offset < r_offset) ? etr_buf->size : 0) +
				w_offset - r_offset;
	FUNC2(table, r_offset, etr_buf->len);
}