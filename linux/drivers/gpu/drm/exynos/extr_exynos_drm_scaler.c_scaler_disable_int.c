
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scaler_context {int dummy; } ;


 int SCALER_INT_EN ;
 int scaler_write (int ,int ) ;

__attribute__((used)) static inline void scaler_disable_int(struct scaler_context *scaler)
{
 scaler_write(0, SCALER_INT_EN);
}
