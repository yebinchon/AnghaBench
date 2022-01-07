
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_rdev {int corrected_errors; } ;
typedef int ssize_t ;


 int atomic_set (int *,unsigned int) ;
 int kstrtouint (char const*,int,unsigned int*) ;

__attribute__((used)) static ssize_t
errors_store(struct md_rdev *rdev, const char *buf, size_t len)
{
 unsigned int n;
 int rv;

 rv = kstrtouint(buf, 10, &n);
 if (rv < 0)
  return rv;
 atomic_set(&rdev->corrected_errors, n);
 return len;
}
