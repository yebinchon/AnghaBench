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
struct zx_vou_hw {scalar_t__ dtrc; } ;

/* Variables and functions */
 int /*<<< orphan*/  DETILE_ARIDR_MODE_MASK ; 
 int /*<<< orphan*/  DETILE_ARID_IN_ARIDR ; 
 scalar_t__ DTRC_ARID ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  DTRC_DECOMPRESS_BYPASS ; 
 scalar_t__ DTRC_DETILE_CTRL ; 
 scalar_t__ DTRC_F0_CTRL ; 
 scalar_t__ DTRC_F1_CTRL ; 
 int /*<<< orphan*/  TILE2RASTESCAN_BYPASS_MODE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct zx_vou_hw *vou)
{
	/* Clear bit for bypass by ID */
	FUNC5(vou->dtrc + DTRC_DETILE_CTRL,
		       TILE2RASTESCAN_BYPASS_MODE, 0);

	/* Select ARIDR mode */
	FUNC5(vou->dtrc + DTRC_DETILE_CTRL, DETILE_ARIDR_MODE_MASK,
		       DETILE_ARID_IN_ARIDR);

	/* Bypass decompression for both frames */
	FUNC5(vou->dtrc + DTRC_F0_CTRL, DTRC_DECOMPRESS_BYPASS,
		       DTRC_DECOMPRESS_BYPASS);
	FUNC5(vou->dtrc + DTRC_F1_CTRL, DTRC_DECOMPRESS_BYPASS,
		       DTRC_DECOMPRESS_BYPASS);

	/* Set up ARID register */
	FUNC4(vou->dtrc + DTRC_ARID, FUNC3(0xf) | FUNC2(0xe) |
		  FUNC1(0xf) | FUNC0(0xe));
}