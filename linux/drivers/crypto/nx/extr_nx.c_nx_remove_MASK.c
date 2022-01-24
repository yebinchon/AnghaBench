#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vio_dev {int /*<<< orphan*/  unit_address; int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {scalar_t__ status; } ;
struct TYPE_5__ {TYPE_1__ of; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  NX_FC_AES ; 
 int /*<<< orphan*/  NX_FC_SHA ; 
 int /*<<< orphan*/  NX_MODE_AES_CBC ; 
 int /*<<< orphan*/  NX_MODE_AES_CCM ; 
 int /*<<< orphan*/  NX_MODE_AES_CTR ; 
 int /*<<< orphan*/  NX_MODE_AES_ECB ; 
 int /*<<< orphan*/  NX_MODE_AES_GCM ; 
 int /*<<< orphan*/  NX_MODE_AES_XCBC_MAC ; 
 int /*<<< orphan*/  NX_MODE_SHA ; 
 scalar_t__ NX_OKAY ; 
 int NX_PROPS_SHA256 ; 
 int NX_PROPS_SHA512 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nx_cbc_aes_alg ; 
 int /*<<< orphan*/  nx_ccm4309_aes_alg ; 
 int /*<<< orphan*/  nx_ccm_aes_alg ; 
 int /*<<< orphan*/  nx_ctr3686_aes_alg ; 
 TYPE_2__ nx_driver ; 
 int /*<<< orphan*/  nx_ecb_aes_alg ; 
 int /*<<< orphan*/  nx_gcm4106_aes_alg ; 
 int /*<<< orphan*/  nx_gcm_aes_alg ; 
 int /*<<< orphan*/  nx_shash_aes_xcbc_alg ; 
 int /*<<< orphan*/  nx_shash_sha256_alg ; 
 int /*<<< orphan*/  nx_shash_sha512_alg ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct vio_dev *viodev)
{
	FUNC1(&viodev->dev, "entering nx_remove for UA 0x%x\n",
		viodev->unit_address);

	if (nx_driver.of.status == NX_OKAY) {
		FUNC0(&nx_driver);

		FUNC4(&nx_shash_aes_xcbc_alg,
				    NX_FC_AES, NX_MODE_AES_XCBC_MAC, -1);
		FUNC4(&nx_shash_sha512_alg,
				    NX_FC_SHA, NX_MODE_SHA, NX_PROPS_SHA256);
		FUNC4(&nx_shash_sha256_alg,
				    NX_FC_SHA, NX_MODE_SHA, NX_PROPS_SHA512);
		FUNC2(&nx_ccm4309_aes_alg,
				   NX_FC_AES, NX_MODE_AES_CCM);
		FUNC2(&nx_ccm_aes_alg, NX_FC_AES, NX_MODE_AES_CCM);
		FUNC2(&nx_gcm4106_aes_alg,
				   NX_FC_AES, NX_MODE_AES_GCM);
		FUNC2(&nx_gcm_aes_alg,
				   NX_FC_AES, NX_MODE_AES_GCM);
		FUNC3(&nx_ctr3686_aes_alg,
				  NX_FC_AES, NX_MODE_AES_CTR);
		FUNC3(&nx_cbc_aes_alg, NX_FC_AES, NX_MODE_AES_CBC);
		FUNC3(&nx_ecb_aes_alg, NX_FC_AES, NX_MODE_AES_ECB);
	}

	return 0;
}