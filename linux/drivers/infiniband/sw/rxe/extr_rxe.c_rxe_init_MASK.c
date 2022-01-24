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
struct rxe_dev {int /*<<< orphan*/  usdev_lock; int /*<<< orphan*/  pending_mmaps; int /*<<< orphan*/  pending_lock; int /*<<< orphan*/  mmap_offset_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rxe_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rxe_dev*) ; 
 int FUNC4 (struct rxe_dev*) ; 
 int FUNC5 (struct rxe_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct rxe_dev *rxe)
{
	int err;

	/* init default device parameters */
	FUNC3(rxe);

	err = FUNC5(rxe);
	if (err)
		goto err1;

	err = FUNC4(rxe);
	if (err)
		goto err2;

	/* init pending mmap list */
	FUNC6(&rxe->mmap_offset_lock);
	FUNC6(&rxe->pending_lock);
	FUNC0(&rxe->pending_mmaps);

	FUNC1(&rxe->usdev_lock);

	return 0;

err2:
	FUNC2(rxe);
err1:
	return err;
}