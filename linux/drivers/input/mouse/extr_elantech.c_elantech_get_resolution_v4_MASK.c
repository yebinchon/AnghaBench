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
 int /*<<< orphan*/  ETP_RESOLUTION_QUERY ; 
 unsigned int FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (struct psmouse*,int /*<<< orphan*/ ,unsigned char*) ; 

__attribute__((used)) static int FUNC2(struct psmouse *psmouse,
				      unsigned int *x_res,
				      unsigned int *y_res,
				      unsigned int *bus)
{
	unsigned char param[3];

	if (FUNC1(psmouse, ETP_RESOLUTION_QUERY, param))
		return -1;

	*x_res = FUNC0(param[1] & 0x0f);
	*y_res = FUNC0((param[1] & 0xf0) >> 4);
	*bus = param[2];

	return 0;
}