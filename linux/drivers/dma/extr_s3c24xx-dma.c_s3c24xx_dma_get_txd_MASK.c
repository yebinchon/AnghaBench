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
struct s3c24xx_txd {int dcon; int /*<<< orphan*/  dsg_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int S3C24XX_DCON_INT ; 
 int S3C24XX_DCON_NORELOAD ; 
 struct s3c24xx_txd* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct s3c24xx_txd *FUNC2(void)
{
	struct s3c24xx_txd *txd = FUNC1(sizeof(*txd), GFP_NOWAIT);

	if (txd) {
		FUNC0(&txd->dsg_list);
		txd->dcon = S3C24XX_DCON_INT | S3C24XX_DCON_NORELOAD;
	}

	return txd;
}