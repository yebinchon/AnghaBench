
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_straps {int dc_pinstraps_audio; } ;
struct dc_context {int dummy; } ;


 scalar_t__ BASE (int ) ;
 int DC_PINSTRAPS ;
 int DC_PINSTRAPS_AUDIO ;
 int FN (int ,int ) ;
 int generic_reg_get (struct dc_context*,scalar_t__,int ,int *) ;
 scalar_t__ mmDC_PINSTRAPS ;
 int mmDC_PINSTRAPS_BASE_IDX ;

__attribute__((used)) static void read_dce_straps(
 struct dc_context *ctx,
 struct resource_straps *straps)
{
 generic_reg_get(ctx, mmDC_PINSTRAPS + BASE(mmDC_PINSTRAPS_BASE_IDX),
  FN(DC_PINSTRAPS, DC_PINSTRAPS_AUDIO), &straps->dc_pinstraps_audio);

}
