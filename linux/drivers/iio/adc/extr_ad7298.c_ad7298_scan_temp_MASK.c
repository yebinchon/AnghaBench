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
struct ad7298_state {int ext_ref; int /*<<< orphan*/  spi; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int AD7298_TAVG ; 
 int AD7298_TSENSE ; 
 int AD7298_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct ad7298_state *st, int *val)
{
	int ret;
	__be16 buf;

	buf = FUNC1(AD7298_WRITE | AD7298_TSENSE |
			  AD7298_TAVG | st->ext_ref);

	ret = FUNC4(st->spi, (u8 *)&buf, 2);
	if (ret)
		return ret;

	buf = FUNC1(0);

	ret = FUNC4(st->spi, (u8 *)&buf, 2);
	if (ret)
		return ret;

	FUNC5(101, 1000); /* sleep > 100us */

	ret = FUNC3(st->spi, (u8 *)&buf, 2);
	if (ret)
		return ret;

	*val = FUNC2(FUNC0(buf), 11);

	return 0;
}