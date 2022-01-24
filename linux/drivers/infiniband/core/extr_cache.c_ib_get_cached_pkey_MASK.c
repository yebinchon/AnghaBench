#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct ib_pkey_cache {int table_len; int /*<<< orphan*/ * table; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct ib_device {TYPE_3__ cache; TYPE_2__* port_data; } ;
struct TYPE_4__ {struct ib_pkey_cache* pkey; } ;
struct TYPE_5__ {TYPE_1__ cache; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ib_device*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct ib_device *device,
		       u8                port_num,
		       int               index,
		       u16              *pkey)
{
	struct ib_pkey_cache *cache;
	unsigned long flags;
	int ret = 0;

	if (!FUNC0(device, port_num))
		return -EINVAL;

	FUNC1(&device->cache.lock, flags);

	cache = device->port_data[port_num].cache.pkey;

	if (index < 0 || index >= cache->table_len)
		ret = -EINVAL;
	else
		*pkey = cache->table[index];

	FUNC2(&device->cache.lock, flags);

	return ret;
}