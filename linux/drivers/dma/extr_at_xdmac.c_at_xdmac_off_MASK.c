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
struct at_xdmac {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_XDMAC_GD ; 
 int /*<<< orphan*/  AT_XDMAC_GID ; 
 int /*<<< orphan*/  AT_XDMAC_GS ; 
 scalar_t__ FUNC0 (struct at_xdmac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct at_xdmac*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct at_xdmac *atxdmac)
{
	FUNC1(atxdmac, AT_XDMAC_GD, -1L);

	/* Wait that all chans are disabled. */
	while (FUNC0(atxdmac, AT_XDMAC_GS))
		FUNC2();

	FUNC1(atxdmac, AT_XDMAC_GID, -1L);
}