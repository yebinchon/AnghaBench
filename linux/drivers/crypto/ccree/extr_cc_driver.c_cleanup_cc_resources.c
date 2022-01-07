
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct cc_drvdata {int dummy; } ;


 int cc_aead_free (struct cc_drvdata*) ;
 int cc_buffer_mgr_fini (struct cc_drvdata*) ;
 int cc_cipher_free (struct cc_drvdata*) ;
 int cc_clk_off (struct cc_drvdata*) ;
 int cc_debugfs_fini (struct cc_drvdata*) ;
 int cc_fips_fini (struct cc_drvdata*) ;
 int cc_hash_free (struct cc_drvdata*) ;
 int cc_pm_fini (struct cc_drvdata*) ;
 int cc_req_mgr_fini (struct cc_drvdata*) ;
 int cc_sram_mgr_fini (struct cc_drvdata*) ;
 int fini_cc_regs (struct cc_drvdata*) ;
 scalar_t__ platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void cleanup_cc_resources(struct platform_device *plat_dev)
{
 struct cc_drvdata *drvdata =
  (struct cc_drvdata *)platform_get_drvdata(plat_dev);

 cc_aead_free(drvdata);
 cc_hash_free(drvdata);
 cc_cipher_free(drvdata);
 cc_pm_fini(drvdata);
 cc_buffer_mgr_fini(drvdata);
 cc_req_mgr_fini(drvdata);
 cc_sram_mgr_fini(drvdata);
 cc_fips_fini(drvdata);
 cc_debugfs_fini(drvdata);
 fini_cc_regs(drvdata);
 cc_clk_off(drvdata);
}
