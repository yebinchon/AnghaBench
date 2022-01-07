
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int EINVAL ;
 scalar_t__ MLX5_GET (int ,void*,int ) ;
 int MLX5_SET (int ,void*,int ,scalar_t__) ;
 int fte_match_set_lyr_2_4 ;
 int ip_protocol ;

__attribute__((used)) static int set_proto(void *outer_c, void *outer_v, u8 mask, u8 val)
{
 u8 entry_mask;
 u8 entry_val;
 int err = 0;

 if (!mask)
  goto out;

 entry_mask = MLX5_GET(fte_match_set_lyr_2_4, outer_c,
         ip_protocol);
 entry_val = MLX5_GET(fte_match_set_lyr_2_4, outer_v,
        ip_protocol);
 if (!entry_mask) {
  MLX5_SET(fte_match_set_lyr_2_4, outer_c, ip_protocol, mask);
  MLX5_SET(fte_match_set_lyr_2_4, outer_v, ip_protocol, val);
  goto out;
 }

 if (mask != entry_mask || val != entry_val)
  err = -EINVAL;
out:
 return err;
}
