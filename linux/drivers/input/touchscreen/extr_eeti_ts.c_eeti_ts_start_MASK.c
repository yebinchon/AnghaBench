#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct eeti_ts {int running; int /*<<< orphan*/  mutex; scalar_t__ attn_gpio; TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eeti_ts*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct eeti_ts *eeti)
{
	FUNC3(&eeti->mutex);

	eeti->running = true;
	FUNC1(eeti->client->irq);

	/*
	 * Kick the controller in case we are using edge interrupt and
	 * we missed our edge while interrupt was disabled. We expect
	 * the attention GPIO to be wired in this case.
	 */
	if (eeti->attn_gpio && FUNC2(eeti->attn_gpio))
		FUNC0(eeti);

	FUNC4(&eeti->mutex);
}