
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6e63j0x03 {int dummy; } ;


 int MCS_MTP_KEY ;
 int s6e63j0x03_dcs_write_seq_static (struct s6e63j0x03*,int ,int,int) ;

__attribute__((used)) static inline int s6e63j0x03_apply_mtp_key(struct s6e63j0x03 *ctx, bool on)
{
 if (on)
  return s6e63j0x03_dcs_write_seq_static(ctx,
    MCS_MTP_KEY, 0x5a, 0x5a);

 return s6e63j0x03_dcs_write_seq_static(ctx, MCS_MTP_KEY, 0xa5, 0xa5);
}
