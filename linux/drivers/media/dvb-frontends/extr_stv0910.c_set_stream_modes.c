
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv {int dummy; } ;
struct dtv_frontend_properties {int scrambling_sequence_index; int stream_id; } ;


 int set_isi (struct stv*,int ) ;
 int set_pls (struct stv*,int ) ;

__attribute__((used)) static void set_stream_modes(struct stv *state,
        struct dtv_frontend_properties *p)
{
 set_isi(state, p->stream_id);
 set_pls(state, p->scrambling_sequence_index);
}
