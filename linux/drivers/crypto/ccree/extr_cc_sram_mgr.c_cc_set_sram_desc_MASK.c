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
typedef  unsigned int u32 ;
struct cc_hw_desc {int dummy; } ;
typedef  scalar_t__ cc_sram_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BYPASS ; 
 int /*<<< orphan*/  FUNC0 (struct cc_hw_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct cc_hw_desc*,unsigned int const,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cc_hw_desc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cc_hw_desc*,int /*<<< orphan*/ ) ; 

void FUNC4(const u32 *src, cc_sram_addr_t dst,
		      unsigned int nelement, struct cc_hw_desc *seq,
		      unsigned int *seq_len)
{
	u32 i;
	unsigned int idx = *seq_len;

	for (i = 0; i < nelement; i++, idx++) {
		FUNC0(&seq[idx]);
		FUNC1(&seq[idx], src[i], sizeof(u32));
		FUNC2(&seq[idx], dst + (i * sizeof(u32)), sizeof(u32));
		FUNC3(&seq[idx], BYPASS);
	}

	*seq_len = idx;
}