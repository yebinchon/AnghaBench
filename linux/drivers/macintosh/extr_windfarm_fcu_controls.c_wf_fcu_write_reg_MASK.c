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
struct wf_fcu_priv {int /*<<< orphan*/  i2c; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static int FUNC4(struct wf_fcu_priv *pv, int reg,
			    const unsigned char *ptr, int nb)
{
	int tries, nw;
	unsigned char buf[16];

	buf[0] = reg;
	FUNC1(buf+1, ptr, nb);
	++nb;
	tries = 0;
	for (;;) {
		nw = FUNC0(pv->i2c, buf, nb);
		if (nw > 0 || (nw < 0 && nw != -EIO) || tries >= 100)
			break;
		FUNC2(10);
		++tries;
	}
	if (nw < 0)
		FUNC3("wf_fcu: Failure writing to FCU: %d", nw);
	return nw;
}