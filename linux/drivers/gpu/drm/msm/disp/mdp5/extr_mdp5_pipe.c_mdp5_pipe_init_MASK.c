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
typedef  void* uint32_t ;
struct mdp5_hw_pipe {int pipe; int /*<<< orphan*/  flush_mask; void* caps; void* reg_offset; int /*<<< orphan*/  name; } ;
typedef  enum mdp5_pipe { ____Placeholder_mdp5_pipe } mdp5_pipe ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct mdp5_hw_pipe* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct mdp5_hw_pipe* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

struct mdp5_hw_pipe *FUNC4(enum mdp5_pipe pipe,
		uint32_t reg_offset, uint32_t caps)
{
	struct mdp5_hw_pipe *hwpipe;

	hwpipe = FUNC1(sizeof(*hwpipe), GFP_KERNEL);
	if (!hwpipe)
		return FUNC0(-ENOMEM);

	hwpipe->name = FUNC3(pipe);
	hwpipe->pipe = pipe;
	hwpipe->reg_offset = reg_offset;
	hwpipe->caps = caps;
	hwpipe->flush_mask = FUNC2(pipe);

	return hwpipe;
}