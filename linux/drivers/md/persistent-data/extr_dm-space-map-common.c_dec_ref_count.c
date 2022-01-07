
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int DMERR_LIMIT (char*) ;
 int EINVAL ;

__attribute__((used)) static int dec_ref_count(void *context, uint32_t old, uint32_t *new)
{
 if (!old) {
  DMERR_LIMIT("unable to decrement a reference count below 0");
  return -EINVAL;
 }

 *new = old - 1;
 return 0;
}
