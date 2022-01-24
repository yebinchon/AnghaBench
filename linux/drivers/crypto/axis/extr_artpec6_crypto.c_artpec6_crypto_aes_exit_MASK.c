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
struct crypto_skcipher {int dummy; } ;
struct artpec6_cryptotfm_context {int dummy; } ;

/* Variables and functions */
 struct artpec6_cryptotfm_context* FUNC0 (struct crypto_skcipher*) ; 
 int /*<<< orphan*/  FUNC1 (struct artpec6_cryptotfm_context*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct crypto_skcipher *tfm)
{
	struct artpec6_cryptotfm_context *ctx = FUNC0(tfm);

	FUNC1(ctx, 0, sizeof(*ctx));
}