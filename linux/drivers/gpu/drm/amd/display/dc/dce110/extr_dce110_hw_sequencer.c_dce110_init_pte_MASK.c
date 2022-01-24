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
typedef  int uint32_t ;
struct dc_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DVMM_PTE_BUFFER_MODE0 ; 
 int /*<<< orphan*/  DVMM_PTE_BUFFER_MODE1 ; 
 int /*<<< orphan*/  DVMM_PTE_CONTROL ; 
 int /*<<< orphan*/  DVMM_PTE_REQ ; 
 int /*<<< orphan*/  DVMM_USE_SINGLE_PTE ; 
 int /*<<< orphan*/  HFLIP_PTEREQ_PER_CHUNK_INT ; 
 int /*<<< orphan*/  HFLIP_PTEREQ_PER_CHUNK_MULTIPLIER ; 
 int /*<<< orphan*/  MAX_PTEREQ_TO_ISSUE ; 
 int FUNC0 (struct dc_context*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dc_context*,int,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int mmDVMM_PTE_REQ ; 
 int mmUNP_DVMM_PTE_CONTROL ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct dc_context *ctx)
{
	uint32_t addr;
	uint32_t value = 0;
	uint32_t chunk_int = 0;
	uint32_t chunk_mul = 0;

	addr = mmUNP_DVMM_PTE_CONTROL;
	value = FUNC0(ctx, addr);

	FUNC3(
		value,
		0,
		DVMM_PTE_CONTROL,
		DVMM_USE_SINGLE_PTE);

	FUNC3(
		value,
		1,
		DVMM_PTE_CONTROL,
		DVMM_PTE_BUFFER_MODE0);

	FUNC3(
		value,
		1,
		DVMM_PTE_CONTROL,
		DVMM_PTE_BUFFER_MODE1);

	FUNC1(ctx, addr, value);

	addr = mmDVMM_PTE_REQ;
	value = FUNC0(ctx, addr);

	chunk_int = FUNC2(
		value,
		DVMM_PTE_REQ,
		HFLIP_PTEREQ_PER_CHUNK_INT);

	chunk_mul = FUNC2(
		value,
		DVMM_PTE_REQ,
		HFLIP_PTEREQ_PER_CHUNK_MULTIPLIER);

	if (chunk_int != 0x4 || chunk_mul != 0x4) {

		FUNC3(
			value,
			255,
			DVMM_PTE_REQ,
			MAX_PTEREQ_TO_ISSUE);

		FUNC3(
			value,
			4,
			DVMM_PTE_REQ,
			HFLIP_PTEREQ_PER_CHUNK_INT);

		FUNC3(
			value,
			4,
			DVMM_PTE_REQ,
			HFLIP_PTEREQ_PER_CHUNK_MULTIPLIER);

		FUNC1(ctx, addr, value);
	}
}