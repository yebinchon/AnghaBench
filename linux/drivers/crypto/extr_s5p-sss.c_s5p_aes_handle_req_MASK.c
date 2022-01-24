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
struct s5p_aes_dev {int busy; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; } ;
struct ablkcipher_request {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct s5p_aes_dev *dev,
			      struct ablkcipher_request *req)
{
	unsigned long flags;
	int err;

	FUNC1(&dev->lock, flags);
	err = FUNC0(&dev->queue, req);
	if (dev->busy) {
		FUNC2(&dev->lock, flags);
		return err;
	}
	dev->busy = true;

	FUNC2(&dev->lock, flags);

	FUNC3(&dev->tasklet);

	return err;
}