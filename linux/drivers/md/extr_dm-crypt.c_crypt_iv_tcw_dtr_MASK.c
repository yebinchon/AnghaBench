#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct iv_tcw_private {int /*<<< orphan*/ * crc32_tfm; int /*<<< orphan*/ * whitening; int /*<<< orphan*/ * iv_seed; } ;
struct TYPE_2__ {struct iv_tcw_private tcw; } ;
struct crypt_config {TYPE_1__ iv_gen_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct crypt_config *cc)
{
	struct iv_tcw_private *tcw = &cc->iv_gen_private.tcw;

	FUNC2(tcw->iv_seed);
	tcw->iv_seed = NULL;
	FUNC2(tcw->whitening);
	tcw->whitening = NULL;

	if (tcw->crc32_tfm && !FUNC0(tcw->crc32_tfm))
		FUNC1(tcw->crc32_tfm);
	tcw->crc32_tfm = NULL;
}