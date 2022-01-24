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
struct vb2_buffer {int /*<<< orphan*/  planes; int /*<<< orphan*/  vb2_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  buf_prepare ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vb2_buffer*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vb2_buffer*,int /*<<< orphan*/ ,struct vb2_buffer*) ; 
 int /*<<< orphan*/  fill_vb2_buffer ; 

__attribute__((used)) static int FUNC2(struct vb2_buffer *vb)
{
	int ret = 0;

	ret = FUNC0(vb->vb2_queue, fill_vb2_buffer,
			 vb, vb->planes);
	return ret ? ret : FUNC1(vb, buf_prepare, vb);
}