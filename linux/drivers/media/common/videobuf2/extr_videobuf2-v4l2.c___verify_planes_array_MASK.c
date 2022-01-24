#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vb2_buffer {scalar_t__ num_planes; } ;
struct TYPE_2__ {int /*<<< orphan*/ * planes; } ;
struct v4l2_buffer {scalar_t__ length; TYPE_1__ m; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ VB2_MAX_PLANES ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 

__attribute__((used)) static int FUNC2(struct vb2_buffer *vb, const struct v4l2_buffer *b)
{
	if (!FUNC0(b->type))
		return 0;

	/* Is memory for copying plane information present? */
	if (b->m.planes == NULL) {
		FUNC1(1, "multi-planar buffer passed but planes array not provided\n");
		return -EINVAL;
	}

	if (b->length < vb->num_planes || b->length > VB2_MAX_PLANES) {
		FUNC1(1, "incorrect planes array length, expected %d, got %d\n",
			vb->num_planes, b->length);
		return -EINVAL;
	}

	return 0;
}