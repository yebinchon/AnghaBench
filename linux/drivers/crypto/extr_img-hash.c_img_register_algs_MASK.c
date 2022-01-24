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
struct img_hash_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * img_algs ; 

__attribute__((used)) static int FUNC3(struct img_hash_dev *hdev)
{
	int i, err;

	for (i = 0; i < FUNC0(img_algs); i++) {
		err = FUNC1(&img_algs[i]);
		if (err)
			goto err_reg;
	}
	return 0;

err_reg:
	for (; i--; )
		FUNC2(&img_algs[i]);

	return err;
}