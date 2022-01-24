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
typedef  int /*<<< orphan*/  u32 ;
struct lima_sched_pipe {int /*<<< orphan*/  task; } ;
struct lima_ip {struct lima_device* dev; } ;
struct lima_device {struct lima_sched_pipe* pipe; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  LIMA_PP_INT_STATUS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int lima_pipe_pp ; 
 int /*<<< orphan*/  FUNC1 (struct lima_ip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lima_sched_pipe*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct lima_ip *ip = data;
	struct lima_device *dev = ip->dev;
	struct lima_sched_pipe *pipe = dev->pipe + lima_pipe_pp;
	u32 state = FUNC3(LIMA_PP_INT_STATUS);

	/* for shared irq case */
	if (!state)
		return IRQ_NONE;

	FUNC1(ip, state);

	if (FUNC0(&pipe->task))
		FUNC2(pipe);

	return IRQ_HANDLED;
}