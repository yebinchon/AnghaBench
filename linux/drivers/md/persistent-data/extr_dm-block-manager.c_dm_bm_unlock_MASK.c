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
struct dm_block {int dummy; } ;
struct buffer_aux {int /*<<< orphan*/  lock; scalar_t__ write_locked; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct buffer_aux* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_block*) ; 

void FUNC6(struct dm_block *b)
{
	struct buffer_aux *aux;
	aux = FUNC2(FUNC5(b));

	if (aux->write_locked) {
		FUNC3(FUNC5(b));
		FUNC1(&aux->lock);
	} else
		FUNC0(&aux->lock);

	FUNC4(FUNC5(b));
}