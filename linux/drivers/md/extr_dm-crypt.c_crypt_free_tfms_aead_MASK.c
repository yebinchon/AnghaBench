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
struct TYPE_2__ {int /*<<< orphan*/ ** tfms_aead; } ;
struct crypt_config {TYPE_1__ cipher_tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC3(struct crypt_config *cc)
{
	if (!cc->cipher_tfm.tfms_aead)
		return;

	if (cc->cipher_tfm.tfms_aead[0] && !FUNC0(cc->cipher_tfm.tfms_aead[0])) {
		FUNC1(cc->cipher_tfm.tfms_aead[0]);
		cc->cipher_tfm.tfms_aead[0] = NULL;
	}

	FUNC2(cc->cipher_tfm.tfms_aead);
	cc->cipher_tfm.tfms_aead = NULL;
}