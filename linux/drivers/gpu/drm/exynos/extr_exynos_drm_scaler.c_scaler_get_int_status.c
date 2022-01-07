
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scaler_context {int dummy; } ;


 int SCALER_INT_STATUS ;
 int scaler_read (int ) ;
 int scaler_write (int ,int ) ;

__attribute__((used)) static inline u32 scaler_get_int_status(struct scaler_context *scaler)
{
 u32 val = scaler_read(SCALER_INT_STATUS);

 scaler_write(val, SCALER_INT_STATUS);

 return val;
}
