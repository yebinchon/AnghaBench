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
struct crypto_kpp {int dummy; } ;
struct atmel_ecdh_ctx {int /*<<< orphan*/  client; int /*<<< orphan*/  fallback; int /*<<< orphan*/  public_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct atmel_ecdh_ctx* FUNC3 (struct crypto_kpp*) ; 

__attribute__((used)) static void FUNC4(struct crypto_kpp *tfm)
{
	struct atmel_ecdh_ctx *ctx = FUNC3(tfm);

	FUNC2(ctx->public_key);
	FUNC1(ctx->fallback);
	FUNC0(ctx->client);
}