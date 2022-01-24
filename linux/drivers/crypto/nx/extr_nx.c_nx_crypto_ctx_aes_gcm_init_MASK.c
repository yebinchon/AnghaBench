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
struct nx_gcm_rctx {int dummy; } ;
struct crypto_aead {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NX_FC_AES ; 
 int /*<<< orphan*/  NX_MODE_AES_GCM ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto_aead*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct crypto_aead *tfm)
{
	FUNC1(tfm, sizeof(struct nx_gcm_rctx));
	return FUNC2(FUNC0(tfm), NX_FC_AES,
				  NX_MODE_AES_GCM);
}