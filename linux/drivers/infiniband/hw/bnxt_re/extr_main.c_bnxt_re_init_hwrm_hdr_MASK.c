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
typedef  int /*<<< orphan*/  u16 ;
struct input {void* target_id; void* cmpl_ring; void* req_type; } ;
struct bnxt_re_dev {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct bnxt_re_dev *rdev, struct input *hdr,
				  u16 opcd, u16 crid, u16 trid)
{
	hdr->req_type = FUNC0(opcd);
	hdr->cmpl_ring = FUNC0(crid);
	hdr->target_id = FUNC0(trid);
}