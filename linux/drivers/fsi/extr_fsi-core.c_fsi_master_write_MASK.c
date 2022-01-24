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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct fsi_master {int (* write ) (struct fsi_master*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*,size_t) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC1 (struct fsi_master*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct fsi_master*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int,void const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fsi_master*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,void const*) ; 

__attribute__((used)) static int FUNC4(struct fsi_master *master, int link,
		uint8_t slave_id, uint32_t addr, const void *val, size_t size)
{
	int rc;

	FUNC3(master, link, slave_id, addr, size, val);

	rc = FUNC0(addr, size);
	if (!rc)
		rc = master->write(master, link, slave_id, addr, val, size);

	FUNC2(master, link, slave_id, addr, size,
			true, val, rc);

	return rc;
}