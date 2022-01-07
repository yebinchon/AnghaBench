
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *sync_status_str(int status)
{
 if (status < 0)
  return "error";

 if (status > 0)
  return "signaled";

 return "active";
}
