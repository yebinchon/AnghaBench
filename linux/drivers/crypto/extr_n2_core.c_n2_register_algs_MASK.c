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

/* Variables and functions */
 int NUM_CIPHER_TMPLS ; 
 int NUM_HASH_TMPLS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  algs_registered ; 
 int /*<<< orphan*/ * cipher_tmpls ; 
 int /*<<< orphan*/ * hash_tmpls ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spu_lock ; 

__attribute__((used)) static int FUNC5(void)
{
	int i, err = 0;

	FUNC3(&spu_lock);
	if (algs_registered++)
		goto out;

	for (i = 0; i < NUM_HASH_TMPLS; i++) {
		err = FUNC0(&hash_tmpls[i]);
		if (err) {
			FUNC2();
			goto out;
		}
	}
	for (i = 0; i < NUM_CIPHER_TMPLS; i++) {
		err = FUNC1(&cipher_tmpls[i]);
		if (err) {
			FUNC2();
			goto out;
		}
	}

out:
	FUNC4(&spu_lock);
	return err;
}