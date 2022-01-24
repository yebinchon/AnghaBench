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
struct wf_fcu_priv {int /*<<< orphan*/  lock; int /*<<< orphan*/  i2c; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static int FUNC6(struct wf_fcu_priv *pv, int reg,
			   unsigned char *buf, int nb)
{
	int tries, nr, nw;

	FUNC3(&pv->lock);

	buf[0] = reg;
	tries = 0;
	for (;;) {
		nw = FUNC1(pv->i2c, buf, 1);
		if (nw > 0 || (nw < 0 && nw != -EIO) || tries >= 100)
			break;
		FUNC2(10);
		++tries;
	}
	if (nw <= 0) {
		FUNC5("Failure writing address to FCU: %d", nw);
		nr = nw;
		goto bail;
	}
	tries = 0;
	for (;;) {
		nr = FUNC0(pv->i2c, buf, nb);
		if (nr > 0 || (nr < 0 && nr != -ENODEV) || tries >= 100)
			break;
		FUNC2(10);
		++tries;
	}
	if (nr <= 0)
		FUNC5("wf_fcu: Failure reading data from FCU: %d", nw);
 bail:
	FUNC4(&pv->lock);
	return nr;
}