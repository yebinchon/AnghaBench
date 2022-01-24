#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {int /*<<< orphan*/ * proposed_mac; } ;
struct flexcop_device {scalar_t__ (* get_mac_addr ) (struct flexcop_device*,int /*<<< orphan*/ ) ;TYPE_1__ dvb_adapter; } ;
struct TYPE_4__ {scalar_t__ raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct flexcop_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct flexcop_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct flexcop_device*,char*,char*) ; 
 int FUNC3 (struct flexcop_device*) ; 
 int FUNC4 (struct flexcop_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct flexcop_device*) ; 
 int FUNC6 (struct flexcop_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct flexcop_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct flexcop_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct flexcop_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct flexcop_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct flexcop_device*) ; 
 TYPE_2__ ibi_zero ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct flexcop_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

int FUNC15(struct flexcop_device *fc)
{
	int ret;
	ibi_zero.raw = 0;

	FUNC8(fc);
	FUNC0(fc);
	FUNC11(fc);
	FUNC5(fc);
	FUNC10(fc, 0);

	ret = FUNC3(fc);
	if (ret)
		goto error;

	/* i2c has to be done before doing EEProm stuff -
	 * because the EEProm is accessed via i2c */
	ret = FUNC6(fc);
	if (ret)
		goto error;

	/* do the MAC address reading after initializing the dvb_adapter */
	if (fc->get_mac_addr(fc, 0) == 0) {
		u8 *b = fc->dvb_adapter.proposed_mac;
		FUNC12("MAC address = %pM", b);
		FUNC9(fc,b);
		FUNC7(fc,1);
	} else
		FUNC14("reading of MAC address failed.\n");

	ret = FUNC4(fc);
	if (ret)
		goto error;

	FUNC2(fc,"initialization of","complete");
	return 0;

error:
	FUNC1(fc);
	return ret;
}