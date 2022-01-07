
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct device {int dummy; } ;
typedef int cha_err_code ;


 size_t ARRAY_SIZE (char**) ;
 int EBADMSG ;
 int EINVAL ;
 int const JRSTA_CCBERR_CHAID_MASK ;
 size_t JRSTA_CCBERR_CHAID_RNG ;
 int const JRSTA_CCBERR_CHAID_SHIFT ;
 size_t JRSTA_CCBERR_ERRID_ICVCHK ;
 int const JRSTA_CCBERR_ERRID_MASK ;
 int const JRSTA_DECOERR_INDEX_MASK ;
 int const JRSTA_DECOERR_INDEX_SHIFT ;
 int const JRSTA_DECOERR_JUMP ;
 char** cha_id_list ;
 int dev_err_ratelimited (struct device*,char*,int const,char const*,char*,size_t,char const*,char*,char const*,char*) ;
 char** err_id_list ;
 char** rng_err_id_list ;
 int snprintf (char*,int,char*,size_t) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int report_ccb_status(struct device *jrdev, const u32 status,
        const char *error)
{
 u8 cha_id = (status & JRSTA_CCBERR_CHAID_MASK) >>
      JRSTA_CCBERR_CHAID_SHIFT;
 u8 err_id = status & JRSTA_CCBERR_ERRID_MASK;
 u8 idx = (status & JRSTA_DECOERR_INDEX_MASK) >>
    JRSTA_DECOERR_INDEX_SHIFT;
 char *idx_str;
 const char *cha_str = "unidentified cha_id value 0x";
 char cha_err_code[3] = { 0 };
 const char *err_str = "unidentified err_id value 0x";
 char err_err_code[3] = { 0 };

 if (status & JRSTA_DECOERR_JUMP)
  idx_str = "jump tgt desc idx";
 else
  idx_str = "desc idx";

 if (cha_id < ARRAY_SIZE(cha_id_list))
  cha_str = cha_id_list[cha_id];
 else
  snprintf(cha_err_code, sizeof(cha_err_code), "%02x", cha_id);

 if ((cha_id << JRSTA_CCBERR_CHAID_SHIFT) == JRSTA_CCBERR_CHAID_RNG &&
     err_id < ARRAY_SIZE(rng_err_id_list) &&
     strlen(rng_err_id_list[err_id])) {

  err_str = rng_err_id_list[err_id];
 } else {
  err_str = err_id_list[err_id];
 }





 if (err_id == JRSTA_CCBERR_ERRID_ICVCHK)
  return -EBADMSG;

 dev_err_ratelimited(jrdev, "%08x: %s: %s %d: %s%s: %s%s\n", status,
       error, idx_str, idx, cha_str, cha_err_code,
       err_str, err_err_code);

 return -EINVAL;
}
