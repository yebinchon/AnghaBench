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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct TYPE_2__ {int max_i2c; } ;
struct cxd {scalar_t__ lastaddress; int /*<<< orphan*/  regmap; TYPE_1__ cfg; scalar_t__* wbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,scalar_t__*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct cxd *ci, u8 adr, u8 *data, u16 n)
{
	int status = 0;
	u8 *buf = ci->wbuf;

	if (ci->lastaddress != adr)
		status = FUNC2(ci->regmap, 0, adr);
	if (status)
		return status;

	ci->lastaddress = adr;
	while (n) {
		int len = n;

		if (ci->cfg.max_i2c && (len + 1 > ci->cfg.max_i2c))
			len = ci->cfg.max_i2c - 1;
		FUNC0(buf, data, len);
		status = FUNC1(ci->regmap, 1, buf, len);
		if (status)
			return status;
		n -= len;
		data += len;
	}
	return status;
}