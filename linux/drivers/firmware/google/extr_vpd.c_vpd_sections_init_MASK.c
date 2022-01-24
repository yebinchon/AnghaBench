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
struct vpd_cbmem {scalar_t__ magic; scalar_t__ rw_size; scalar_t__ ro_size; } ;
typedef  scalar_t__ phys_addr_t ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MEMREMAP_WB ; 
 scalar_t__ VPD_CBMEM_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (struct vpd_cbmem*,struct vpd_cbmem*,int) ; 
 struct vpd_cbmem* FUNC1 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vpd_cbmem*) ; 
 int /*<<< orphan*/  ro_vpd ; 
 int /*<<< orphan*/  rw_vpd ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC5(phys_addr_t physaddr)
{
	struct vpd_cbmem *temp;
	struct vpd_cbmem header;
	int ret = 0;

	temp = FUNC1(physaddr, sizeof(struct vpd_cbmem), MEMREMAP_WB);
	if (!temp)
		return -ENOMEM;

	FUNC0(&header, temp, sizeof(struct vpd_cbmem));
	FUNC2(temp);

	if (header.magic != VPD_CBMEM_MAGIC)
		return -ENODEV;

	if (header.ro_size) {
		ret = FUNC4("ro", &ro_vpd,
				       physaddr + sizeof(struct vpd_cbmem),
				       header.ro_size);
		if (ret)
			return ret;
	}

	if (header.rw_size) {
		ret = FUNC4("rw", &rw_vpd,
				       physaddr + sizeof(struct vpd_cbmem) +
				       header.ro_size, header.rw_size);
		if (ret) {
			FUNC3(&ro_vpd);
			return ret;
		}
	}

	return 0;
}