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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct dpaa2_sg_entry {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpaa2_sg_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dpaa2_sg_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dpaa2_sg_entry*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dpaa2_sg_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dpaa2_sg_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dpaa2_sg_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dpaa2_sg_single ; 

__attribute__((used)) static inline void FUNC6(struct dpaa2_sg_entry *qm_sg_ptr,
				    dma_addr_t dma, u32 len, u16 offset)
{
	FUNC0(qm_sg_ptr, dma);
	FUNC3(qm_sg_ptr, dpaa2_sg_single);
	FUNC2(qm_sg_ptr, false);
	FUNC4(qm_sg_ptr, len);
	FUNC1(qm_sg_ptr, 0);
	FUNC5(qm_sg_ptr, offset);
}