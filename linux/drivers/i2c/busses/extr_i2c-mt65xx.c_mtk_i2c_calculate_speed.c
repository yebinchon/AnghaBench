
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_i2c {int dev; } ;


 unsigned int DIV_ROUND_UP (unsigned int,unsigned int) ;
 int EINVAL ;
 unsigned int MAX_FS_MODE_SPEED ;
 unsigned int MAX_HS_MODE_SPEED ;
 unsigned int MAX_HS_STEP_CNT_DIV ;
 unsigned int MAX_SAMPLE_CNT_DIV ;
 unsigned int MAX_STEP_CNT_DIV ;
 int dev_dbg (int ,char*,unsigned int) ;

__attribute__((used)) static int mtk_i2c_calculate_speed(struct mtk_i2c *i2c, unsigned int clk_src,
       unsigned int target_speed,
       unsigned int *timing_step_cnt,
       unsigned int *timing_sample_cnt)
{
 unsigned int step_cnt;
 unsigned int sample_cnt;
 unsigned int max_step_cnt;
 unsigned int base_sample_cnt = MAX_SAMPLE_CNT_DIV;
 unsigned int base_step_cnt;
 unsigned int opt_div;
 unsigned int best_mul;
 unsigned int cnt_mul;

 if (target_speed > MAX_HS_MODE_SPEED)
  target_speed = MAX_HS_MODE_SPEED;

 if (target_speed > MAX_FS_MODE_SPEED)
  max_step_cnt = MAX_HS_STEP_CNT_DIV;
 else
  max_step_cnt = MAX_STEP_CNT_DIV;

 base_step_cnt = max_step_cnt;

 opt_div = DIV_ROUND_UP(clk_src >> 1, target_speed);
 best_mul = MAX_SAMPLE_CNT_DIV * max_step_cnt;







 for (sample_cnt = 1; sample_cnt <= MAX_SAMPLE_CNT_DIV; sample_cnt++) {
  step_cnt = DIV_ROUND_UP(opt_div, sample_cnt);
  cnt_mul = step_cnt * sample_cnt;
  if (step_cnt > max_step_cnt)
   continue;

  if (cnt_mul < best_mul) {
   best_mul = cnt_mul;
   base_sample_cnt = sample_cnt;
   base_step_cnt = step_cnt;
   if (best_mul == opt_div)
    break;
  }
 }

 sample_cnt = base_sample_cnt;
 step_cnt = base_step_cnt;

 if ((clk_src / (2 * sample_cnt * step_cnt)) > target_speed) {



  dev_dbg(i2c->dev, "Unsupported speed (%uhz)\n", target_speed);
  return -EINVAL;
 }

 *timing_step_cnt = step_cnt - 1;
 *timing_sample_cnt = sample_cnt - 1;

 return 0;
}
