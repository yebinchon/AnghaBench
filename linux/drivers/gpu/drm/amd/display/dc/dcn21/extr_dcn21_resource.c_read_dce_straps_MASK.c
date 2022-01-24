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
struct resource_straps {int /*<<< orphan*/  dc_pinstraps_audio; } ;
struct dc_context {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DC_PINSTRAPS ; 
 int /*<<< orphan*/  DC_PINSTRAPS_AUDIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dc_context*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ mmDC_PINSTRAPS ; 
 int /*<<< orphan*/  mmDC_PINSTRAPS_BASE_IDX ; 

__attribute__((used)) static void FUNC3(
	struct dc_context *ctx,
	struct resource_straps *straps)
{
	FUNC2(ctx, mmDC_PINSTRAPS + FUNC0(mmDC_PINSTRAPS_BASE_IDX),
		FUNC1(DC_PINSTRAPS, DC_PINSTRAPS_AUDIO), &straps->dc_pinstraps_audio);

}