
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hubbub2_get_blk256_size (unsigned int*,unsigned int*,unsigned int) ;

__attribute__((used)) static void hubbub2_det_request_size(
  unsigned int height,
  unsigned int width,
  unsigned int bpe,
  bool *req128_horz_wc,
  bool *req128_vert_wc)
{
 unsigned int detile_buf_size = 164 * 1024;

 unsigned int blk256_height = 0;
 unsigned int blk256_width = 0;
 unsigned int swath_bytes_horz_wc, swath_bytes_vert_wc;

 hubbub2_get_blk256_size(&blk256_width, &blk256_height, bpe);

 swath_bytes_horz_wc = width * blk256_height * bpe;
 swath_bytes_vert_wc = height * blk256_width * bpe;

 *req128_horz_wc = (2 * swath_bytes_horz_wc <= detile_buf_size) ?
   0 :
   1;

 *req128_vert_wc = (2 * swath_bytes_vert_wc <= detile_buf_size) ?
   0 :
   1;
}
