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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct intel_gt {int dummy; } ;

/* Variables and functions */
 scalar_t__ const COPY_ENGINE_CLASS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const) ; 
 scalar_t__ const OTHER_CLASS ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__ const,scalar_t__ const,int /*<<< orphan*/  const) ; 
 void FUNC4 (struct intel_gt*,scalar_t__ const,scalar_t__ const,int /*<<< orphan*/  const) ; 
 void FUNC5 (struct intel_gt*,scalar_t__ const,int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void
FUNC7(struct intel_gt *gt, const u32 identity)
{
	const u8 class = FUNC0(identity);
	const u8 instance = FUNC1(identity);
	const u16 intr = FUNC2(identity);

	if (FUNC6(!intr))
		return;

	if (class <= COPY_ENGINE_CLASS)
		return FUNC4(gt, class, instance, intr);

	if (class == OTHER_CLASS)
		return FUNC5(gt, instance, intr);

	FUNC3(1, "unknown interrupt class=0x%x, instance=0x%x, intr=0x%x\n",
		  class, instance, intr);
}