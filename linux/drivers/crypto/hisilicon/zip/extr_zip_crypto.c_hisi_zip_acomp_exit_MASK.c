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
struct hisi_zip_ctx {int dummy; } ;
struct crypto_acomp {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 struct hisi_zip_ctx* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hisi_zip_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct hisi_zip_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct hisi_zip_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (struct hisi_zip_ctx*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct crypto_acomp *tfm)
{
	struct hisi_zip_ctx *ctx = FUNC0(&tfm->base);

	FUNC4(ctx, NULL);
	FUNC3(ctx);
	FUNC2(ctx);
	FUNC1(ctx);
}