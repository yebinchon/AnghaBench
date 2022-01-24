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
struct alps_data {int dummy; } ;
typedef  int /*<<< orphan*/  otp ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct psmouse*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char**,struct alps_data*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char**,struct alps_data*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char**,struct alps_data*,struct psmouse*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char**,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct psmouse *psmouse,
				    struct alps_data *priv)
{
	unsigned char otp[2][4];

	FUNC4(otp, 0, sizeof(otp));

	if (FUNC0(psmouse, 1, &otp[1][0]) ||
	    FUNC0(psmouse, 0, &otp[0][0]))
		return -1;

	FUNC2(otp, priv);

	FUNC1(otp, priv);

	FUNC3(otp, priv, psmouse);

	return 0;
}