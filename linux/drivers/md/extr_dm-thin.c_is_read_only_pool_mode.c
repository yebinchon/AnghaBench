
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum pool_mode { ____Placeholder_pool_mode } pool_mode ;


 int PM_OUT_OF_METADATA_SPACE ;
 int PM_READ_ONLY ;

__attribute__((used)) static bool is_read_only_pool_mode(enum pool_mode mode)
{
 return (mode == PM_OUT_OF_METADATA_SPACE || mode == PM_READ_ONLY);
}
