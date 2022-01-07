
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_encoder {int dummy; } ;
struct dc_link_settings {int dummy; } ;
typedef enum clock_source_id { ____Placeholder_clock_source_id } clock_source_id ;



__attribute__((used)) static void virtual_link_encoder_enable_dp_mst_output(
 struct link_encoder *enc,
 const struct dc_link_settings *link_settings,
 enum clock_source_id clock_source) {}
