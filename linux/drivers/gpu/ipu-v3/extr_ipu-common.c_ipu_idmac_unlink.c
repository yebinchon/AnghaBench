
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipuv3_channel {int num; int ipu; } ;


 int ipu_fsu_unlink (int ,int ,int ) ;

int ipu_idmac_unlink(struct ipuv3_channel *src, struct ipuv3_channel *sink)
{
 return ipu_fsu_unlink(src->ipu, src->num, sink->num);
}
