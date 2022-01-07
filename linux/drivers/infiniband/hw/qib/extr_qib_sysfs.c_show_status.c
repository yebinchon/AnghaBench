
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_pportdata {scalar_t__* statusp; } ;
typedef int ssize_t ;


 int EINVAL ;
 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*,unsigned long long) ;

__attribute__((used)) static ssize_t show_status(struct qib_pportdata *ppd, char *buf)
{
 ssize_t ret;

 if (!ppd->statusp)
  ret = -EINVAL;
 else
  ret = scnprintf(buf, PAGE_SIZE, "0x%llx\n",
    (unsigned long long) *(ppd->statusp));
 return ret;
}
