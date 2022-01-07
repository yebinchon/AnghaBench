
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int HZ ;
 unsigned int READ_ONCE (int ) ;
 unsigned int UINT_MAX ;
 int dm_bufio_max_age ;

__attribute__((used)) static unsigned get_max_age_hz(void)
{
 unsigned max_age = READ_ONCE(dm_bufio_max_age);

 if (max_age > UINT_MAX / HZ)
  max_age = UINT_MAX / HZ;

 return max_age * HZ;
}
