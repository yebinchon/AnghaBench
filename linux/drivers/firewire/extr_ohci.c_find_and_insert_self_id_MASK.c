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
typedef  int u32 ;
struct fw_ohci {int* self_id_buffer; int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  OHCI1394_NodeID ; 
 int OHCI1394_NodeID_idValid ; 
 int FUNC0 (struct fw_ohci*,int,int) ; 
 int FUNC1 (struct fw_ohci*,int) ; 
 int FUNC2 (struct fw_ohci*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fw_ohci*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct fw_ohci*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct fw_ohci *ohci, int self_id_count)
{
	int reg, i, pos, status;
	/* link active 1, speed 3, bridge 0, contender 1, more packets 0 */
	u32 self_id = 0x8040c800;

	reg = FUNC6(ohci, OHCI1394_NodeID);
	if (!(reg & OHCI1394_NodeID_idValid)) {
		FUNC4(ohci,
			    "node ID not valid, new bus reset in progress\n");
		return -EBUSY;
	}
	self_id |= ((reg & 0x3f) << 24); /* phy ID */

	reg = FUNC5(&ohci->card, 4);
	if (reg < 0)
		return reg;
	self_id |= ((reg & 0x07) << 8); /* power class */

	reg = FUNC5(&ohci->card, 1);
	if (reg < 0)
		return reg;
	self_id |= ((reg & 0x3f) << 16); /* gap count */

	for (i = 0; i < 3; i++) {
		status = FUNC1(ohci, i);
		if (status < 0)
			return status;
		self_id |= ((status & 0x3) << (6 - (i * 2)));
	}

	self_id |= FUNC2(ohci);

	pos = FUNC0(ohci, self_id, self_id_count);
	if (pos >= 0) {
		FUNC3(&(ohci->self_id_buffer[pos+1]),
			&(ohci->self_id_buffer[pos]),
			(self_id_count - pos) * sizeof(*ohci->self_id_buffer));
		ohci->self_id_buffer[pos] = self_id;
		self_id_count++;
	}
	return self_id_count;
}