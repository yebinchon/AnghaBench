
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_secboot {int dummy; } ;
struct nvkm_gpuobj {int dummy; } ;
struct nvkm_falcon {int dummy; } ;


 int gm200_secboot_run_blob (struct nvkm_secboot*,struct nvkm_gpuobj*,struct nvkm_falcon*) ;
 int gp102_run_secure_scrub (struct nvkm_secboot*) ;
 scalar_t__ gp102_secboot_scrub_required (struct nvkm_secboot*) ;

__attribute__((used)) static int
gp102_secboot_run_blob(struct nvkm_secboot *sb, struct nvkm_gpuobj *blob,
         struct nvkm_falcon *falcon)
{
 int ret;


 if (gp102_secboot_scrub_required(sb)) {
  ret = gp102_run_secure_scrub(sb);
  if (ret)
   return ret;
 }

 return gm200_secboot_run_blob(sb, blob, falcon);
}
