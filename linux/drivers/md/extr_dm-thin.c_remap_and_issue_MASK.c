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
struct thin_c {int dummy; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct thin_c*,struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct thin_c*,struct bio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct thin_c *tc, struct bio *bio,
			    dm_block_t block)
{
	FUNC1(tc, bio, block);
	FUNC0(tc, bio);
}