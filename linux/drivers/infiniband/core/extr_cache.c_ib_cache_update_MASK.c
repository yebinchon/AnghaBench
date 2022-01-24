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
struct ib_port_attr {int pkey_tbl_len; int table_len; int /*<<< orphan*/  subnet_prefix; int /*<<< orphan*/  state; int /*<<< orphan*/  lmc; scalar_t__ table; int /*<<< orphan*/  gid_tbl_len; } ;
struct ib_pkey_cache {int pkey_tbl_len; int table_len; int /*<<< orphan*/  subnet_prefix; int /*<<< orphan*/  state; int /*<<< orphan*/  lmc; scalar_t__ table; int /*<<< orphan*/  gid_tbl_len; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct ib_device {TYPE_3__ cache; TYPE_2__* port_data; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  subnet_prefix; int /*<<< orphan*/  port_state; int /*<<< orphan*/  lmc; struct ib_port_attr* pkey; } ;
struct TYPE_5__ {TYPE_1__ cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct ib_device*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,...) ; 
 int FUNC2 (struct ib_device*,size_t,int,scalar_t__) ; 
 int FUNC3 (struct ib_device*,size_t,struct ib_port_attr*) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_device*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_port_attr*) ; 
 struct ib_port_attr* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_device*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct ib_device*,size_t) ; 
 int FUNC9 (struct ib_port_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  table ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct ib_device *device,
			    u8                port,
			    bool	      enforce_security)
{
	struct ib_port_attr       *tprops = NULL;
	struct ib_pkey_cache      *pkey_cache = NULL, *old_pkey_cache;
	int                        i;
	int                        ret;

	if (!FUNC7(device, port))
		return;

	tprops = FUNC6(sizeof *tprops, GFP_KERNEL);
	if (!tprops)
		return;

	ret = FUNC3(device, port, tprops);
	if (ret) {
		FUNC1(&device->dev, "ib_query_port failed (%d)\n", ret);
		goto err;
	}

	if (!FUNC8(device, port)) {
		ret = FUNC0(device, port,
						tprops->gid_tbl_len);
		if (ret)
			goto err;
	}

	pkey_cache = FUNC6(FUNC9(pkey_cache, table,
					 tprops->pkey_tbl_len),
			     GFP_KERNEL);
	if (!pkey_cache)
		goto err;

	pkey_cache->table_len = tprops->pkey_tbl_len;

	for (i = 0; i < pkey_cache->table_len; ++i) {
		ret = FUNC2(device, port, i, pkey_cache->table + i);
		if (ret) {
			FUNC1(&device->dev,
				 "ib_query_pkey failed (%d) for index %d\n",
				 ret, i);
			goto err;
		}
	}

	FUNC10(&device->cache.lock);

	old_pkey_cache = device->port_data[port].cache.pkey;

	device->port_data[port].cache.pkey = pkey_cache;
	device->port_data[port].cache.lmc = tprops->lmc;
	device->port_data[port].cache.port_state = tprops->state;

	device->port_data[port].cache.subnet_prefix = tprops->subnet_prefix;
	FUNC11(&device->cache.lock);

	if (enforce_security)
		FUNC4(device,
					 port,
					 tprops->subnet_prefix);

	FUNC5(old_pkey_cache);
	FUNC5(tprops);
	return;

err:
	FUNC5(pkey_cache);
	FUNC5(tprops);
}