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
struct sp_device {int ord; struct device* dev; } ;
struct psp_device {int /*<<< orphan*/  name; struct sp_device* sp; struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct psp_device* FUNC0 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,int) ; 

__attribute__((used)) static struct psp_device *FUNC2(struct sp_device *sp)
{
	struct device *dev = sp->dev;
	struct psp_device *psp;

	psp = FUNC0(dev, sizeof(*psp), GFP_KERNEL);
	if (!psp)
		return NULL;

	psp->dev = dev;
	psp->sp = sp;

	FUNC1(psp->name, sizeof(psp->name), "psp-%u", sp->ord);

	return psp;
}