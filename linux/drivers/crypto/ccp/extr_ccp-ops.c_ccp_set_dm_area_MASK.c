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
struct scatterlist {int dummy; } ;
struct ccp_dm_workarea {unsigned int length; scalar_t__ address; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct scatterlist*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ccp_dm_workarea *wa, unsigned int wa_offset,
			   struct scatterlist *sg, unsigned int sg_offset,
			   unsigned int len)
{
	FUNC0(!wa->address);

	if (len > (wa->length - wa_offset))
		return -EINVAL;

	FUNC1(wa->address + wa_offset, sg, sg_offset, len,
				 0);
	return 0;
}