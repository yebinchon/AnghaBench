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
struct spu_queue {int /*<<< orphan*/  sharing; } ;
struct spu_qreg {unsigned long type; struct spu_queue* queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  cpu_online_mask ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spu_queue_register_workfn ; 
 int FUNC1 (int,int /*<<< orphan*/ ,struct spu_qreg*) ; 

__attribute__((used)) static int FUNC2(struct spu_queue *p, unsigned long q_type)
{
	int cpu = FUNC0(&p->sharing, cpu_online_mask);
	struct spu_qreg qr = { .queue = p, .type = q_type };

	return FUNC1(cpu, spu_queue_register_workfn, &qr);
}