
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct link_mst_stream_allocation_table {int stream_count; int * stream_allocations; } ;
struct link_encoder {int dummy; } ;
struct dcn10_link_encoder {int dummy; } ;


 int DP_MSE_16_MTP_KEEPOUT ;
 int DP_MSE_SAT0 ;
 int DP_MSE_SAT1 ;
 int DP_MSE_SAT_SLOT_COUNT0 ;
 int DP_MSE_SAT_SLOT_COUNT1 ;
 int DP_MSE_SAT_SLOT_COUNT2 ;
 int DP_MSE_SAT_SLOT_COUNT3 ;
 int DP_MSE_SAT_SRC0 ;
 int DP_MSE_SAT_SRC1 ;
 int DP_MSE_SAT_SRC2 ;
 int DP_MSE_SAT_SRC3 ;
 int DP_MSE_SAT_UPDATE ;
 scalar_t__ DP_MST_UPDATE_MAX_RETRY ;
 int REG_GET (int ,int ,scalar_t__*) ;
 scalar_t__ REG_READ (int ) ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_2 (int ,int ,scalar_t__,int ,scalar_t__) ;
 struct dcn10_link_encoder* TO_DCN10_LINK_ENC (struct link_encoder*) ;
 int fill_stream_allocation_row_info (int *,scalar_t__*,scalar_t__*) ;
 int udelay (int) ;

void dcn10_link_encoder_update_mst_stream_allocation_table(
 struct link_encoder *enc,
 const struct link_mst_stream_allocation_table *table)
{
 struct dcn10_link_encoder *enc10 = TO_DCN10_LINK_ENC(enc);
 uint32_t value0 = 0;
 uint32_t value1 = 0;
 uint32_t value2 = 0;
 uint32_t slots = 0;
 uint32_t src = 0;
 uint32_t retries = 0;
 if (table->stream_count >= 1) {
  fill_stream_allocation_row_info(
   &table->stream_allocations[0],
   &src,
   &slots);
 } else {
  src = 0;
  slots = 0;
 }

 REG_UPDATE_2(DP_MSE_SAT0,
   DP_MSE_SAT_SRC0, src,
   DP_MSE_SAT_SLOT_COUNT0, slots);

 if (table->stream_count >= 2) {
  fill_stream_allocation_row_info(
   &table->stream_allocations[1],
   &src,
   &slots);
 } else {
  src = 0;
  slots = 0;
 }

 REG_UPDATE_2(DP_MSE_SAT0,
   DP_MSE_SAT_SRC1, src,
   DP_MSE_SAT_SLOT_COUNT1, slots);

 if (table->stream_count >= 3) {
  fill_stream_allocation_row_info(
   &table->stream_allocations[2],
   &src,
   &slots);
 } else {
  src = 0;
  slots = 0;
 }

 REG_UPDATE_2(DP_MSE_SAT1,
   DP_MSE_SAT_SRC2, src,
   DP_MSE_SAT_SLOT_COUNT2, slots);

 if (table->stream_count >= 4) {
  fill_stream_allocation_row_info(
   &table->stream_allocations[3],
   &src,
   &slots);
 } else {
  src = 0;
  slots = 0;
 }

 REG_UPDATE_2(DP_MSE_SAT1,
   DP_MSE_SAT_SRC3, src,
   DP_MSE_SAT_SLOT_COUNT3, slots);
 REG_UPDATE(DP_MSE_SAT_UPDATE,
   DP_MSE_SAT_UPDATE, 1);
 do {
  udelay(10);

  value0 = REG_READ(DP_MSE_SAT_UPDATE);

  REG_GET(DP_MSE_SAT_UPDATE,
    DP_MSE_SAT_UPDATE, &value1);

  REG_GET(DP_MSE_SAT_UPDATE,
    DP_MSE_16_MTP_KEEPOUT, &value2);


  if (!value1 && !value2)
   break;
  ++retries;
 } while (retries < DP_MST_UPDATE_MAX_RETRY);
}
