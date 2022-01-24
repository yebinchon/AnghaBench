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
struct iommu_cmd {int dummy; } ;
struct amd_iommu {int cmd_buf_tail; int cmd_buf_head; int need_sync; scalar_t__ mmio_base; } ;

/* Variables and functions */
 int CMD_BUFFER_SIZE ; 
 int EIO ; 
 unsigned int LOOP_TIMEOUT ; 
 scalar_t__ MMIO_CMD_HEAD_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct amd_iommu*,struct iommu_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct amd_iommu *iommu,
				      struct iommu_cmd *cmd,
				      bool sync)
{
	unsigned int count = 0;
	u32 left, next_tail;

	next_tail = (iommu->cmd_buf_tail + sizeof(*cmd)) % CMD_BUFFER_SIZE;
again:
	left      = (iommu->cmd_buf_head - next_tail) % CMD_BUFFER_SIZE;

	if (left <= 0x20) {
		/* Skip udelay() the first time around */
		if (count++) {
			if (count == LOOP_TIMEOUT) {
				FUNC1("Command buffer timeout\n");
				return -EIO;
			}

			FUNC3(1);
		}

		/* Update head and recheck remaining space */
		iommu->cmd_buf_head = FUNC2(iommu->mmio_base +
					    MMIO_CMD_HEAD_OFFSET);

		goto again;
	}

	FUNC0(iommu, cmd);

	/* Do we need to make sure all commands are processed? */
	iommu->need_sync = sync;

	return 0;
}