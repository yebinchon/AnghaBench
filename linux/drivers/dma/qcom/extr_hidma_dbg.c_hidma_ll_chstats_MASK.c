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
typedef  int u64 ;
typedef  size_t u32 ;
struct seq_file {int dummy; } ;
struct hidma_tre {size_t queued; size_t err_info; size_t err_code; size_t status; size_t idx; size_t dma_sig; size_t dev_name; size_t callback; size_t data; size_t tre_index; size_t* tre_local; int /*<<< orphan*/  allocated; } ;
struct hidma_lldev {size_t nr_tres; struct hidma_tre* trepool; int /*<<< orphan*/  dev; } ;
typedef  size_t dma_addr_t ;

/* Variables and functions */
 size_t HIDMA_TRE_DEST_HI_IDX ; 
 size_t HIDMA_TRE_DEST_LOW_IDX ; 
 size_t HIDMA_TRE_LEN_IDX ; 
 size_t HIDMA_TRE_SRC_HI_IDX ; 
 size_t HIDMA_TRE_SRC_LOW_IDX ; 
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,...) ; 

__attribute__((used)) static void FUNC3(struct seq_file *s, void *llhndl, u32 tre_ch)
{
	struct hidma_lldev *lldev = llhndl;
	struct hidma_tre *tre;
	u32 length;
	dma_addr_t src_start;
	dma_addr_t dest_start;
	u32 *tre_local;

	if (tre_ch >= lldev->nr_tres) {
		FUNC1(lldev->dev, "invalid TRE number in chstats:%d", tre_ch);
		return;
	}
	tre = &lldev->trepool[tre_ch];
	FUNC2(s, "------Channel %d -----\n", tre_ch);
	FUNC2(s, "allocated=%d\n", FUNC0(&tre->allocated));
	FUNC2(s, "queued = 0x%x\n", tre->queued);
	FUNC2(s, "err_info = 0x%x\n", tre->err_info);
	FUNC2(s, "err_code = 0x%x\n", tre->err_code);
	FUNC2(s, "status = 0x%x\n", tre->status);
	FUNC2(s, "idx = 0x%x\n", tre->idx);
	FUNC2(s, "dma_sig = 0x%x\n", tre->dma_sig);
	FUNC2(s, "dev_name=%s\n", tre->dev_name);
	FUNC2(s, "callback=%p\n", tre->callback);
	FUNC2(s, "data=%p\n", tre->data);
	FUNC2(s, "tre_index = 0x%x\n", tre->tre_index);

	tre_local = &tre->tre_local[0];
	src_start = tre_local[HIDMA_TRE_SRC_LOW_IDX];
	src_start = ((u64) (tre_local[HIDMA_TRE_SRC_HI_IDX]) << 32) + src_start;
	dest_start = tre_local[HIDMA_TRE_DEST_LOW_IDX];
	dest_start += ((u64) (tre_local[HIDMA_TRE_DEST_HI_IDX]) << 32);
	length = tre_local[HIDMA_TRE_LEN_IDX];

	FUNC2(s, "src=%pap\n", &src_start);
	FUNC2(s, "dest=%pap\n", &dest_start);
	FUNC2(s, "length = 0x%x\n", length);
}