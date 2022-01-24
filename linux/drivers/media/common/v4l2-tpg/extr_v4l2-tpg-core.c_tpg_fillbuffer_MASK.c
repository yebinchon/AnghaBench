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
typedef  int /*<<< orphan*/  v4l2_std_id ;
typedef  int /*<<< orphan*/  u8 ;
struct tpg_data {int buffers; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tpg_data*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct tpg_data*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (struct tpg_data*) ; 

void FUNC3(struct tpg_data *tpg, v4l2_std_id std, unsigned p, u8 *vbuf)
{
	unsigned offset = 0;
	unsigned i;

	if (tpg->buffers > 1) {
		FUNC1(tpg, std, p, vbuf);
		return;
	}

	for (i = 0; i < FUNC2(tpg); i++) {
		FUNC1(tpg, std, i, vbuf + offset);
		offset += FUNC0(tpg, i);
	}
}