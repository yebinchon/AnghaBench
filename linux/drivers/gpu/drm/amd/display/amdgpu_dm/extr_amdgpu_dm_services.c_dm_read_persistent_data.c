
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct persistent_data_flag {int dummy; } ;
struct dc_sink {int dummy; } ;
struct dc_context {int dummy; } ;



bool dm_read_persistent_data(struct dc_context *ctx,
    const struct dc_sink *sink,
    const char *module_name,
    const char *key_name,
    void *params,
    unsigned int size,
    struct persistent_data_flag *flag)
{

 return 0;
}
