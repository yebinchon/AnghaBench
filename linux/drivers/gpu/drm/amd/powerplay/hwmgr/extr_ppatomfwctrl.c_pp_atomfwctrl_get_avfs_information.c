
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct pp_hwmgr {int adev; } ;
struct pp_atomfwctrl_avfs_parameters {void* ucAcgEnableGbFuseTable; void* ucAcgEnableGbVdroopTable; void* ulAcgGbFuseTableB; void* ulAcgGbFuseTableM2; void* ulAcgGbFuseTableM1; void* ulAcgGbVdroopTableA2; void* ulAcgGbVdroopTableA1; void* ulAcgGbVdroopTableA0; void* ulPhyclk2GfxclkB; void* ulPhyclk2GfxclkM2; void* ulPhyclk2GfxclkM1; void* ulPixelclk2GfxclkB; void* ulPixelclk2GfxclkM2; void* ulPixelclk2GfxclkM1; void* ulDcefclk2GfxclkB; void* ulDcefclk2GfxclkM2; void* ulDcefclk2GfxclkM1; void* ulDispclk2GfxclkB; void* ulDispclk2GfxclkM2; void* ulDispclk2GfxclkM1; void* usPsmAgeComfactor; int ucEnableGbFuseTableCkson; int ucEnableGbVdroopTableCkson; void* ulGbFuseTableCksonB; void* ulGbFuseTableCksonM2; void* ulGbFuseTableCksonM1; void* ulGbFuseTableCksoffB; void* ulGbFuseTableCksoffM2; void* ulGbFuseTableCksoffM1; void* ulGbVdroopTableCksonA2; void* ulGbVdroopTableCksonA1; void* ulGbVdroopTableCksonA0; void* ulGbVdroopTableCksoffA2; void* ulGbVdroopTableCksoffA1; void* ulGbVdroopTableCksoffA0; void* usMeanNsigmaPlatformSigma; void* usMeanNsigmaPlatformMean; void* usMeanNsigmaDcTolSigma; void* ulMeanNsigmaAcontant2; void* ulMeanNsigmaAcontant1; void* ulMeanNsigmaAcontant0; void* ulMinVddc; void* ulMaxVddc; } ;
struct atom_common_table_header {int format_revision; int content_revision; } ;
struct atom_asic_profiling_info_v4_2 {int enable_acg_gb_fuse_table; int enable_acg_gb_vdroop_table; int acg_avfsgb_fuse_table_b; int acg_avfsgb_fuse_table_m2; int acg_avfsgb_fuse_table_m1; int acg_gb_vdroop_table_a2; int acg_gb_vdroop_table_a1; int acg_gb_vdroop_table_a0; int phyclk2gfxclk_c; int phyclk2gfxclk_b; int pixclk2gfxclk_c; int pixclk2gfxclk_b; int pixclk2gfxclk_a; int dcefclk2gfxclk_c; int dcefclk2gfxclk_b; int dcefclk2gfxclk_a; int dispclk2gfxclk_c; int dispclk2gfxclk_b; int dispclk2gfxclk_a; int psm_age_comfactor; int enable_gb_fuse_table_ckson; int enable_gb_vdroop_table_ckson; int avfsgb_fuse_table_ckson_b; int avfsgb_fuse_table_ckson_m2; int avfsgb_fuse_table_ckson_m1; int avfsgb_fuse_table_cksoff_b; int avfsgb_fuse_table_cksoff_m2; int avfsgb_fuse_table_cksoff_m1; int gb_vdroop_table_ckson_a2; int gb_vdroop_table_ckson_a1; int gb_vdroop_table_ckson_a0; int gb_vdroop_table_cksoff_a2; int gb_vdroop_table_cksoff_a1; int gb_vdroop_table_cksoff_a0; int avfs_meannsigma_platform_sigma; int avfs_meannsigma_platform_mean; int avfs_meannsigma_dc_tol_sigma; int avfs_meannsigma_acontant2; int avfs_meannsigma_acontant1; int avfs_meannsigma_acontant0; int minvddc; int maxvddc; } ;
struct atom_asic_profiling_info_v4_1 {int phyclk2gfxclk_a; int phyclk2gfxclk_c; int phyclk2gfxclk_b; int pixclk2gfxclk_c; int pixclk2gfxclk_b; int pixclk2gfxclk_a; int dcefclk2gfxclk_c; int dcefclk2gfxclk_b; int dcefclk2gfxclk_a; int dispclk2gfxclk_c; int dispclk2gfxclk_b; int dispclk2gfxclk_a; int psm_age_comfactor; int enable_gb_fuse_table_ckson; int enable_gb_vdroop_table_ckson; int avfsgb_fuse_table_ckson_b; int avfsgb_fuse_table_ckson_m2; int avfsgb_fuse_table_ckson_m1; int avfsgb_fuse_table_cksoff_b; int avfsgb_fuse_table_cksoff_m2; int avfsgb_fuse_table_cksoff_m1; int gb_vdroop_table_ckson_a2; int gb_vdroop_table_ckson_a1; int gb_vdroop_table_ckson_a0; int gb_vdroop_table_cksoff_a2; int gb_vdroop_table_cksoff_a1; int gb_vdroop_table_cksoff_a0; int avfs_meannsigma_platform_sigma; int avfs_meannsigma_platform_mean; int avfs_meannsigma_dc_tol_sigma; int avfs_meannsigma_acontant2; int avfs_meannsigma_acontant1; int avfs_meannsigma_acontant0; int minvddc; int maxvddc; } ;


 int EINVAL ;
 int GetIndexIntoMasterDataTable (int ) ;
 int asic_profiling_info ;
 void* le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 int pr_info (char*) ;
 scalar_t__ smu_atom_get_data_table (int ,int ,int *,int *,int *) ;

