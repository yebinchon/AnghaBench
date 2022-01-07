
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct device {int dummy; } ;


 int EINVAL ;
 size_t JRSTA_SSRC_SHIFT ;
 int dev_err (struct device*,char*,size_t,...) ;






 int stub1 (struct device*,size_t,char const*) ;

int caam_strstatus(struct device *jrdev, u32 status, bool qi_v2)
{
 static const struct stat_src {
  int (*report_ssed)(struct device *jrdev, const u32 status,
       const char *error);
  const char *error;
 } status_src[16] = {
  { ((void*)0), "No error" },
  { ((void*)0), ((void*)0) },
  { 133, "CCB" },
  { 129, "Jump" },
  { 131, "DECO" },
  { 128, "Queue Manager Interface" },
  { 130, "Job Ring" },
  { 132, "Condition Code" },
  { ((void*)0), ((void*)0) },
  { ((void*)0), ((void*)0) },
  { ((void*)0), ((void*)0) },
  { ((void*)0), ((void*)0) },
  { ((void*)0), ((void*)0) },
  { ((void*)0), ((void*)0) },
  { ((void*)0), ((void*)0) },
  { ((void*)0), ((void*)0) },
 };
 u32 ssrc = status >> JRSTA_SSRC_SHIFT;
 const char *error = status_src[ssrc].error;





 if (status_src[ssrc].report_ssed)
  return status_src[ssrc].report_ssed(jrdev, status, error);

 if (error)
  dev_err(jrdev, "%d: %s\n", ssrc, error);
 else
  dev_err(jrdev, "%d: unknown error source\n", ssrc);

 return -EINVAL;
}
