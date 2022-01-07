
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HV_GRP_NCS ;
 int n2_spu_hvapi_major ;
 scalar_t__ n2_spu_hvapi_minor ;
 int pr_info (char*,int,scalar_t__) ;
 int sun4v_hvapi_register (int ,int,scalar_t__*) ;

__attribute__((used)) static int n2_spu_hvapi_register(void)
{
 int err;

 n2_spu_hvapi_major = 2;
 n2_spu_hvapi_minor = 0;

 err = sun4v_hvapi_register(HV_GRP_NCS,
       n2_spu_hvapi_major,
       &n2_spu_hvapi_minor);

 if (!err)
  pr_info("Registered NCS HVAPI version %lu.%lu\n",
   n2_spu_hvapi_major,
   n2_spu_hvapi_minor);

 return err;
}
