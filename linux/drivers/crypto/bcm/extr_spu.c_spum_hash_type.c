
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef enum hash_type { ____Placeholder_hash_type } hash_type ;


 int HASH_TYPE_INIT ;
 int HASH_TYPE_UPDT ;

enum hash_type spum_hash_type(u32 src_sent)
{
 return src_sent ? HASH_TYPE_UPDT : HASH_TYPE_INIT;
}
