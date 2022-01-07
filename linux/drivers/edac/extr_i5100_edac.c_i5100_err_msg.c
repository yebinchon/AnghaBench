
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const**) ;

__attribute__((used)) static const char *i5100_err_msg(unsigned err)
{
 static const char *merrs[] = {
  "unknown",
  "uncorrectable data ECC on replay",
  "unknown",
  "unknown",
  "aliased uncorrectable demand data ECC",
  "aliased uncorrectable spare-copy data ECC",
  "aliased uncorrectable patrol data ECC",
  "unknown",
  "unknown",
  "unknown",
  "non-aliased uncorrectable demand data ECC",
  "non-aliased uncorrectable spare-copy data ECC",
  "non-aliased uncorrectable patrol data ECC",
  "unknown",
  "correctable demand data ECC",
  "correctable spare-copy data ECC",
  "correctable patrol data ECC",
  "unknown",
  "SPD protocol error",
  "unknown",
  "spare copy initiated",
  "spare copy completed",
 };
 unsigned i;

 for (i = 0; i < ARRAY_SIZE(merrs); i++)
  if (1 << i & err)
   return merrs[i];

 return "none";
}
