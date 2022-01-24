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
struct nx842_workmem {int /*<<< orphan*/  start; } ;
struct coprocessor_status_block {int flags; int cc; int ce; int /*<<< orphan*/  count; scalar_t__ cs; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
#define  CSB_CC_ABORT 175 
#define  CSB_CC_CHAIN 174 
#define  CSB_CC_CRC_MISMATCH 173 
#define  CSB_CC_DATA_LENGTH 172 
#define  CSB_CC_DDE_OVERFLOW 171 
#define  CSB_CC_EXCEED_BYTE_COUNT 170 
#define  CSB_CC_EXCESSIVE_DDE 169 
#define  CSB_CC_HW 168 
#define  CSB_CC_HW_EXPIRED_TIMER 167 
#define  CSB_CC_INTERNAL 166 
#define  CSB_CC_INVALID_ALIGN 165 
#define  CSB_CC_INVALID_CRB 164 
#define  CSB_CC_INVALID_DDE 163 
#define  CSB_CC_INVALID_OPERAND 162 
#define  CSB_CC_NOSPC 161 
#define  CSB_CC_OPERAND_OVERLAP 160 
#define  CSB_CC_PRIVILEGE 159 
#define  CSB_CC_PROTECTION 158 
#define  CSB_CC_PROTECTION_DUP1 157 
#define  CSB_CC_PROTECTION_DUP2 156 
#define  CSB_CC_PROTECTION_DUP3 155 
#define  CSB_CC_PROTECTION_DUP4 154 
#define  CSB_CC_PROTECTION_DUP5 153 
#define  CSB_CC_PROTECTION_DUP6 152 
#define  CSB_CC_PROVISION 151 
#define  CSB_CC_RD_EXTERNAL 150 
#define  CSB_CC_RD_EXTERNAL_DUP1 149 
#define  CSB_CC_RD_EXTERNAL_DUP2 148 
#define  CSB_CC_RD_EXTERNAL_DUP3 147 
#define  CSB_CC_SEGMENTED_DDL 146 
#define  CSB_CC_SEQUENCE 145 
#define  CSB_CC_SESSION 144 
#define  CSB_CC_SUCCESS 143 
#define  CSB_CC_TEMPL_INVALID 142 
#define  CSB_CC_TEMPL_OVERFLOW 141 
#define  CSB_CC_TPBC_GT_SPBC 140 
#define  CSB_CC_TRANSLATION 139 
#define  CSB_CC_TRANSLATION_DUP1 138 
#define  CSB_CC_TRANSLATION_DUP2 137 
#define  CSB_CC_TRANSLATION_DUP3 136 
#define  CSB_CC_TRANSLATION_DUP4 135 
#define  CSB_CC_TRANSLATION_DUP5 134 
#define  CSB_CC_TRANSLATION_DUP6 133 
#define  CSB_CC_TRANSPORT 132 
#define  CSB_CC_UNKNOWN_CODE 131 
#define  CSB_CC_WR_EXTERNAL 130 
#define  CSB_CC_WR_PROTECTION 129 
#define  CSB_CC_WR_TRANSLATION 128 
 int CSB_CE_INCOMPLETE ; 
 int CSB_CE_TERMINATION ; 
 int CSB_CE_TPBC ; 
 int CSB_CH ; 
 int /*<<< orphan*/  FUNC0 (struct coprocessor_status_block*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct coprocessor_status_block*,char*) ; 
 int CSB_F ; 
 int CSB_V ; 
 int /*<<< orphan*/  CSB_WAIT_MAX ; 
 int EINTR ; 
 int EINVAL ; 
 int ENOSPC ; 
 int EPROTO ; 
 int ETIMEDOUT ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC11(struct nx842_workmem *wmem,
			struct coprocessor_status_block *csb)
{
	ktime_t start = wmem->start, now = FUNC8();
	ktime_t timeout = FUNC6(start, CSB_WAIT_MAX);

	while (!(FUNC2(csb->flags) & CSB_V)) {
		FUNC5();
		now = FUNC8();
		if (FUNC7(now, timeout))
			break;
	}

	/* hw has updated csb and output buffer */
	FUNC3();

	/* check CSB flags */
	if (!(csb->flags & CSB_V)) {
		FUNC0(csb, "CSB still not valid after %ld us, giving up",
			(long)FUNC9(now, start));
		return -ETIMEDOUT;
	}
	if (csb->flags & CSB_F) {
		FUNC0(csb, "Invalid CSB format");
		return -EPROTO;
	}
	if (csb->flags & CSB_CH) {
		FUNC0(csb, "Invalid CSB chaining state");
		return -EPROTO;
	}

	/* verify CSB completion sequence is 0 */
	if (csb->cs) {
		FUNC0(csb, "Invalid CSB completion sequence");
		return -EPROTO;
	}

