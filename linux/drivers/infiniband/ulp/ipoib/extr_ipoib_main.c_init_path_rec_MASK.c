#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  union ib_gid {int dummy; } ib_gid ;
struct TYPE_5__ {int /*<<< orphan*/  raw; } ;
struct TYPE_6__ {int numb_path; int /*<<< orphan*/  traffic_class; int /*<<< orphan*/  pkey; int /*<<< orphan*/  sgid; TYPE_1__ dgid; int /*<<< orphan*/  rec_type; } ;
struct ipoib_path {TYPE_2__ pathrec; int /*<<< orphan*/  dev; } ;
struct ipoib_dev_priv {TYPE_4__* broadcast; int /*<<< orphan*/  pkey; int /*<<< orphan*/  local_gid; int /*<<< orphan*/  port; int /*<<< orphan*/  ca; int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  traffic_class; } ;
struct TYPE_8__ {TYPE_3__ mcmember; } ;

/* Variables and functions */
 int /*<<< orphan*/  SA_PATH_REC_TYPE_IB ; 
 int /*<<< orphan*/  SA_PATH_REC_TYPE_OPA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ipoib_dev_priv *priv, struct ipoib_path *path,
			  void *gid)
{
	path->dev = priv->dev;

	if (FUNC2(priv->ca, priv->port))
		path->pathrec.rec_type = SA_PATH_REC_TYPE_OPA;
	else
		path->pathrec.rec_type = SA_PATH_REC_TYPE_IB;

	FUNC1(path->pathrec.dgid.raw, gid, sizeof(union ib_gid));
	path->pathrec.sgid	    = priv->local_gid;
	path->pathrec.pkey	    = FUNC0(priv->pkey);
	path->pathrec.numb_path     = 1;
	path->pathrec.traffic_class = priv->broadcast->mcmember.traffic_class;
}