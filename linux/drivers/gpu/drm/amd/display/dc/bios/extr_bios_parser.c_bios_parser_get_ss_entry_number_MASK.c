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
struct dc_bios {int dummy; } ;
struct bios_parser {int dummy; } ;
struct atom_data_revision {int major; int /*<<< orphan*/  minor; } ;
typedef  enum as_signal_type { ____Placeholder_as_signal_type } as_signal_type ;

/* Variables and functions */
 int /*<<< orphan*/  ASIC_InternalSS_Info ; 
 int ATOM_COMMON_TABLE_HEADER ; 
 struct bios_parser* FUNC0 (struct dc_bios*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,struct atom_data_revision*) ; 
 int /*<<< orphan*/  FUNC4 (struct bios_parser*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bios_parser*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bios_parser*,int /*<<< orphan*/ ) ; 
 int header ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static uint32_t FUNC8(
	struct dc_bios *dcb,
	enum as_signal_type signal)
{
	struct bios_parser *bp = FUNC0(dcb);
	uint32_t ss_id = 0;
	ATOM_COMMON_TABLE_HEADER *header;
	struct atom_data_revision revision;

	ss_id = FUNC7(signal);

	if (!FUNC1(ASIC_InternalSS_Info))
		return FUNC6(bp, ss_id);

	header = FUNC2(ATOM_COMMON_TABLE_HEADER,
			FUNC1(ASIC_InternalSS_Info));
	FUNC3(header, &revision);

	switch (revision.major) {
	case 2:
		switch (revision.minor) {
		case 1:
			return FUNC4(bp, ss_id);
		default:
			break;
		}
		break;
	case 3:
		switch (revision.minor) {
		case 1:
			return
				FUNC5(
						bp, ss_id);
		default:
			break;
		}
		break;
	default:
		break;
	}

	return 0;
}