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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u16 ;

/* Variables and functions */
 size_t FUNC0 (char**) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHECK_MS_OVERFLOW ; 
 int /*<<< orphan*/  CHECK_MS_PCC ; 
 int /*<<< orphan*/  CHECK_MS_PRECISE_IP ; 
 int /*<<< orphan*/  CHECK_MS_RESTARTABLE_IP ; 
 int /*<<< orphan*/  CHECK_MS_UNCORRECTED ; 
 int CHECK_VALID_MS_ERR_TYPE ; 
 int CHECK_VALID_MS_OVERFLOW ; 
 int CHECK_VALID_MS_PCC ; 
 int CHECK_VALID_MS_PRECISE_IP ; 
 int CHECK_VALID_MS_RESTARTABLE_IP ; 
 int CHECK_VALID_MS_UNCORRECTED ; 
 char** ia_check_ms_error_type_strs ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t,char*) ; 

__attribute__((used)) static void FUNC4(const char *pfx, u16 validation_bits, u64 check)
{
	if (validation_bits & CHECK_VALID_MS_ERR_TYPE) {
		u8 err_type = FUNC1(check);

		FUNC3("%sError Type: %u, %s\n", pfx, err_type,
		       err_type < FUNC0(ia_check_ms_error_type_strs) ?
		       ia_check_ms_error_type_strs[err_type] : "unknown");
	}

	if (validation_bits & CHECK_VALID_MS_PCC)
		FUNC2("Processor Context Corrupt", pfx, check, CHECK_MS_PCC);

	if (validation_bits & CHECK_VALID_MS_UNCORRECTED)
		FUNC2("Uncorrected", pfx, check, CHECK_MS_UNCORRECTED);

	if (validation_bits & CHECK_VALID_MS_PRECISE_IP)
		FUNC2("Precise IP", pfx, check, CHECK_MS_PRECISE_IP);

	if (validation_bits & CHECK_VALID_MS_RESTARTABLE_IP)
		FUNC2("Restartable IP", pfx, check, CHECK_MS_RESTARTABLE_IP);

	if (validation_bits & CHECK_VALID_MS_OVERFLOW)
		FUNC2("Overflow", pfx, check, CHECK_MS_OVERFLOW);
}