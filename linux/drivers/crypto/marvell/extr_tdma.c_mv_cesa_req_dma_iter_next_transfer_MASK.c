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
struct mv_cesa_sg_dma_iter {scalar_t__ op_offset; scalar_t__ offset; scalar_t__ sg; } ;
struct mv_cesa_dma_iter {scalar_t__ op_len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

bool FUNC3(struct mv_cesa_dma_iter *iter,
					struct mv_cesa_sg_dma_iter *sgiter,
					unsigned int len)
{
	if (!sgiter->sg)
		return false;

	sgiter->op_offset += len;
	sgiter->offset += len;
	if (sgiter->offset == FUNC0(sgiter->sg)) {
		if (FUNC1(sgiter->sg))
			return false;
		sgiter->offset = 0;
		sgiter->sg = FUNC2(sgiter->sg);
	}

	if (sgiter->op_offset == iter->op_len)
		return false;

	return true;
}