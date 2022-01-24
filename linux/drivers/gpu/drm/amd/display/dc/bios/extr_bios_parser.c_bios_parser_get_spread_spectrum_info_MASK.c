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
typedef  int /*<<< orphan*/  uint32_t ;
struct spread_spectrum_info {int dummy; } ;
struct dc_bios {int dummy; } ;
struct bios_parser {int dummy; } ;
struct atom_data_revision {int major; int /*<<< orphan*/  minor; } ;
typedef  enum bp_result { ____Placeholder_bp_result } bp_result ;
typedef  enum as_signal_type { ____Placeholder_as_signal_type } as_signal_type ;

/* Variables and functions */
 int /*<<< orphan*/  ASIC_InternalSS_Info ; 
 int ATOM_COMMON_TABLE_HEADER ; 
 struct bios_parser* FUNC0 (struct dc_bios*) ; 
 int BP_RESULT_BADINPUT ; 
 int BP_RESULT_UNSUPPORTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,struct atom_data_revision*) ; 
 int FUNC4 (struct bios_parser*,int /*<<< orphan*/ ,struct spread_spectrum_info*) ; 
 int FUNC5 (struct bios_parser*,int /*<<< orphan*/ ,struct spread_spectrum_info*) ; 
 int FUNC6 (struct bios_parser*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct spread_spectrum_info*) ; 
 int header ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static enum bp_result FUNC8(
	struct dc_bios *dcb,
	enum as_signal_type signal,
	uint32_t index,
	struct spread_spectrum_info *ss_info)
{
	struct bios_parser *bp = FUNC0(dcb);
	enum bp_result result = BP_RESULT_UNSUPPORTED;
	uint32_t clk_id_ss = 0;
	ATOM_COMMON_TABLE_HEADER *header;
	struct atom_data_revision tbl_revision;

	if (!ss_info) /* check for bad input */
		return BP_RESULT_BADINPUT;
	/* signal translation */
	clk_id_ss = FUNC7(signal);

	if (!FUNC1(ASIC_InternalSS_Info))
		if (!index)
			return FUNC4(bp, clk_id_ss,
				ss_info);

	header = FUNC2(ATOM_COMMON_TABLE_HEADER,
		FUNC1(ASIC_InternalSS_Info));
	FUNC3(header, &tbl_revision);

	switch (tbl_revision.major) {
	case 2:
		switch (tbl_revision.minor) {
		case 1:
			/* there can not be more then one entry for Internal
			 * SS Info table version 2.1 */
			if (!index)
				return FUNC5(bp, clk_id_ss,
						ss_info);
			break;
		default:
			break;
		}
		break;

	case 3:
		switch (tbl_revision.minor) {
		case 1:
			return FUNC6(bp, clk_id_ss, index, ss_info);
		default:
			break;
		}
		break;
	default:
		break;
	}
	/* there can not be more then one entry for SS Info table */
	return result;
}