
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uc_fw {int rsa_size; int ucode_size; int minor_ver_found; int major_ver_found; int minor_ver_wanted; int major_ver_wanted; int status; int path; int type; } ;
struct drm_printer {int dummy; } ;


 int drm_printf (struct drm_printer*,char*,int ,...) ;
 int intel_uc_fw_status_repr (int ) ;
 int intel_uc_fw_type_repr (int ) ;

void intel_uc_fw_dump(const struct intel_uc_fw *uc_fw, struct drm_printer *p)
{
 drm_printf(p, "%s firmware: %s\n",
     intel_uc_fw_type_repr(uc_fw->type), uc_fw->path);
 drm_printf(p, "\tstatus: %s\n",
     intel_uc_fw_status_repr(uc_fw->status));
 drm_printf(p, "\tversion: wanted %u.%u, found %u.%u\n",
     uc_fw->major_ver_wanted, uc_fw->minor_ver_wanted,
     uc_fw->major_ver_found, uc_fw->minor_ver_found);
 drm_printf(p, "\tuCode: %u bytes\n", uc_fw->ucode_size);
 drm_printf(p, "\tRSA: %u bytes\n", uc_fw->rsa_size);
}
