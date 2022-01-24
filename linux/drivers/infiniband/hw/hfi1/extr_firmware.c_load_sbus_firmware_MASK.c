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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct hfi1_devdata {int dummy; } ;
struct firmware_details {int firmware_len; int /*<<< orphan*/  signature; int /*<<< orphan*/ * firmware_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  SBUS_MASTER_BROADCAST ; 
 int /*<<< orphan*/  WRITE_SBUS_RECEIVER ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,struct firmware_details*) ; 
 int FUNC2 (struct hfi1_devdata*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*,int /*<<< orphan*/  const,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct hfi1_devdata *dd,
			      struct firmware_details *fdet)
{
	int i, err;
	const u8 ra = SBUS_MASTER_BROADCAST; /* receiver address */

	FUNC0(dd, "Downloading SBus firmware\n");

	/* step 1: load security variables */
	FUNC1(dd, fdet);
	/* step 2: place SPICO into reset and enable off */
	FUNC3(dd, ra, 0x01, WRITE_SBUS_RECEIVER, 0x000000c0);
	/* step 3: remove reset, enable off, IMEM_CNTRL_EN on */
	FUNC3(dd, ra, 0x01, WRITE_SBUS_RECEIVER, 0x00000240);
	/* step 4: set starting IMEM address for burst download */
	FUNC3(dd, ra, 0x03, WRITE_SBUS_RECEIVER, 0x80000000);
	/* step 5: download the SBus Master machine code */
	for (i = 0; i < fdet->firmware_len; i += 4) {
		FUNC3(dd, ra, 0x14, WRITE_SBUS_RECEIVER,
			     *(u32 *)&fdet->firmware_ptr[i]);
	}
	/* step 6: set IMEM_CNTL_EN off */
	FUNC3(dd, ra, 0x01, WRITE_SBUS_RECEIVER, 0x00000040);
	/* step 7: turn ECC on */
	FUNC3(dd, ra, 0x16, WRITE_SBUS_RECEIVER, 0x000c0000);

	/* steps 8-11: run the RSA engine */
	err = FUNC2(dd, "SBus", fdet->signature);
	if (err)
		return err;

	/* step 12: set SPICO_ENABLE on */
	FUNC3(dd, ra, 0x01, WRITE_SBUS_RECEIVER, 0x00000140);

	return 0;
}