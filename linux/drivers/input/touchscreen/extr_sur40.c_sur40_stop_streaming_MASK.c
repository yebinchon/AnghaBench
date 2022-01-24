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
struct sur40_state {int sequence; } ;

/* Variables and functions */
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct sur40_state*,int /*<<< orphan*/ ) ; 
 struct sur40_state* FUNC1 (struct vb2_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct vb2_queue*) ; 

__attribute__((used)) static void FUNC3(struct vb2_queue *vq)
{
	struct sur40_state *sur40 = FUNC1(vq);
	FUNC2(vq);
	sur40->sequence = -1;

	/* Release all active buffers */
	FUNC0(sur40, VB2_BUF_STATE_ERROR);
}