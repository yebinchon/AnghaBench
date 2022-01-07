
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mga_device {int dummy; } ;


 int HZ ;
 int MGAREG_Status ;
 unsigned int RREG32 (int ) ;
 int jiffies ;
 scalar_t__ time_before (int,unsigned long) ;

__attribute__((used)) static inline void mga_wait_vsync(struct mga_device *mdev)
{
 unsigned long timeout = jiffies + HZ/10;
 unsigned int status = 0;

 do {
  status = RREG32(MGAREG_Status);
 } while ((status & 0x08) && time_before(jiffies, timeout));
 timeout = jiffies + HZ/10;
 status = 0;
 do {
  status = RREG32(MGAREG_Status);
 } while (!(status & 0x08) && time_before(jiffies, timeout));
}
