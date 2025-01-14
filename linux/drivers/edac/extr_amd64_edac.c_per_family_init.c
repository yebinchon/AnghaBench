
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amd64_pvt {int ext_model; int model; int fam; int mc_node_id; int * ops; int stepping; } ;
struct amd64_family_type {char* ctl_name; int ops; } ;
struct TYPE_2__ {int x86_model; int x86; int x86_stepping; } ;


 size_t F10_CPUS ;
 size_t F15_CPUS ;
 size_t F15_M30H_CPUS ;
 size_t F15_M60H_CPUS ;
 size_t F16_CPUS ;
 size_t F16_M30H_CPUS ;
 size_t F17_CPUS ;
 size_t F17_M10H_CPUS ;
 size_t F17_M30H_CPUS ;
 size_t F17_M70H_CPUS ;
 size_t K8_CPUS ;
 int K8_REV_F ;
 int amd64_err (char*) ;
 int amd64_info (char*,char*,char*,int ) ;
 TYPE_1__ boot_cpu_data ;
 struct amd64_family_type* family_types ;

__attribute__((used)) static struct amd64_family_type *per_family_init(struct amd64_pvt *pvt)
{
 struct amd64_family_type *fam_type = ((void*)0);

 pvt->ext_model = boot_cpu_data.x86_model >> 4;
 pvt->stepping = boot_cpu_data.x86_stepping;
 pvt->model = boot_cpu_data.x86_model;
 pvt->fam = boot_cpu_data.x86;

 switch (pvt->fam) {
 case 0xf:
  fam_type = &family_types[K8_CPUS];
  pvt->ops = &family_types[K8_CPUS].ops;
  break;

 case 0x10:
  fam_type = &family_types[F10_CPUS];
  pvt->ops = &family_types[F10_CPUS].ops;
  break;

 case 0x15:
  if (pvt->model == 0x30) {
   fam_type = &family_types[F15_M30H_CPUS];
   pvt->ops = &family_types[F15_M30H_CPUS].ops;
   break;
  } else if (pvt->model == 0x60) {
   fam_type = &family_types[F15_M60H_CPUS];
   pvt->ops = &family_types[F15_M60H_CPUS].ops;
   break;
  }

  fam_type = &family_types[F15_CPUS];
  pvt->ops = &family_types[F15_CPUS].ops;
  break;

 case 0x16:
  if (pvt->model == 0x30) {
   fam_type = &family_types[F16_M30H_CPUS];
   pvt->ops = &family_types[F16_M30H_CPUS].ops;
   break;
  }
  fam_type = &family_types[F16_CPUS];
  pvt->ops = &family_types[F16_CPUS].ops;
  break;

 case 0x17:
  if (pvt->model >= 0x10 && pvt->model <= 0x2f) {
   fam_type = &family_types[F17_M10H_CPUS];
   pvt->ops = &family_types[F17_M10H_CPUS].ops;
   break;
  } else if (pvt->model >= 0x30 && pvt->model <= 0x3f) {
   fam_type = &family_types[F17_M30H_CPUS];
   pvt->ops = &family_types[F17_M30H_CPUS].ops;
   break;
  } else if (pvt->model >= 0x70 && pvt->model <= 0x7f) {
   fam_type = &family_types[F17_M70H_CPUS];
   pvt->ops = &family_types[F17_M70H_CPUS].ops;
   break;
  }

 case 0x18:
  fam_type = &family_types[F17_CPUS];
  pvt->ops = &family_types[F17_CPUS].ops;

  if (pvt->fam == 0x18)
   family_types[F17_CPUS].ctl_name = "F18h";
  break;

 default:
  amd64_err("Unsupported family!\n");
  return ((void*)0);
 }

 amd64_info("%s %sdetected (node %d).\n", fam_type->ctl_name,
       (pvt->fam == 0xf ?
    (pvt->ext_model >= K8_REV_F ? "revF or later "
            : "revE or earlier ")
     : ""), pvt->mc_node_id);
 return fam_type;
}
