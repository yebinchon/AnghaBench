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
typedef  int u16 ;
struct sec4_sg_entry {void* bpid_offset; void* len; int /*<<< orphan*/  ptr; } ;
struct dpaa2_sg_entry {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_ADDRESS ; 
 int SEC4_SG_OFFSET_MASK ; 
 scalar_t__ caam_dpaa2 ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dpaa2_sg_entry*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,int,struct sec4_sg_entry*,int,int) ; 

__attribute__((used)) static inline void FUNC4(struct sec4_sg_entry *sec4_sg_ptr,
				      dma_addr_t dma, u32 len, u16 offset)
{
	if (caam_dpaa2) {
		FUNC2((struct dpaa2_sg_entry *)sec4_sg_ptr, dma, len,
				 offset);
	} else {
		sec4_sg_ptr->ptr = FUNC1(dma);
		sec4_sg_ptr->len = FUNC0(len);
		sec4_sg_ptr->bpid_offset = FUNC0(offset &
							 SEC4_SG_OFFSET_MASK);
	}

	FUNC3("sec4_sg_ptr@: ", DUMP_PREFIX_ADDRESS, 16, 4,
			     sec4_sg_ptr, sizeof(struct sec4_sg_entry), 1);
}