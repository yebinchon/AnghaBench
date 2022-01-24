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
struct vb2_plane {scalar_t__ bytesused; } ;
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;
struct dvb_vb2_ctx {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 struct dvb_vb2_ctx* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct vb2_buffer *vb, struct vb2_plane *planes)
{
	struct dvb_vb2_ctx *ctx = FUNC1(vb->vb2_queue);

	planes[0].bytesused = 0;
	FUNC0(3, "[%s]\n", ctx->name);

	return 0;
}