
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipuv3_channel {int num; int ipu; } ;


 int ipu_fsu_link (int ,int ,int ) ;

int ipu_idmac_link(struct ipuv3_channel *src, struct ipuv3_channel *sink)
{
 return ipu_fsu_link(src->ipu, src->num, sink->num);
}
