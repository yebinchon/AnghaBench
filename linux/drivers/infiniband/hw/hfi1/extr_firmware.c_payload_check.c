
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int dummy; } ;


 int EINVAL ;
 int dd_dev_err (struct hfi1_devdata*,char*,char const*,long,long) ;

__attribute__((used)) static int payload_check(struct hfi1_devdata *dd, const char *name,
    long file_size, long prefix_size)
{

 if (prefix_size >= file_size) {
  dd_dev_err(dd,
      "firmware \"%s\", size %ld, must be larger than %ld bytes\n",
      name, file_size, prefix_size);
  return -EINVAL;
 }

 return 0;
}
