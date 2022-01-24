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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHECK_BUS_TIME_OUT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHECK_OVERFLOW ; 
 int /*<<< orphan*/  CHECK_PCC ; 
 int /*<<< orphan*/  CHECK_PRECISE_IP ; 
 int /*<<< orphan*/  CHECK_RESTARTABLE_IP ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHECK_UNCORRECTED ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int CHECK_VALID_BUS_ADDR_SPACE ; 
 int CHECK_VALID_BUS_PART_TYPE ; 
 int CHECK_VALID_BUS_TIME_OUT ; 
 int CHECK_VALID_LEVEL ; 
 int CHECK_VALID_OPERATION ; 
 int CHECK_VALID_OVERFLOW ; 
 int CHECK_VALID_PCC ; 
 int CHECK_VALID_PRECISE_IP ; 
 int CHECK_VALID_RESTARTABLE_IP ; 
 int CHECK_VALID_TRANS_TYPE ; 
 int CHECK_VALID_UNCORRECTED ; 
 scalar_t__ ERR_TYPE_BUS ; 
 scalar_t__ ERR_TYPE_CACHE ; 
 scalar_t__ ERR_TYPE_MS ; 
 char** ia_check_bus_addr_space_strs ; 
 char** ia_check_bus_part_type_strs ; 
 char** ia_check_op_strs ; 
 char** ia_check_trans_type_strs ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void FUNC8 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,scalar_t__,...) ; 

__attribute__((used)) static void FUNC10(const char *pfx, u8 err_type, u64 check)
{
	u16 validation_bits = FUNC6(check);

	/*
	 * The MS Check structure varies a lot from the others, so use a
	 * separate function for decoding.
	 */
	if (err_type == ERR_TYPE_MS)
		return FUNC8(pfx, validation_bits, check);

	if (validation_bits & CHECK_VALID_TRANS_TYPE) {
		u8 trans_type = FUNC5(check);

		FUNC9("%sTransaction Type: %u, %s\n", pfx, trans_type,
		       trans_type < FUNC0(ia_check_trans_type_strs) ?
		       ia_check_trans_type_strs[trans_type] : "unknown");
	}

	if (validation_bits & CHECK_VALID_OPERATION) {
		u8 op = FUNC4(check);

		/*
		 * CACHE has more operation types than TLB or BUS, though the
		 * name and the order are the same.
		 */
		u8 max_ops = (err_type == ERR_TYPE_CACHE) ? 9 : 7;

		FUNC9("%sOperation: %u, %s\n", pfx, op,
		       op < max_ops ? ia_check_op_strs[op] : "unknown");
	}

	if (validation_bits & CHECK_VALID_LEVEL)
		FUNC9("%sLevel: %llu\n", pfx, FUNC3(check));

	if (validation_bits & CHECK_VALID_PCC)
		FUNC7("Processor Context Corrupt", pfx, check, CHECK_PCC);

	if (validation_bits & CHECK_VALID_UNCORRECTED)
		FUNC7("Uncorrected", pfx, check, CHECK_UNCORRECTED);

	if (validation_bits & CHECK_VALID_PRECISE_IP)
		FUNC7("Precise IP", pfx, check, CHECK_PRECISE_IP);

	if (validation_bits & CHECK_VALID_RESTARTABLE_IP)
		FUNC7("Restartable IP", pfx, check, CHECK_RESTARTABLE_IP);

	if (validation_bits & CHECK_VALID_OVERFLOW)
		FUNC7("Overflow", pfx, check, CHECK_OVERFLOW);

	if (err_type != ERR_TYPE_BUS)
		return;

	if (validation_bits & CHECK_VALID_BUS_PART_TYPE) {
		u8 part_type = FUNC2(check);

		FUNC9("%sParticipation Type: %u, %s\n", pfx, part_type,
		       part_type < FUNC0(ia_check_bus_part_type_strs) ?
		       ia_check_bus_part_type_strs[part_type] : "unknown");
	}

	if (validation_bits & CHECK_VALID_BUS_TIME_OUT)
		FUNC7("Time Out", pfx, check, CHECK_BUS_TIME_OUT);

	if (validation_bits & CHECK_VALID_BUS_ADDR_SPACE) {
		u8 addr_space = FUNC1(check);

		FUNC9("%sAddress Space: %u, %s\n", pfx, addr_space,
		       addr_space < FUNC0(ia_check_bus_addr_space_strs) ?
		       ia_check_bus_addr_space_strs[addr_space] : "unknown");
	}
}