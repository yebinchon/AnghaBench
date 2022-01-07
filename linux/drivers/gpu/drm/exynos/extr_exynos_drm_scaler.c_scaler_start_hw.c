
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scaler_context {int dummy; } ;


 int SCALER_CFG ;
 int SCALER_CFG_START_CMD ;
 int scaler_write (int ,int ) ;

__attribute__((used)) static inline void scaler_start_hw(struct scaler_context *scaler)
{
 scaler_write(SCALER_CFG_START_CMD, SCALER_CFG);
}
