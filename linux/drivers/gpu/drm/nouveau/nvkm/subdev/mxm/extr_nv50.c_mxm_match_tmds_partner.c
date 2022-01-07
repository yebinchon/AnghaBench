
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nvkm_mxm {int dummy; } ;
struct mxms_odev {int outp_type; scalar_t__ dig_conn; } ;
struct TYPE_2__ {scalar_t__ dig_conn; } ;
struct context {TYPE_1__ desc; } ;


 int mxms_output_device (struct nvkm_mxm*,int *,struct mxms_odev*) ;

__attribute__((used)) static bool
mxm_match_tmds_partner(struct nvkm_mxm *mxm, u8 *data, void *info)
{
 struct context *ctx = info;
 struct mxms_odev desc;

 mxms_output_device(mxm, data, &desc);
 if (desc.outp_type == 2 &&
     desc.dig_conn == ctx->desc.dig_conn)
  return 0;
 return 1;
}
