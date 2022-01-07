
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qce_device {int dummy; } ;


 int qce_write (struct qce_device*,scalar_t__,int ) ;

__attribute__((used)) static inline void
qce_clear_array(struct qce_device *qce, u32 offset, unsigned int len)
{
 int i;

 for (i = 0; i < len; i++)
  qce_write(qce, offset + i * sizeof(u32), 0);
}
