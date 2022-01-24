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
struct cper_sec_proc_ia {int validation_bits; struct cper_ia_proc_ctx* cpuid; int /*<<< orphan*/  lapic_id; } ;
struct cper_ia_proc_ctx {int reg_arr_size; size_t reg_ctx_type; int /*<<< orphan*/  mm_reg_addr; int /*<<< orphan*/  msr_addr; } ;
struct cper_ia_err_info {int validation_bits; int /*<<< orphan*/  ip; int /*<<< orphan*/  responder_id; int /*<<< orphan*/  requestor_id; int /*<<< orphan*/  target_id; int /*<<< orphan*/  check_info; int /*<<< orphan*/  err_type; } ;
typedef  int /*<<< orphan*/  newpfx ;
typedef  int /*<<< orphan*/  infopfx ;

/* Variables and functions */
 size_t FUNC0 (char**) ; 
 size_t CTX_TYPE_MMREG ; 
 size_t CTX_TYPE_MSR ; 
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int INFO_VALID_CHECK_INFO ; 
 int INFO_VALID_IP ; 
 int INFO_VALID_REQUESTOR_ID ; 
 int INFO_VALID_RESPONDER_ID ; 
 int INFO_VALID_TARGET_ID ; 
 size_t N_ERR_TYPES ; 
 int VALID_CPUID_INFO ; 
 int VALID_LAPIC_ID ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 char** cper_proc_error_type_strs ; 
 char** ia_reg_ctx_strs ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*,int /*<<< orphan*/ ,int,int,struct cper_ia_proc_ctx*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char const*) ; 

void FUNC8(const char *pfx, const struct cper_sec_proc_ia *proc)
{
	int i;
	struct cper_ia_err_info *err_info;
	struct cper_ia_proc_ctx *ctx_info;
	char newpfx[64], infopfx[64];
	u8 err_type;

	if (proc->validation_bits & VALID_LAPIC_ID)
		FUNC6("%sLocal APIC_ID: 0x%llx\n", pfx, proc->lapic_id);

	if (proc->validation_bits & VALID_CPUID_INFO) {
		FUNC6("%sCPUID Info:\n", pfx);
		FUNC5(pfx, "", DUMP_PREFIX_OFFSET, 16, 4, proc->cpuid,
			       sizeof(proc->cpuid), 0);
	}

	FUNC7(newpfx, sizeof(newpfx), "%s ", pfx);

	err_info = (struct cper_ia_err_info *)(proc + 1);
	for (i = 0; i < FUNC2(proc->validation_bits); i++) {
		FUNC6("%sError Information Structure %d:\n", pfx, i);

		err_type = FUNC3(&err_info->err_type);
		FUNC6("%sError Structure Type: %s\n", newpfx,
		       err_type < FUNC0(cper_proc_error_type_strs) ?
		       cper_proc_error_type_strs[err_type] : "unknown");

		if (err_type >= N_ERR_TYPES) {
			FUNC6("%sError Structure Type: %pUl\n", newpfx,
			       &err_info->err_type);
		}

		if (err_info->validation_bits & INFO_VALID_CHECK_INFO) {
			FUNC6("%sCheck Information: 0x%016llx\n", newpfx,
			       err_info->check_info);

			if (err_type < N_ERR_TYPES) {
				FUNC7(infopfx, sizeof(infopfx), "%s ",
					 newpfx);

				FUNC4(infopfx, err_type,
					       err_info->check_info);
			}
		}

		if (err_info->validation_bits & INFO_VALID_TARGET_ID) {
			FUNC6("%sTarget Identifier: 0x%016llx\n",
			       newpfx, err_info->target_id);
		}

		if (err_info->validation_bits & INFO_VALID_REQUESTOR_ID) {
			FUNC6("%sRequestor Identifier: 0x%016llx\n",
			       newpfx, err_info->requestor_id);
		}

		if (err_info->validation_bits & INFO_VALID_RESPONDER_ID) {
			FUNC6("%sResponder Identifier: 0x%016llx\n",
			       newpfx, err_info->responder_id);
		}

		if (err_info->validation_bits & INFO_VALID_IP) {
			FUNC6("%sInstruction Pointer: 0x%016llx\n",
			       newpfx, err_info->ip);
		}

		err_info++;
	}

	ctx_info = (struct cper_ia_proc_ctx *)err_info;
	for (i = 0; i < FUNC1(proc->validation_bits); i++) {
		int size = sizeof(*ctx_info) + ctx_info->reg_arr_size;
		int groupsize = 4;

		FUNC6("%sContext Information Structure %d:\n", pfx, i);

		FUNC6("%sRegister Context Type: %s\n", newpfx,
		       ctx_info->reg_ctx_type < FUNC0(ia_reg_ctx_strs) ?
		       ia_reg_ctx_strs[ctx_info->reg_ctx_type] : "unknown");

		FUNC6("%sRegister Array Size: 0x%04x\n", newpfx,
		       ctx_info->reg_arr_size);

		if (ctx_info->reg_ctx_type == CTX_TYPE_MSR) {
			groupsize = 8; /* MSRs are 8 bytes wide. */
			FUNC6("%sMSR Address: 0x%08x\n", newpfx,
			       ctx_info->msr_addr);
		}

		if (ctx_info->reg_ctx_type == CTX_TYPE_MMREG) {
			FUNC6("%sMM Register Address: 0x%016llx\n", newpfx,
			       ctx_info->mm_reg_addr);
		}

		FUNC6("%sRegister Array:\n", newpfx);
		FUNC5(newpfx, "", DUMP_PREFIX_OFFSET, 16, groupsize,
			       (ctx_info + 1), ctx_info->reg_arr_size, 0);

		ctx_info = (struct cper_ia_proc_ctx *)((long)ctx_info + size);
	}
}