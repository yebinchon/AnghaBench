
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HV_GRP_NCS ;
 int sun4v_hvapi_unregister (int ) ;

__attribute__((used)) static void n2_spu_hvapi_unregister(void)
{
 sun4v_hvapi_unregister(HV_GRP_NCS);
}
