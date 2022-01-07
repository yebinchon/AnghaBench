
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qce_device {int dummy; } ;


 int qce_write (struct qce_device*,scalar_t__,scalar_t__ const) ;

__attribute__((used)) static inline void qce_write_array(struct qce_device *qce, u32 offset,
       const u32 *val, unsigned int len)
{
 int i;

 for (i = 0; i < len; i++)
  qce_write(qce, offset + i * sizeof(u32), val[i]);
}
