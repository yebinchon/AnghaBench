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
struct vb2_buffer {int /*<<< orphan*/  vb2_queue; } ;
struct sur40_state {int /*<<< orphan*/  qlock; int /*<<< orphan*/  buf_list; } ;
struct sur40_buffer {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct sur40_state* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct vb2_buffer *vb)
{
	struct sur40_state *sur40 = FUNC3(vb->vb2_queue);
	struct sur40_buffer *buf = (struct sur40_buffer *)vb;

	FUNC1(&sur40->qlock);
	FUNC0(&buf->list, &sur40->buf_list);
	FUNC2(&sur40->qlock);
}