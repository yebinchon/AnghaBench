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
typedef  int /*<<< orphan*/  uint8_t ;
struct ad_sigma_delta {int /*<<< orphan*/  spi; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * FUNC1 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 

int FUNC5(struct ad_sigma_delta *sigma_delta,
	unsigned int reset_length)
{
	uint8_t *buf;
	unsigned int size;
	int ret;

	size = FUNC0(reset_length, 8);
	buf = FUNC1(size, sizeof(*buf), GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	FUNC3(buf, 0xff, size);
	ret = FUNC4(sigma_delta->spi, buf, size);
	FUNC2(buf);

	return ret;
}