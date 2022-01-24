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
struct v4l2_buffer {int /*<<< orphan*/  index; } ;
struct media_request {int dummy; } ;
struct media_device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct media_request*) ; 
 int FUNC2 (struct vb2_queue*,int /*<<< orphan*/ ,struct v4l2_buffer*,struct media_request*) ; 
 scalar_t__ FUNC3 (struct vb2_queue*) ; 
 int FUNC4 (struct vb2_queue*,struct media_device*,struct v4l2_buffer*,int,struct media_request**) ; 

int FUNC5(struct vb2_queue *q, struct media_device *mdev,
	     struct v4l2_buffer *b)
{
	struct media_request *req = NULL;
	int ret;

	if (FUNC3(q)) {
		FUNC0(1, "file io in progress\n");
		return -EBUSY;
	}

	ret = FUNC4(q, mdev, b, false, &req);
	if (ret)
		return ret;
	ret = FUNC2(q, b->index, b, req);
	if (req)
		FUNC1(req);
	return ret;
}