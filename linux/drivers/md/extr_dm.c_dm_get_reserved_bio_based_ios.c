
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DM_RESERVED_MAX_IOS ;
 int RESERVED_BIO_BASED_IOS ;
 int __dm_get_module_param (int *,int ,int ) ;
 int reserved_bio_based_ios ;

unsigned dm_get_reserved_bio_based_ios(void)
{
 return __dm_get_module_param(&reserved_bio_based_ios,
         RESERVED_BIO_BASED_IOS, DM_RESERVED_MAX_IOS);
}
