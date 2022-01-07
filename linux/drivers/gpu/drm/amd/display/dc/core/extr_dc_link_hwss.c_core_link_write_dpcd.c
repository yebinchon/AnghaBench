
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct dc_link {int ctx; int aux_access_disabled; } ;
typedef enum dc_status { ____Placeholder_dc_status } dc_status ;


 int DC_ERROR_UNEXPECTED ;
 int DC_OK ;
 int dm_helpers_dp_write_dpcd (int ,struct dc_link*,int ,int const*,int ) ;

enum dc_status core_link_write_dpcd(
 struct dc_link *link,
 uint32_t address,
 const uint8_t *data,
 uint32_t size)
{
 if (!link->aux_access_disabled &&
   !dm_helpers_dp_write_dpcd(link->ctx,
   link, address, data, size)) {
  return DC_ERROR_UNEXPECTED;
 }

 return DC_OK;
}
