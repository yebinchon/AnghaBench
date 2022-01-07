
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int max_corr_read_errors; } ;
typedef int ssize_t ;


 int atomic_set (int *,unsigned int) ;
 int kstrtouint (char const*,int,unsigned int*) ;

__attribute__((used)) static ssize_t
max_corrected_read_errors_store(struct mddev *mddev, const char *buf, size_t len)
{
 unsigned int n;
 int rv;

 rv = kstrtouint(buf, 10, &n);
 if (rv < 0)
  return rv;
 atomic_set(&mddev->max_corr_read_errors, n);
 return len;
}
