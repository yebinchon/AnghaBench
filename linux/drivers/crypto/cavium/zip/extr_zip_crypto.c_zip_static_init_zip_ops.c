
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_operation {int speed; int ccode; int lzs_flag; int begin_file; int end_file; int csum; scalar_t__ compcode; scalar_t__ history_len; int format; int flush; } ;


 int LZS_FORMAT ;
 int ZIP_FLUSH_FINISH ;
 int ZLIB_FORMAT ;

__attribute__((used)) static void zip_static_init_zip_ops(struct zip_operation *zip_ops,
        int lzs_flag)
{
 zip_ops->flush = ZIP_FLUSH_FINISH;


 zip_ops->speed = 1;

 if (!lzs_flag) {
  zip_ops->ccode = 0;
  zip_ops->lzs_flag = 0;
  zip_ops->format = ZLIB_FORMAT;
 } else {
  zip_ops->ccode = 3;
  zip_ops->lzs_flag = 1;
  zip_ops->format = LZS_FORMAT;
 }
 zip_ops->begin_file = 1;
 zip_ops->history_len = 0;
 zip_ops->end_file = 1;
 zip_ops->compcode = 0;
 zip_ops->csum = 1;
}
