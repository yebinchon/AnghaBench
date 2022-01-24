#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * sample; } ;
struct ad7266_state {TYPE_1__ data; int /*<<< orphan*/  single_msg; int /*<<< orphan*/  spi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ad7266_state*,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct ad7266_state *st, int *val,
	unsigned int address)
{
	int ret;

	FUNC0(st, address);

	ret = FUNC2(st->spi, &st->single_msg);
	*val = FUNC1(st->data.sample[address % 2]);

	return ret;
}