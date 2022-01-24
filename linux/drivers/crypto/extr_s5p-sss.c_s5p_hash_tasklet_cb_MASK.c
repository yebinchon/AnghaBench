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
struct s5p_aes_dev {int /*<<< orphan*/  hash_flags; int /*<<< orphan*/  hash_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  HASH_FLAGS_BUSY ; 
 int /*<<< orphan*/  HASH_FLAGS_DMA_ACTIVE ; 
 int /*<<< orphan*/  HASH_FLAGS_DMA_READY ; 
 int /*<<< orphan*/  HASH_FLAGS_OUTPUT_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct s5p_aes_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct s5p_aes_dev*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(unsigned long data)
{
	struct s5p_aes_dev *dd = (struct s5p_aes_dev *)data;

	if (!FUNC5(HASH_FLAGS_BUSY, &dd->hash_flags)) {
		FUNC2(dd, NULL);
		return;
	}

	if (FUNC5(HASH_FLAGS_DMA_READY, &dd->hash_flags)) {
		if (FUNC4(HASH_FLAGS_DMA_ACTIVE,
				       &dd->hash_flags)) {
			FUNC3(dd);
		}

		if (FUNC4(HASH_FLAGS_OUTPUT_READY,
				       &dd->hash_flags)) {
			/* hash or semi-hash ready */
			FUNC0(HASH_FLAGS_DMA_READY, &dd->hash_flags);
			goto finish;
		}
	}

	return;

finish:
	/* finish curent request */
	FUNC1(dd->hash_req, 0);

	/* If we are not busy, process next req */
	if (!FUNC5(HASH_FLAGS_BUSY, &dd->hash_flags))
		FUNC2(dd, NULL);
}