
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vio_dev {int unit_address; int dev; } ;
struct TYPE_4__ {scalar_t__ status; } ;
struct TYPE_5__ {TYPE_1__ of; } ;


 int NX_DEBUGFS_FINI (TYPE_2__*) ;
 int NX_FC_AES ;
 int NX_FC_SHA ;
 int NX_MODE_AES_CBC ;
 int NX_MODE_AES_CCM ;
 int NX_MODE_AES_CTR ;
 int NX_MODE_AES_ECB ;
 int NX_MODE_AES_GCM ;
 int NX_MODE_AES_XCBC_MAC ;
 int NX_MODE_SHA ;
 scalar_t__ NX_OKAY ;
 int NX_PROPS_SHA256 ;
 int NX_PROPS_SHA512 ;
 int dev_dbg (int *,char*,int ) ;
 int nx_cbc_aes_alg ;
 int nx_ccm4309_aes_alg ;
 int nx_ccm_aes_alg ;
 int nx_ctr3686_aes_alg ;
 TYPE_2__ nx_driver ;
 int nx_ecb_aes_alg ;
 int nx_gcm4106_aes_alg ;
 int nx_gcm_aes_alg ;
 int nx_shash_aes_xcbc_alg ;
 int nx_shash_sha256_alg ;
 int nx_shash_sha512_alg ;
 int nx_unregister_aead (int *,int ,int ) ;
 int nx_unregister_alg (int *,int ,int ) ;
 int nx_unregister_shash (int *,int ,int ,int) ;

__attribute__((used)) static int nx_remove(struct vio_dev *viodev)
{
 dev_dbg(&viodev->dev, "entering nx_remove for UA 0x%x\n",
  viodev->unit_address);

 if (nx_driver.of.status == NX_OKAY) {
  NX_DEBUGFS_FINI(&nx_driver);

  nx_unregister_shash(&nx_shash_aes_xcbc_alg,
        NX_FC_AES, NX_MODE_AES_XCBC_MAC, -1);
  nx_unregister_shash(&nx_shash_sha512_alg,
        NX_FC_SHA, NX_MODE_SHA, NX_PROPS_SHA256);
  nx_unregister_shash(&nx_shash_sha256_alg,
        NX_FC_SHA, NX_MODE_SHA, NX_PROPS_SHA512);
  nx_unregister_aead(&nx_ccm4309_aes_alg,
       NX_FC_AES, NX_MODE_AES_CCM);
  nx_unregister_aead(&nx_ccm_aes_alg, NX_FC_AES, NX_MODE_AES_CCM);
  nx_unregister_aead(&nx_gcm4106_aes_alg,
       NX_FC_AES, NX_MODE_AES_GCM);
  nx_unregister_aead(&nx_gcm_aes_alg,
       NX_FC_AES, NX_MODE_AES_GCM);
  nx_unregister_alg(&nx_ctr3686_aes_alg,
      NX_FC_AES, NX_MODE_AES_CTR);
  nx_unregister_alg(&nx_cbc_aes_alg, NX_FC_AES, NX_MODE_AES_CBC);
  nx_unregister_alg(&nx_ecb_aes_alg, NX_FC_AES, NX_MODE_AES_ECB);
 }

 return 0;
}
