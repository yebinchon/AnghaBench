
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef struct lvds_dvo_timing const lvds_dvo_timing ;
struct bdb_lvds_lfp_data_ptrs {TYPE_1__* ptr; } ;
struct bdb_lvds_lfp_data {scalar_t__ data; } ;
struct TYPE_2__ {int dvo_timing_offset; int fp_timing_offset; } ;



__attribute__((used)) static const struct lvds_dvo_timing *
get_lvds_dvo_timing(const struct bdb_lvds_lfp_data *lvds_lfp_data,
      const struct bdb_lvds_lfp_data_ptrs *lvds_lfp_data_ptrs,
      int index)
{






 int lfp_data_size =
  lvds_lfp_data_ptrs->ptr[1].dvo_timing_offset -
  lvds_lfp_data_ptrs->ptr[0].dvo_timing_offset;
 int dvo_timing_offset =
  lvds_lfp_data_ptrs->ptr[0].dvo_timing_offset -
  lvds_lfp_data_ptrs->ptr[0].fp_timing_offset;
 char *entry = (char *)lvds_lfp_data->data + lfp_data_size * index;

 return (struct lvds_dvo_timing *)(entry + dvo_timing_offset);
}
