
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct dc {TYPE_1__* current_state; } ;
struct TYPE_2__ {int stream_count; } ;



uint8_t dc_get_current_stream_count(struct dc *dc)
{
 return dc->current_state->stream_count;
}
