
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOPNOTSUPP ;
 int MLX5_ATOMIC_MODE_8B ;
 int __fls (int) ;

__attribute__((used)) static int atomic_size_to_mode(int size_mask)
{



 int supported_size_mask = size_mask & 0x1ff;
 int log_max_size;

 if (!supported_size_mask)
  return -EOPNOTSUPP;

 log_max_size = __fls(supported_size_mask);

 if (log_max_size > 3)
  return log_max_size;

 return MLX5_ATOMIC_MODE_8B;
}
