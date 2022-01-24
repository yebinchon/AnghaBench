#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ interface_id; int /*<<< orphan*/  subnet_prefix; } ;
union ib_gid {TYPE_1__ global; } ;
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct TYPE_7__ {scalar_t__ interface_id; int /*<<< orphan*/  subnet_prefix; } ;
struct TYPE_9__ {TYPE_2__ global; } ;
struct ipoib_dev_priv {scalar_t__ port; TYPE_3__* dev; TYPE_5__ local_gid; int /*<<< orphan*/  flags; int /*<<< orphan*/  ca; } ;
struct TYPE_8__ {TYPE_5__* dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPOIB_FLAG_DEV_ADDR_CTRL ; 
 int /*<<< orphan*/  IPOIB_FLAG_DEV_ADDR_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,union ib_gid*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,union ib_gid*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,union ib_gid*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC8(struct ipoib_dev_priv *priv)
{
	union ib_gid search_gid;
	union ib_gid gid0;
	union ib_gid *netdev_gid;
	int err;
	u16 index;
	u8 port;
	bool ret = false;

	netdev_gid = (union ib_gid *)(priv->dev->dev_addr + 4);
	if (FUNC5(priv->ca, priv->port, 0, &gid0))
		return false;

	FUNC3(priv->dev);

	/* The subnet prefix may have changed, update it now so we won't have
	 * to do it later
	 */
	priv->local_gid.global.subnet_prefix = gid0.global.subnet_prefix;
	netdev_gid->global.subnet_prefix = gid0.global.subnet_prefix;
	search_gid.global.subnet_prefix = gid0.global.subnet_prefix;

	search_gid.global.interface_id = priv->local_gid.global.interface_id;

	FUNC4(priv->dev);

	err = FUNC1(priv->ca, &search_gid, &port, &index);

	FUNC3(priv->dev);

	if (search_gid.global.interface_id !=
	    priv->local_gid.global.interface_id)
		/* There was a change while we were looking up the gid, bail
		 * here and let the next work sort this out
		 */
		goto out;

	/* The next section of code needs some background:
	 * Per IB spec the port GUID can't change if the HCA is powered on.
	 * port GUID is the basis for GID at index 0 which is the basis for
	 * the default device address of a ipoib interface.
	 *
	 * so it seems the flow should be:
	 * if user_changed_dev_addr && gid in gid tbl
	 *	set bit dev_addr_set
	 *	return true
	 * else
	 *	return false
	 *
	 * The issue is that there are devices that don't follow the spec,
	 * they change the port GUID when the HCA is powered, so in order
	 * not to break userspace applications, We need to check if the
	 * user wanted to control the device address and we assume that
	 * if he sets the device address back to be based on GID index 0,
	 * he no longer wishs to control it.
	 *
	 * If the user doesn't control the the device address,
	 * IPOIB_FLAG_DEV_ADDR_SET is set and ib_find_gid failed it means
	 * the port GUID has changed and GID at index 0 has changed
	 * so we need to change priv->local_gid and priv->dev->dev_addr
	 * to reflect the new GID.
	 */
	if (!FUNC7(IPOIB_FLAG_DEV_ADDR_SET, &priv->flags)) {
		if (!err && port == priv->port) {
			FUNC6(IPOIB_FLAG_DEV_ADDR_SET, &priv->flags);
			if (index == 0)
				FUNC0(IPOIB_FLAG_DEV_ADDR_CTRL,
					  &priv->flags);
			else
				FUNC6(IPOIB_FLAG_DEV_ADDR_CTRL, &priv->flags);
			ret = true;
		} else {
			ret = false;
		}
	} else {
		if (!err && port == priv->port) {
			ret = true;
		} else {
			if (!FUNC7(IPOIB_FLAG_DEV_ADDR_CTRL, &priv->flags)) {
				FUNC2(&priv->local_gid, &gid0,
				       sizeof(priv->local_gid));
				FUNC2(priv->dev->dev_addr + 4, &gid0,
				       sizeof(priv->local_gid));
				ret = true;
			}
		}
	}

out:
	FUNC4(priv->dev);

	return ret;
}