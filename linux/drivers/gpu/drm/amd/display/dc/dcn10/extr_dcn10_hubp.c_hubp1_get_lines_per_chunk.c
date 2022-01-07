
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dc_cursor_color_format { ____Placeholder_dc_cursor_color_format } dc_cursor_color_format ;
typedef enum cursor_lines_per_chunk { ____Placeholder_cursor_lines_per_chunk } cursor_lines_per_chunk ;


 int CURSOR_LINE_PER_CHUNK_16 ;
 int CURSOR_LINE_PER_CHUNK_2 ;
 int CURSOR_LINE_PER_CHUNK_4 ;
 int CURSOR_LINE_PER_CHUNK_8 ;
 int CURSOR_MODE_MONO ;

__attribute__((used)) static enum cursor_lines_per_chunk hubp1_get_lines_per_chunk(
  unsigned int cur_width,
  enum dc_cursor_color_format format)
{
 enum cursor_lines_per_chunk line_per_chunk;

 if (format == CURSOR_MODE_MONO)

  line_per_chunk = CURSOR_LINE_PER_CHUNK_16;
 else if (cur_width <= 32)
  line_per_chunk = CURSOR_LINE_PER_CHUNK_16;
 else if (cur_width <= 64)
  line_per_chunk = CURSOR_LINE_PER_CHUNK_8;
 else if (cur_width <= 128)
  line_per_chunk = CURSOR_LINE_PER_CHUNK_4;
 else
  line_per_chunk = CURSOR_LINE_PER_CHUNK_2;

 return line_per_chunk;
}
