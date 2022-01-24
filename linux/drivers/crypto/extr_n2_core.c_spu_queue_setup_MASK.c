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
struct spu_queue {int /*<<< orphan*/ * q; int /*<<< orphan*/  q_type; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct spu_queue*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct spu_queue *p)
{
	int err;

	p->q = FUNC1(p->q_type);
	if (!p->q)
		return -ENOMEM;

	err = FUNC2(p, p->q_type);
	if (err) {
		FUNC0(p->q, p->q_type);
		p->q = NULL;
	}

	return err;
}