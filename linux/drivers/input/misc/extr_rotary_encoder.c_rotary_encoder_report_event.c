
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rotary_encoder {scalar_t__ dir; unsigned int pos; unsigned int steps; int input; int axis; scalar_t__ rollover; scalar_t__ relative_axis; } ;


 int input_report_abs (int ,int ,unsigned int) ;
 int input_report_rel (int ,int ,scalar_t__) ;
 int input_sync (int ) ;

__attribute__((used)) static void rotary_encoder_report_event(struct rotary_encoder *encoder)
{
 if (encoder->relative_axis) {
  input_report_rel(encoder->input,
     encoder->axis, encoder->dir);
 } else {
  unsigned int pos = encoder->pos;

  if (encoder->dir < 0) {

   if (encoder->rollover)
    pos += encoder->steps;
   if (pos)
    pos--;
  } else {

   if (encoder->rollover || pos < encoder->steps)
    pos++;
  }

  if (encoder->rollover)
   pos %= encoder->steps;

  encoder->pos = pos;
  input_report_abs(encoder->input, encoder->axis, encoder->pos);
 }

 input_sync(encoder->input);
}
