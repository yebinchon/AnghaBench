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
typedef  int /*<<< orphan*/  u8 ;
struct nx842_crypto_header {TYPE_1__* group; int /*<<< orphan*/  groups; } ;
struct TYPE_2__ {int /*<<< orphan*/  padding; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct nx842_crypto_header*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct nx842_crypto_header *hdr, u8 *buf)
{
	int s = FUNC0(hdr->groups);

	/* compress should have added space for header */
	if (s > FUNC1(hdr->group[0].padding)) {
		FUNC3("Internal error: no space for header\n");
		return -EINVAL;
	}

	FUNC2(buf, hdr, s);

	FUNC4("header ", DUMP_PREFIX_OFFSET, 16, 1, buf, s, 0);

	return 0;
}