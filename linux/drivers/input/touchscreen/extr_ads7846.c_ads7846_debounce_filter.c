
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ads7846 {scalar_t__ read_cnt; int last_read; scalar_t__ debounce_tol; scalar_t__ read_rep; scalar_t__ debounce_max; scalar_t__ debounce_rep; } ;


 int ADS7846_FILTER_IGNORE ;
 int ADS7846_FILTER_OK ;
 int ADS7846_FILTER_REPEAT ;
 scalar_t__ abs (int) ;

__attribute__((used)) static int ads7846_debounce_filter(void *ads, int data_idx, int *val)
{
 struct ads7846 *ts = ads;

 if (!ts->read_cnt || (abs(ts->last_read - *val) > ts->debounce_tol)) {

  ts->read_rep = 0;




  if (ts->read_cnt < ts->debounce_max) {
   ts->last_read = *val;
   ts->read_cnt++;
   return ADS7846_FILTER_REPEAT;
  } else {






   ts->read_cnt = 0;
   return ADS7846_FILTER_IGNORE;
  }
 } else {
  if (++ts->read_rep > ts->debounce_rep) {




   ts->read_cnt = 0;
   ts->read_rep = 0;
   return ADS7846_FILTER_OK;
  } else {

   ts->read_cnt++;
   return ADS7846_FILTER_REPEAT;
  }
 }
}
