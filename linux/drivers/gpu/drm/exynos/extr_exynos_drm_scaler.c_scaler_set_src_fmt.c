
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scaler_context {int dummy; } ;


 int SCALER_SRC_CFG ;
 int SCALER_SRC_CFG_SET_COLOR_FORMAT (int) ;
 int scaler_write (int,int ) ;

__attribute__((used)) static inline void scaler_set_src_fmt(struct scaler_context *scaler,
 u32 src_fmt, u32 tile)
{
 u32 val;

 val = SCALER_SRC_CFG_SET_COLOR_FORMAT(src_fmt) | (tile << 10);
 scaler_write(val, SCALER_SRC_CFG);
}
