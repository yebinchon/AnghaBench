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
struct hfi1_devdata {size_t hfi1_id; } ;
struct firmware_details {int firmware_len; int /*<<< orphan*/  signature; int /*<<< orphan*/ * firmware_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  WRITE_SBUS_RECEIVER ; 
 int /*<<< orphan*/  FUNC0 (struct hfi1_devdata*,char*) ; 
 int /*<<< orphan*/ * fabric_serdes_broadcast ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_devdata*,struct firmware_details*) ; 
 int FUNC2 (struct hfi1_devdata*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hfi1_devdata*,int /*<<< orphan*/  const,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct hfi1_devdata *dd,
				       struct firmware_details *fdet)
{
	int i, err;
	const u8 ra = fabric_serdes_broadcast[dd->hfi1_id]; /* receiver addr */

	FUNC0(dd, "Downloading fabric firmware\n");

	/* step 1: load security variables */
	FUNC1(dd, fdet);
	/* step 2: place SerDes in reset and disable SPICO */
	FUNC3(dd, ra, 0x07, WRITE_SBUS_RECEIVER, 0x00000011);
	/* wait 100 refclk cycles @ 156.25MHz => 640ns */
	FUNC4(1);
	/* step 3:  remove SerDes reset */
	FUNC3(dd, ra, 0x07, WRITE_SBUS_RECEIVER, 0x00000010);
	/* step 4: assert IMEM override */
	FUNC3(dd, ra, 0x00, WRITE_SBUS_RECEIVER, 0x40000000);
	/* step 5: download SerDes machine code */
	for (i = 0; i < fdet->firmware_len; i += 4) {
		FUNC3(dd, ra, 0x0a, WRITE_SBUS_RECEIVER,
			     *(u32 *)&fdet->firmware_ptr[i]);
	}
	/* step 6: IMEM override off */
	FUNC3(dd, ra, 0x00, WRITE_SBUS_RECEIVER, 0x00000000);
	/* step 7: turn ECC on */
	FUNC3(dd, ra, 0x0b, WRITE_SBUS_RECEIVER, 0x000c0000);

	/* steps 8-11: run the RSA engine */
	err = FUNC2(dd, "fabric serdes", fdet->signature);
	if (err)
		return err;

	/* step 12: turn SPICO enable on */
	FUNC3(dd, ra, 0x07, WRITE_SBUS_RECEIVER, 0x00000002);
	/* step 13: enable core hardware interrupts */
	FUNC3(dd, ra, 0x08, WRITE_SBUS_RECEIVER, 0x00000000);

	return 0;
}