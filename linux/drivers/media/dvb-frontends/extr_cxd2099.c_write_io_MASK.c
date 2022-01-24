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
typedef  int u8 ;
typedef  int u16 ;
struct cxd {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC2(struct cxd *ci, u16 address, u8 val)
{
	int status;
	u8 addr[2] = {address & 0xff, address >> 8};

	status = FUNC0(ci->regmap, 2, addr, 2);
	if (!status)
		status = FUNC1(ci->regmap, 3, val);
	return status;
}