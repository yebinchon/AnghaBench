
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct mlx5_ib_dev {int mdev; } ;
struct TYPE_8__ {char* name; size_t offset; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ MLX5_CAP_GEN (int ,int ) ;
 scalar_t__ MLX5_CAP_PCAM_FEATURE (int ,int ) ;
 TYPE_1__* basic_q_cnts ;
 int cc_query_allowed ;
 TYPE_1__* cong_cnts ;
 int enhanced_error_q_counters ;
 TYPE_1__* ext_ppcnt_cnts ;
 TYPE_1__* extended_err_cnts ;
 int out_of_seq_cnt ;
 TYPE_1__* out_of_seq_q_cnts ;
 TYPE_1__* retrans_q_cnts ;
 int retransmission_q_counters ;
 int rx_icrc_encapsulated_counter ;

__attribute__((used)) static void mlx5_ib_fill_counters(struct mlx5_ib_dev *dev,
      const char **names,
      size_t *offsets)
{
 int i;
 int j = 0;

 for (i = 0; i < ARRAY_SIZE(basic_q_cnts); i++, j++) {
  names[j] = basic_q_cnts[i].name;
  offsets[j] = basic_q_cnts[i].offset;
 }

 if (MLX5_CAP_GEN(dev->mdev, out_of_seq_cnt)) {
  for (i = 0; i < ARRAY_SIZE(out_of_seq_q_cnts); i++, j++) {
   names[j] = out_of_seq_q_cnts[i].name;
   offsets[j] = out_of_seq_q_cnts[i].offset;
  }
 }

 if (MLX5_CAP_GEN(dev->mdev, retransmission_q_counters)) {
  for (i = 0; i < ARRAY_SIZE(retrans_q_cnts); i++, j++) {
   names[j] = retrans_q_cnts[i].name;
   offsets[j] = retrans_q_cnts[i].offset;
  }
 }

 if (MLX5_CAP_GEN(dev->mdev, enhanced_error_q_counters)) {
  for (i = 0; i < ARRAY_SIZE(extended_err_cnts); i++, j++) {
   names[j] = extended_err_cnts[i].name;
   offsets[j] = extended_err_cnts[i].offset;
  }
 }

 if (MLX5_CAP_GEN(dev->mdev, cc_query_allowed)) {
  for (i = 0; i < ARRAY_SIZE(cong_cnts); i++, j++) {
   names[j] = cong_cnts[i].name;
   offsets[j] = cong_cnts[i].offset;
  }
 }

 if (MLX5_CAP_PCAM_FEATURE(dev->mdev, rx_icrc_encapsulated_counter)) {
  for (i = 0; i < ARRAY_SIZE(ext_ppcnt_cnts); i++, j++) {
   names[j] = ext_ppcnt_cnts[i].name;
   offsets[j] = ext_ppcnt_cnts[i].offset;
  }
 }
}
