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
typedef  int /*<<< orphan*/  u16 ;
struct qm_sg_entry {int /*<<< orphan*/  cfg; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int QM_SG_EXT ; 
 int QM_SG_FIN ; 
 int QM_SG_LEN_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct qm_sg_entry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static inline void FUNC2(struct qm_sg_entry *qm_sg_ptr,
					     dma_addr_t dma, u32 len,
					     u16 offset)
{
	FUNC0(qm_sg_ptr, dma, offset);
	qm_sg_ptr->cfg = FUNC1(QM_SG_EXT | QM_SG_FIN |
				     (len & QM_SG_LEN_MASK));
}