int pp_atomfwctrl_get_avfs_information(struct pp_hwmgr *hwmgr,
  struct pp_atomfwctrl_avfs_parameters *param)
{
 uint16_t idx;
 uint8_t format_revision, content_revision;

 struct atom_asic_profiling_info_v4_1 *profile;
 struct atom_asic_profiling_info_v4_2 *profile_v4_2;

 idx = GetIndexIntoMasterDataTable(asic_profiling_info);
 profile = (struct atom_asic_profiling_info_v4_1 *)
   smu_atom_get_data_table(hwmgr->adev,
     idx, ((void*)0), ((void*)0), ((void*)0));

 if (!profile)
  return -1;

 format_revision = ((struct atom_common_table_header *)profile)->format_revision;
 content_revision = ((struct atom_common_table_header *)profile)->content_revision;

 if (format_revision == 4 && content_revision == 1) {
  param->ulMaxVddc = le32_to_cpu(profile->maxvddc);
  param->ulMinVddc = le32_to_cpu(profile->minvddc);
  param->ulMeanNsigmaAcontant0 =
    le32_to_cpu(profile->avfs_meannsigma_acontant0);
  param->ulMeanNsigmaAcontant1 =
    le32_to_cpu(profile->avfs_meannsigma_acontant1);
  param->ulMeanNsigmaAcontant2 =
    le32_to_cpu(profile->avfs_meannsigma_acontant2);
  param->usMeanNsigmaDcTolSigma =
    le16_to_cpu(profile->avfs_meannsigma_dc_tol_sigma);
  param->usMeanNsigmaPlatformMean =
    le16_to_cpu(profile->avfs_meannsigma_platform_mean);
  param->usMeanNsigmaPlatformSigma =
    le16_to_cpu(profile->avfs_meannsigma_platform_sigma);
  param->ulGbVdroopTableCksoffA0 =
    le32_to_cpu(profile->gb_vdroop_table_cksoff_a0);
  param->ulGbVdroopTableCksoffA1 =
    le32_to_cpu(profile->gb_vdroop_table_cksoff_a1);
  param->ulGbVdroopTableCksoffA2 =
    le32_to_cpu(profile->gb_vdroop_table_cksoff_a2);
  param->ulGbVdroopTableCksonA0 =
    le32_to_cpu(profile->gb_vdroop_table_ckson_a0);
  param->ulGbVdroopTableCksonA1 =
    le32_to_cpu(profile->gb_vdroop_table_ckson_a1);
  param->ulGbVdroopTableCksonA2 =
    le32_to_cpu(profile->gb_vdroop_table_ckson_a2);
  param->ulGbFuseTableCksoffM1 =
    le32_to_cpu(profile->avfsgb_fuse_table_cksoff_m1);
  param->ulGbFuseTableCksoffM2 =
    le32_to_cpu(profile->avfsgb_fuse_table_cksoff_m2);
  param->ulGbFuseTableCksoffB =
    le32_to_cpu(profile->avfsgb_fuse_table_cksoff_b);
  param->ulGbFuseTableCksonM1 =
    le32_to_cpu(profile->avfsgb_fuse_table_ckson_m1);
  param->ulGbFuseTableCksonM2 =
    le32_to_cpu(profile->avfsgb_fuse_table_ckson_m2);
  param->ulGbFuseTableCksonB =
    le32_to_cpu(profile->avfsgb_fuse_table_ckson_b);

  param->ucEnableGbVdroopTableCkson =
    profile->enable_gb_vdroop_table_ckson;
  param->ucEnableGbFuseTableCkson =
    profile->enable_gb_fuse_table_ckson;
  param->usPsmAgeComfactor =
    le16_to_cpu(profile->psm_age_comfactor);

  param->ulDispclk2GfxclkM1 =
    le32_to_cpu(profile->dispclk2gfxclk_a);
  param->ulDispclk2GfxclkM2 =
    le32_to_cpu(profile->dispclk2gfxclk_b);
  param->ulDispclk2GfxclkB =
    le32_to_cpu(profile->dispclk2gfxclk_c);
  param->ulDcefclk2GfxclkM1 =
    le32_to_cpu(profile->dcefclk2gfxclk_a);
  param->ulDcefclk2GfxclkM2 =
    le32_to_cpu(profile->dcefclk2gfxclk_b);
  param->ulDcefclk2GfxclkB =
    le32_to_cpu(profile->dcefclk2gfxclk_c);
  param->ulPixelclk2GfxclkM1 =
    le32_to_cpu(profile->pixclk2gfxclk_a);
  param->ulPixelclk2GfxclkM2 =
    le32_to_cpu(profile->pixclk2gfxclk_b);
  param->ulPixelclk2GfxclkB =
    le32_to_cpu(profile->pixclk2gfxclk_c);
  param->ulPhyclk2GfxclkM1 =
    le32_to_cpu(profile->phyclk2gfxclk_a);
  param->ulPhyclk2GfxclkM2 =
    le32_to_cpu(profile->phyclk2gfxclk_b);
  param->ulPhyclk2GfxclkB =
    le32_to_cpu(profile->phyclk2gfxclk_c);
  param->ulAcgGbVdroopTableA0 = 0;
  param->ulAcgGbVdroopTableA1 = 0;
  param->ulAcgGbVdroopTableA2 = 0;
  param->ulAcgGbFuseTableM1 = 0;
  param->ulAcgGbFuseTableM2 = 0;
  param->ulAcgGbFuseTableB = 0;
  param->ucAcgEnableGbVdroopTable = 0;
  param->ucAcgEnableGbFuseTable = 0;
 } else if (format_revision == 4 && content_revision == 2) {
  profile_v4_2 = (struct atom_asic_profiling_info_v4_2 *)profile;
  param->ulMaxVddc = le32_to_cpu(profile_v4_2->maxvddc);
  param->ulMinVddc = le32_to_cpu(profile_v4_2->minvddc);
  param->ulMeanNsigmaAcontant0 =
    le32_to_cpu(profile_v4_2->avfs_meannsigma_acontant0);
  param->ulMeanNsigmaAcontant1 =
    le32_to_cpu(profile_v4_2->avfs_meannsigma_acontant1);
  param->ulMeanNsigmaAcontant2 =
    le32_to_cpu(profile_v4_2->avfs_meannsigma_acontant2);
  param->usMeanNsigmaDcTolSigma =
    le16_to_cpu(profile_v4_2->avfs_meannsigma_dc_tol_sigma);
  param->usMeanNsigmaPlatformMean =
    le16_to_cpu(profile_v4_2->avfs_meannsigma_platform_mean);
  param->usMeanNsigmaPlatformSigma =
    le16_to_cpu(profile_v4_2->avfs_meannsigma_platform_sigma);
  param->ulGbVdroopTableCksoffA0 =
    le32_to_cpu(profile_v4_2->gb_vdroop_table_cksoff_a0);
  param->ulGbVdroopTableCksoffA1 =
    le32_to_cpu(profile_v4_2->gb_vdroop_table_cksoff_a1);
  param->ulGbVdroopTableCksoffA2 =
    le32_to_cpu(profile_v4_2->gb_vdroop_table_cksoff_a2);
  param->ulGbVdroopTableCksonA0 =
    le32_to_cpu(profile_v4_2->gb_vdroop_table_ckson_a0);
  param->ulGbVdroopTableCksonA1 =
    le32_to_cpu(profile_v4_2->gb_vdroop_table_ckson_a1);
  param->ulGbVdroopTableCksonA2 =
    le32_to_cpu(profile_v4_2->gb_vdroop_table_ckson_a2);
  param->ulGbFuseTableCksoffM1 =
    le32_to_cpu(profile_v4_2->avfsgb_fuse_table_cksoff_m1);
  param->ulGbFuseTableCksoffM2 =
    le32_to_cpu(profile_v4_2->avfsgb_fuse_table_cksoff_m2);
  param->ulGbFuseTableCksoffB =
    le32_to_cpu(profile_v4_2->avfsgb_fuse_table_cksoff_b);
  param->ulGbFuseTableCksonM1 =
    le32_to_cpu(profile_v4_2->avfsgb_fuse_table_ckson_m1);
  param->ulGbFuseTableCksonM2 =
    le32_to_cpu(profile_v4_2->avfsgb_fuse_table_ckson_m2);
  param->ulGbFuseTableCksonB =
    le32_to_cpu(profile_v4_2->avfsgb_fuse_table_ckson_b);

  param->ucEnableGbVdroopTableCkson =
    profile_v4_2->enable_gb_vdroop_table_ckson;
  param->ucEnableGbFuseTableCkson =
    profile_v4_2->enable_gb_fuse_table_ckson;
  param->usPsmAgeComfactor =
    le16_to_cpu(profile_v4_2->psm_age_comfactor);

  param->ulDispclk2GfxclkM1 =
    le32_to_cpu(profile_v4_2->dispclk2gfxclk_a);
  param->ulDispclk2GfxclkM2 =
    le32_to_cpu(profile_v4_2->dispclk2gfxclk_b);
  param->ulDispclk2GfxclkB =
    le32_to_cpu(profile_v4_2->dispclk2gfxclk_c);
  param->ulDcefclk2GfxclkM1 =
    le32_to_cpu(profile_v4_2->dcefclk2gfxclk_a);
  param->ulDcefclk2GfxclkM2 =
    le32_to_cpu(profile_v4_2->dcefclk2gfxclk_b);
  param->ulDcefclk2GfxclkB =
    le32_to_cpu(profile_v4_2->dcefclk2gfxclk_c);
  param->ulPixelclk2GfxclkM1 =
    le32_to_cpu(profile_v4_2->pixclk2gfxclk_a);
  param->ulPixelclk2GfxclkM2 =
    le32_to_cpu(profile_v4_2->pixclk2gfxclk_b);
  param->ulPixelclk2GfxclkB =
    le32_to_cpu(profile_v4_2->pixclk2gfxclk_c);
  param->ulPhyclk2GfxclkM1 =
    le32_to_cpu(profile->phyclk2gfxclk_a);
  param->ulPhyclk2GfxclkM2 =
    le32_to_cpu(profile_v4_2->phyclk2gfxclk_b);
  param->ulPhyclk2GfxclkB =
    le32_to_cpu(profile_v4_2->phyclk2gfxclk_c);
  param->ulAcgGbVdroopTableA0 = le32_to_cpu(profile_v4_2->acg_gb_vdroop_table_a0);
  param->ulAcgGbVdroopTableA1 = le32_to_cpu(profile_v4_2->acg_gb_vdroop_table_a1);
  param->ulAcgGbVdroopTableA2 = le32_to_cpu(profile_v4_2->acg_gb_vdroop_table_a2);
  param->ulAcgGbFuseTableM1 = le32_to_cpu(profile_v4_2->acg_avfsgb_fuse_table_m1);
  param->ulAcgGbFuseTableM2 = le32_to_cpu(profile_v4_2->acg_avfsgb_fuse_table_m2);
  param->ulAcgGbFuseTableB = le32_to_cpu(profile_v4_2->acg_avfsgb_fuse_table_b);
  param->ucAcgEnableGbVdroopTable = le32_to_cpu(profile_v4_2->enable_acg_gb_vdroop_table);
  param->ucAcgEnableGbFuseTable = le32_to_cpu(profile_v4_2->enable_acg_gb_fuse_table);
 } else {
  pr_info("Invalid VBIOS AVFS ProfilingInfo Revision!\n");
  return -EINVAL;
 }

 return 0;
}
