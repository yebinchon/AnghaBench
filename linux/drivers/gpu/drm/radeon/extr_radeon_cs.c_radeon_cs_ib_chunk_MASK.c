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
struct radeon_device {int dummy; } ;
struct radeon_cs_parser {int cs_flags; scalar_t__ ring; int /*<<< orphan*/  ib; scalar_t__ parser_error; int /*<<< orphan*/ * chunk_ib; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ERESTARTSYS ; 
 scalar_t__ R600_RING_TYPE_UVD_INDEX ; 
 int RADEON_CS_USE_VM ; 
 scalar_t__ TN_RING_TYPE_VCE1_INDEX ; 
 scalar_t__ TN_RING_TYPE_VCE2_INDEX ; 
 int FUNC1 (struct radeon_device*,scalar_t__,struct radeon_cs_parser*) ; 
 int FUNC2 (struct radeon_cs_parser*) ; 
 int FUNC3 (struct radeon_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*) ; 

__attribute__((used)) static int FUNC6(struct radeon_device *rdev,
			      struct radeon_cs_parser *parser)
{
	int r;

	if (parser->chunk_ib == NULL)
		return 0;

	if (parser->cs_flags & RADEON_CS_USE_VM)
		return 0;

	r = FUNC1(rdev, parser->ring, parser);
	if (r || parser->parser_error) {
		FUNC0("Invalid command stream !\n");
		return r;
	}

	r = FUNC2(parser);
	if (r) {
		if (r != -ERESTARTSYS)
			FUNC0("Failed to sync rings: %i\n", r);
		return r;
	}

	if (parser->ring == R600_RING_TYPE_UVD_INDEX)
		FUNC4(rdev);
	else if ((parser->ring == TN_RING_TYPE_VCE1_INDEX) ||
		 (parser->ring == TN_RING_TYPE_VCE2_INDEX))
		FUNC5(rdev);

	r = FUNC3(rdev, &parser->ib, NULL, true);
	if (r) {
		FUNC0("Failed to schedule IB !\n");
	}
	return r;
}