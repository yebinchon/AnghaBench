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
typedef  scalar_t__ uint32_t ;
struct fsi_master_acf {scalar_t__ cvic; scalar_t__ sram; int /*<<< orphan*/  t_echo_delay; int /*<<< orphan*/  t_send_delay; int /*<<< orphan*/  dev; scalar_t__ is_ast2500; } ;

/* Variables and functions */
 scalar_t__ CF_STARTED ; 
 scalar_t__ ECHO_DLY_REG ; 
 int ENODEV ; 
 scalar_t__ SEND_DLY_REG ; 
 int /*<<< orphan*/  SRAM_SIZE ; 
 int FUNC0 (struct fsi_master_acf*) ; 
 int FUNC1 (struct fsi_master_acf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC5 (struct fsi_master_acf*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct fsi_master_acf*) ; 
 int /*<<< orphan*/  FUNC9 (struct fsi_master_acf*) ; 
 int /*<<< orphan*/  FUNC10 (struct fsi_master_acf*) ; 
 int /*<<< orphan*/  FUNC11 (struct fsi_master_acf*) ; 
 int /*<<< orphan*/  FUNC12 (struct fsi_master_acf*) ; 
 int /*<<< orphan*/  FUNC13 (struct fsi_master_acf*) ; 
 int FUNC14 (struct fsi_master_acf*) ; 
 int /*<<< orphan*/  FUNC15 (struct fsi_master_acf*) ; 

__attribute__((used)) static int FUNC16(struct fsi_master_acf *master)
{
	int timeout, rc;
	uint32_t val;

	/* Make sure the ColdFire is stopped  */
	FUNC9(master);

	/*
	 * Clear SRAM. This needs to happen before we setup the GPIOs
	 * as we might start trying to arbitrate as soon as that happens.
	 */
	FUNC6(master->sram, 0, SRAM_SIZE);

	/* Configure GPIOs */
	rc = FUNC14(master);
	if (rc)
		return rc;

	/* Load the firmware into the reserved memory */
	rc = FUNC5(master);
	if (rc)
		return rc;

	/* Read signature and check versions */
	rc = FUNC0(master);
	if (rc)
		return rc;

	/* Setup coldfire memory map */
	if (master->is_ast2500) {
		FUNC12(master);
		FUNC13(master);
	} else {
		FUNC10(master);
		FUNC11(master);
	}

	/* Start the ColdFire */
	FUNC15(master);

	/* Wait for status register to indicate command completion
	 * which signals the initialization is complete
	 */
	for (timeout = 0; timeout < 10; timeout++) {
		val = FUNC3(master->sram + CF_STARTED);
		if (val)
			break;
		FUNC7(1);
	}
	if (!val) {
		FUNC2(master->dev, "Coprocessor startup timeout !\n");
		rc = -ENODEV;
		goto err;
	}

	/* Configure echo & send delay */
	FUNC4(master->t_send_delay, master->sram + SEND_DLY_REG);
	FUNC4(master->t_echo_delay, master->sram + ECHO_DLY_REG);

	/* Enable SW interrupt to copro if any */
	if (master->cvic) {
		rc = FUNC1(master);
		if (rc)
			goto err;
	}
	return 0;
 err:
	/* An error occurred, don't leave the coprocessor running */
	FUNC9(master);

	/* Release the GPIOs */
	FUNC8(master);

	return rc;
}