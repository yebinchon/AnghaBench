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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct fw_device {int /*<<< orphan*/  max_speed; int /*<<< orphan*/  node_id; int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int CSR_CONFIG_ROM ; 
 int CSR_REGISTER_BASE ; 
 int RCODE_BUSY ; 
 int /*<<< orphan*/  TCODE_READ_QUADLET_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct fw_device *device,
		    int generation, int index, u32 *data)
{
	u64 offset = (CSR_REGISTER_BASE | CSR_CONFIG_ROM) + index * 4;
	int i, rcode;

	/* device->node_id, accessed below, must not be older than generation */
	FUNC3();

	for (i = 10; i < 100; i += 10) {
		rcode = FUNC1(device->card,
				TCODE_READ_QUADLET_REQUEST, device->node_id,
				generation, device->max_speed, offset, data, 4);
		if (rcode != RCODE_BUSY)
			break;
		FUNC2(i);
	}
	FUNC0(data);

	return rcode;
}