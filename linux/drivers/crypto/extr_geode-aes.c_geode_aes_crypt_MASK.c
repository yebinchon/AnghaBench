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
typedef  int u32 ;
struct geode_aes_op {scalar_t__ len; scalar_t__ dir; scalar_t__ mode; int flags; int /*<<< orphan*/  iv; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int AES_CTRL_CBC ; 
 int AES_CTRL_DCA ; 
 int AES_CTRL_ENCRYPT ; 
 int AES_CTRL_SCA ; 
 int AES_CTRL_WRKEY ; 
 scalar_t__ AES_DIR_ENCRYPT ; 
 int AES_FLAGS_HIDDENKEY ; 
 scalar_t__ AES_MODE_CBC ; 
 int /*<<< orphan*/  AES_WRITEIV0_REG ; 
 int /*<<< orphan*/  AES_WRITEKEY0_REG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned int
FUNC6(struct geode_aes_op *op)
{
	u32 flags = 0;
	unsigned long iflags;
	int ret;

	if (op->len == 0)
		return 0;

	/* If the source and destination is the same, then
	 * we need to turn on the coherent flags, otherwise
	 * we don't need to worry
	 */

	flags |= (AES_CTRL_DCA | AES_CTRL_SCA);

	if (op->dir == AES_DIR_ENCRYPT)
		flags |= AES_CTRL_ENCRYPT;

	/* Start the critical section */

	FUNC4(&lock, iflags);

	if (op->mode == AES_MODE_CBC) {
		flags |= AES_CTRL_CBC;
		FUNC2(AES_WRITEIV0_REG, op->iv);
	}

	if (!(op->flags & AES_FLAGS_HIDDENKEY)) {
		flags |= AES_CTRL_WRKEY;
		FUNC2(AES_WRITEKEY0_REG, op->key);
	}

	ret = FUNC3(op->src, op->dst, op->len, flags);
	FUNC0(ret);

	if (op->mode == AES_MODE_CBC)
		FUNC1(AES_WRITEIV0_REG, op->iv);

	FUNC5(&lock, iflags);

	return op->len;
}