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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*,int,int,char*,char*) ; 
 int FUNC1 (unsigned char*,int,int,int) ; 

__attribute__((used)) static void FUNC2(unsigned char *buf, char *comment, size_t size)
{
	int i;
	char pnp[8], rev[9];

	for (i = 0; i < 7; i++)						/* ASCII PnP ID */
		pnp[i] = FUNC1(buf, 24+8*i, 8, 1);

	for (i = 0; i < 8; i++)						/* ASCII firmware revision */
		rev[i] = FUNC1(buf, 88+8*i, 8, 1);

	pnp[7] = rev[8] = 0;

	FUNC0(comment, size, " [PnP %d.%02d id %s rev %s]",
		(int) ((FUNC1(buf, 8, 6, 1) << 6) |		/* Two 6-bit values */
			FUNC1(buf, 16, 6, 1)) / 100,
		(int) ((FUNC1(buf, 8, 6, 1) << 6) |
			FUNC1(buf, 16, 6, 1)) % 100,
		 pnp, rev);
}