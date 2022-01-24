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
struct integrated_info {int dummy; } ;
struct dc_bios {int dummy; } ;
struct bios_parser {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct bios_parser* FUNC1 (struct dc_bios*) ; 
 scalar_t__ BP_RESULT_OK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct bios_parser*,struct integrated_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct integrated_info*) ; 
 struct integrated_info* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct integrated_info *FUNC5(
	struct dc_bios *dcb)
{
	struct bios_parser *bp = FUNC1(dcb);
	struct integrated_info *info = NULL;

	info = FUNC4(sizeof(struct integrated_info), GFP_KERNEL);

	if (info == NULL) {
		FUNC0(0);
		return NULL;
	}

	if (FUNC2(bp, info) == BP_RESULT_OK)
		return info;

	FUNC3(info);

	return NULL;
}