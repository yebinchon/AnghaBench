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
struct v4l2_requestbuffers {int /*<<< orphan*/  count; int /*<<< orphan*/  memory; int /*<<< orphan*/  capabilities; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vb2_queue*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct vb2_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct vb2_queue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct vb2_queue *q, struct v4l2_requestbuffers *req)
{
	int ret = FUNC2(q, req->memory, req->type);

	FUNC0(q, &req->capabilities);
	return ret ? ret : FUNC1(q, req->memory, &req->count);
}