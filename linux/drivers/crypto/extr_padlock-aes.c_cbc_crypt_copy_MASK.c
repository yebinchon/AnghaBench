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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct cword {int dummy; } ;

/* Variables and functions */
 int AES_BLOCK_SIZE ; 
 int /*<<< orphan*/  MAX_CBC_FETCH_BLOCKS ; 
 int PADLOCK_ALIGNMENT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct cword*,int) ; 

__attribute__((used)) static u8 *FUNC3(const u8 *in, u8 *out, u32 *key,
			   u8 *iv, struct cword *cword, int count)
{
	/*
	 * Padlock prefetches extra data so we must provide mapped input buffers.
	 * Assume there are at least 16 bytes of stack already in use.
	 */
	u8 buf[AES_BLOCK_SIZE * (MAX_CBC_FETCH_BLOCKS - 1) + PADLOCK_ALIGNMENT - 1];
	u8 *tmp = FUNC0(&buf[0], PADLOCK_ALIGNMENT);

	FUNC1(tmp, in, count * AES_BLOCK_SIZE);
	return FUNC2(tmp, out, key, iv, cword, count);
}