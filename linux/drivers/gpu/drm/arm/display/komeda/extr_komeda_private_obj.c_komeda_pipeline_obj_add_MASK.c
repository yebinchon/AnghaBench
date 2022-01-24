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
struct komeda_pipeline_state {int /*<<< orphan*/  obj; struct komeda_pipeline* pipe; } ;
struct komeda_pipeline {int /*<<< orphan*/  obj; } ;
struct komeda_kms_dev {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  komeda_pipeline_obj_funcs ; 
 struct komeda_pipeline_state* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct komeda_kms_dev *kms,
				   struct komeda_pipeline *pipe)
{
	struct komeda_pipeline_state *st;

	st = FUNC1(sizeof(*st), GFP_KERNEL);
	if (!st)
		return -ENOMEM;

	st->pipe = pipe;
	FUNC0(&kms->base, &pipe->obj, &st->obj,
				    &komeda_pipeline_obj_funcs);

	return 0;
}