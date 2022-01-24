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
struct vb2_queue {int dummy; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (struct vb2_queue*,int) ; 
 scalar_t__ FUNC2 (struct vb2_queue*) ; 

int FUNC3(struct vb2_queue *q, enum v4l2_buf_type type)
{
	if (FUNC2(q)) {
		FUNC0(1, "file io in progress\n");
		return -EBUSY;
	}
	return FUNC1(q, type);
}