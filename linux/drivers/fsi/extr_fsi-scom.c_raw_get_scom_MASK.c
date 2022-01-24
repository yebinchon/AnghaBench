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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct scom_device {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int XSCOM_ADDR_IND_FLAG ; 
 int XSCOM_ADDR_INF_FORM1 ; 
 int FUNC0 (struct scom_device*,int*,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct scom_device*,int*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct scom_device *scom, uint64_t *value,
			uint64_t addr, uint32_t *status)
{
	if (addr & XSCOM_ADDR_IND_FLAG) {
		if (addr & XSCOM_ADDR_INF_FORM1)
			return -ENXIO;
		return FUNC1(scom, value, addr, status);
	} else
		return FUNC0(scom, value, addr, status);
}