	/* check CSB Completion Code */
	switch (csb->cc) {
	/* no error */
	case CSB_CC_SUCCESS:
		break;
	case CSB_CC_TPBC_GT_SPBC:
		/* not an error, but the compressed data is
		 * larger than the uncompressed data :(
		 */
		break;

	/* input data errors */
	case CSB_CC_OPERAND_OVERLAP:
		/* input and output buffers overlap */
		FUNC0(csb, "Operand Overlap error");
		return -EINVAL;
	case CSB_CC_INVALID_OPERAND:
		FUNC0(csb, "Invalid operand");
		return -EINVAL;
	case CSB_CC_NOSPC:
		/* output buffer too small */
		return -ENOSPC;
	case CSB_CC_ABORT:
		FUNC0(csb, "Function aborted");
		return -EINTR;
	case CSB_CC_CRC_MISMATCH:
		FUNC0(csb, "CRC mismatch");
		return -EINVAL;
	case CSB_CC_TEMPL_INVALID:
		FUNC0(csb, "Compressed data template invalid");
		return -EINVAL;
	case CSB_CC_TEMPL_OVERFLOW:
		FUNC0(csb, "Compressed data template shows data past end");
		return -EINVAL;
	case CSB_CC_EXCEED_BYTE_COUNT:	/* P9 or later */
		/*
		 * DDE byte count exceeds the limit specified in Maximum
		 * byte count register.
		 */
		FUNC0(csb, "DDE byte count exceeds the limit");
		return -EINVAL;

	/* these should not happen */
	case CSB_CC_INVALID_ALIGN:
		/* setup_ddl should have detected this */
		FUNC1(csb, "Invalid alignment");
		return -EINVAL;
	case CSB_CC_DATA_LENGTH:
		/* setup_ddl should have detected this */
		FUNC0(csb, "Invalid data length");
		return -EINVAL;
	case CSB_CC_WR_TRANSLATION:
	case CSB_CC_TRANSLATION:
	case CSB_CC_TRANSLATION_DUP1:
	case CSB_CC_TRANSLATION_DUP2:
	case CSB_CC_TRANSLATION_DUP3:
	case CSB_CC_TRANSLATION_DUP4:
	case CSB_CC_TRANSLATION_DUP5:
	case CSB_CC_TRANSLATION_DUP6:
		/* should not happen, we use physical addrs */
		FUNC1(csb, "Translation error");
		return -EPROTO;
	case CSB_CC_WR_PROTECTION:
	case CSB_CC_PROTECTION:
	case CSB_CC_PROTECTION_DUP1:
	case CSB_CC_PROTECTION_DUP2:
	case CSB_CC_PROTECTION_DUP3:
	case CSB_CC_PROTECTION_DUP4:
	case CSB_CC_PROTECTION_DUP5:
	case CSB_CC_PROTECTION_DUP6:
		/* should not happen, we use physical addrs */
		FUNC1(csb, "Protection error");
		return -EPROTO;
	case CSB_CC_PRIVILEGE:
		/* shouldn't happen, we're in HYP mode */
		FUNC0(csb, "Insufficient Privilege error");
		return -EPROTO;
	case CSB_CC_EXCESSIVE_DDE:
		/* shouldn't happen, setup_ddl doesn't use many dde's */
		FUNC0(csb, "Too many DDEs in DDL");
		return -EINVAL;
	case CSB_CC_TRANSPORT:
	case CSB_CC_INVALID_CRB:	/* P9 or later */
		/* shouldn't happen, we setup CRB correctly */
		FUNC0(csb, "Invalid CRB");
		return -EINVAL;
	case CSB_CC_INVALID_DDE:	/* P9 or later */
		/*
		 * shouldn't happen, setup_direct/indirect_dde creates
		 * DDE right
		 */
		FUNC0(csb, "Invalid DDE");
		return -EINVAL;
	case CSB_CC_SEGMENTED_DDL:
		/* shouldn't happen, setup_ddl creates DDL right */
		FUNC0(csb, "Segmented DDL error");
		return -EINVAL;
	case CSB_CC_DDE_OVERFLOW:
		/* shouldn't happen, setup_ddl creates DDL right */
		FUNC0(csb, "DDE overflow error");
		return -EINVAL;
	case CSB_CC_SESSION:
		/* should not happen with ICSWX */
		FUNC0(csb, "Session violation error");
		return -EPROTO;
	case CSB_CC_CHAIN:
		/* should not happen, we don't use chained CRBs */
		FUNC0(csb, "Chained CRB error");
		return -EPROTO;
	case CSB_CC_SEQUENCE:
		/* should not happen, we don't use chained CRBs */
		FUNC0(csb, "CRB sequence number error");
		return -EPROTO;
	case CSB_CC_UNKNOWN_CODE:
		FUNC0(csb, "Unknown subfunction code");
		return -EPROTO;

	/* hardware errors */
	case CSB_CC_RD_EXTERNAL:
	case CSB_CC_RD_EXTERNAL_DUP1:
	case CSB_CC_RD_EXTERNAL_DUP2:
	case CSB_CC_RD_EXTERNAL_DUP3:
		FUNC1(csb, "Read error outside coprocessor");
		return -EPROTO;
	case CSB_CC_WR_EXTERNAL:
		FUNC1(csb, "Write error outside coprocessor");
		return -EPROTO;
	case CSB_CC_INTERNAL:
		FUNC0(csb, "Internal error in coprocessor");
		return -EPROTO;
	case CSB_CC_PROVISION:
		FUNC0(csb, "Storage provision error");
		return -EPROTO;
	case CSB_CC_HW:
		FUNC0(csb, "Correctable hardware error");
		return -EPROTO;
	case CSB_CC_HW_EXPIRED_TIMER:	/* P9 or later */
		FUNC0(csb, "Job did not finish within allowed time");
		return -EPROTO;

	default:
		FUNC0(csb, "Invalid CC %d", csb->cc);
		return -EPROTO;
	}

	/* check Completion Extension state */
	if (csb->ce & CSB_CE_TERMINATION) {
		FUNC0(csb, "CSB request was terminated");
		return -EPROTO;
	}
	if (csb->ce & CSB_CE_INCOMPLETE) {
		FUNC0(csb, "CSB request not complete");
		return -EPROTO;
	}
	if (!(csb->ce & CSB_CE_TPBC)) {
		FUNC0(csb, "TPBC not provided, unknown target length");
		return -EPROTO;
	}

	/* successful completion */
	FUNC10("Processed %u bytes in %lu us\n",
			     FUNC4(csb->count),
			     (unsigned long)FUNC9(now, start));

	return 0;
}