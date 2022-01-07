
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scaler_context {int dummy; } ;


 int SCALER_DST_CFG ;
 int SCALER_DST_CFG_SET_COLOR_FORMAT (int ) ;
 int scaler_write (int ,int ) ;

__attribute__((used)) static inline void scaler_set_dst_fmt(struct scaler_context *scaler,
 u32 dst_fmt)
{
 u32 val;

 val = SCALER_DST_CFG_SET_COLOR_FORMAT(dst_fmt);
 scaler_write(val, SCALER_DST_CFG);
}
