
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int guid_t ;
typedef enum err_types { ____Placeholder_err_types } err_types ;


 int ERR_TYPE_BUS ;
 int ERR_TYPE_CACHE ;
 int ERR_TYPE_MS ;
 int ERR_TYPE_TLB ;
 int INFO_ERR_STRUCT_TYPE_BUS ;
 int INFO_ERR_STRUCT_TYPE_CACHE ;
 int INFO_ERR_STRUCT_TYPE_MS ;
 int INFO_ERR_STRUCT_TYPE_TLB ;
 int N_ERR_TYPES ;
 scalar_t__ guid_equal (int const*,int *) ;

__attribute__((used)) static enum err_types cper_get_err_type(const guid_t *err_type)
{
 if (guid_equal(err_type, &INFO_ERR_STRUCT_TYPE_CACHE))
  return ERR_TYPE_CACHE;
 else if (guid_equal(err_type, &INFO_ERR_STRUCT_TYPE_TLB))
  return ERR_TYPE_TLB;
 else if (guid_equal(err_type, &INFO_ERR_STRUCT_TYPE_BUS))
  return ERR_TYPE_BUS;
 else if (guid_equal(err_type, &INFO_ERR_STRUCT_TYPE_MS))
  return ERR_TYPE_MS;
 else
  return N_ERR_TYPES;
}
