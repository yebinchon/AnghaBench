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
struct ad_sigma_delta {int irq_dis; int /*<<< orphan*/  trig; int /*<<< orphan*/  completion; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *private)
{
	struct ad_sigma_delta *sigma_delta = private;

	FUNC0(&sigma_delta->completion);
	FUNC1(irq);
	sigma_delta->irq_dis = true;
	FUNC2(sigma_delta->trig);

	return IRQ_HANDLED;
}