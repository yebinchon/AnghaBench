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
struct stm32_hash_request_ctx {int dummy; } ;
struct stm32_hash_dev {int flags; scalar_t__ err; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HASH_CR ; 
 int /*<<< orphan*/  HASH_CR_INIT ; 
 int /*<<< orphan*/  HASH_DIN ; 
 int HASH_FLAGS_INIT ; 
 int /*<<< orphan*/  HASH_IMR ; 
 int /*<<< orphan*/  HASH_STR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct stm32_hash_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct stm32_hash_dev *hdev,
			      struct stm32_hash_request_ctx *rctx)
{
	FUNC0(hdev->dev);

	if (!(HASH_FLAGS_INIT & hdev->flags)) {
		FUNC1(hdev, HASH_CR, HASH_CR_INIT);
		FUNC1(hdev, HASH_STR, 0);
		FUNC1(hdev, HASH_DIN, 0);
		FUNC1(hdev, HASH_IMR, 0);
		hdev->err = 0;
	}

	return 0;
}