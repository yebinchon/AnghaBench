#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char* u32 ;
struct seq_file {scalar_t__ private; } ;
struct dpaa2_caam_priv {int num_pairs; TYPE_2__* tx_queue_attr; TYPE_1__* rx_queue_attr; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {char* fqid; } ;
struct TYPE_3__ {char* fqid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,char**,char**) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*,char*,...) ; 

__attribute__((used)) static int FUNC3(struct seq_file *file, void *offset)
{
	struct dpaa2_caam_priv *priv = (struct dpaa2_caam_priv *)file->private;
	u32 fqid, fcnt, bcnt;
	int i, err;

	FUNC2(file, "FQ stats for %s:\n", FUNC0(priv->dev));
	FUNC2(file, "%s%16s%16s\n",
		   "Rx-VFQID",
		   "Pending frames",
		   "Pending bytes");

	for (i = 0; i <  priv->num_pairs; i++) {
		fqid = priv->rx_queue_attr[i].fqid;
		err = FUNC1(NULL, fqid, &fcnt, &bcnt);
		if (err)
			continue;

		FUNC2(file, "%5d%16u%16u\n", fqid, fcnt, bcnt);
	}

	FUNC2(file, "%s%16s%16s\n",
		   "Tx-VFQID",
		   "Pending frames",
		   "Pending bytes");

	for (i = 0; i <  priv->num_pairs; i++) {
		fqid = priv->tx_queue_attr[i].fqid;
		err = FUNC1(NULL, fqid, &fcnt, &bcnt);
		if (err)
			continue;

		FUNC2(file, "%5d%16u%16u\n", fqid, fcnt, bcnt);
	}

	return 0;
}