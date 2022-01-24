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
struct mv_cesa_dev {TYPE_1__* caps; } ;
struct TYPE_2__ {int nahash_algs; int ncipher_algs; int /*<<< orphan*/ * cipher_algs; int /*<<< orphan*/ * ahash_algs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mv_cesa_dev *cesa)
{
	int i;

	for (i = 0; i < cesa->caps->nahash_algs; i++)
		FUNC0(cesa->caps->ahash_algs[i]);

	for (i = 0; i < cesa->caps->ncipher_algs; i++)
		FUNC1(cesa->caps->cipher_algs[i]);
}