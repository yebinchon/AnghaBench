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
struct psmouse {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FSP_REG_REVISION ; 
 scalar_t__ FUNC0 (struct psmouse*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC1(struct psmouse *psmouse, int *rev)
{
	if (FUNC0(psmouse, FSP_REG_REVISION, rev))
		return -EIO;

	return 0;
}