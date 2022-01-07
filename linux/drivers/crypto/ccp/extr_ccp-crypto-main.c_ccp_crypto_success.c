
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int EINPROGRESS ;

__attribute__((used)) static inline bool ccp_crypto_success(int err)
{
 if (err && (err != -EINPROGRESS) && (err != -EBUSY))
  return 0;

 return 1;
}
