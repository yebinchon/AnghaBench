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
 int ENODEV ; 
 scalar_t__ FUNC0 (struct psmouse*) ; 
 scalar_t__ FUNC1 (struct psmouse*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct psmouse*,int*) ; 

__attribute__((used)) static int FUNC3(struct psmouse *psmouse)
{
	int version;

	if (FUNC1(psmouse, 0))
		return -ENODEV;

	if (FUNC2(psmouse, &version))
		return -ENODEV;

	if (FUNC0(psmouse))
		return -EIO;

	return 0;
}