
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct videomode {int dummy; } ;
struct dispc_device {TYPE_1__* feat; } ;
struct TYPE_2__ {int max_line_width; int max_downscale; unsigned long (* calc_core_clk ) (unsigned long,int,int,int,int,int) ;} ;


 int DIV_ROUND_UP (int,int) ;
 scalar_t__ DRM_FORMAT_NV12 ;
 int DSSERR (char*,...) ;
 int EINVAL ;
 int dispc_core_clk_rate (struct dispc_device*) ;
 unsigned long stub1 (unsigned long,int,int,int,int,int) ;

__attribute__((used)) static int dispc_ovl_calc_scaling_44xx(struct dispc_device *dispc,
           unsigned long pclk, unsigned long lclk,
           const struct videomode *vm,
           u16 width, u16 height,
           u16 out_width, u16 out_height,
           u32 fourcc, bool *five_taps,
           int *x_predecim, int *y_predecim,
           int *decim_x, int *decim_y,
           u16 pos_x, unsigned long *core_clk,
           bool mem_to_mem)
{
 u16 in_width, in_width_max;
 int decim_x_min = *decim_x;
 u16 in_height = height / *decim_y;
 const int maxsinglelinewidth = dispc->feat->max_line_width;
 const int maxdownscale = dispc->feat->max_downscale;

 if (mem_to_mem) {
  in_width_max = out_width * maxdownscale;
 } else {
  in_width_max = dispc_core_clk_rate(dispc)
        / DIV_ROUND_UP(pclk, out_width);
 }

 *decim_x = DIV_ROUND_UP(width, in_width_max);

 *decim_x = *decim_x > decim_x_min ? *decim_x : decim_x_min;
 if (*decim_x > *x_predecim)
  return -EINVAL;

 do {
  in_width = width / *decim_x;
 } while (*decim_x <= *x_predecim &&
   in_width > maxsinglelinewidth && ++*decim_x);

 if (in_width > maxsinglelinewidth) {
  DSSERR("Cannot scale width exceeds max line width\n");
  return -EINVAL;
 }

 if (*decim_x > 4 && fourcc != DRM_FORMAT_NV12) {
  DSSERR("Not enough bandwidth, too much downscaling (x-decimation factor %d > 4)\n", *decim_x);

  return -EINVAL;
 }

 *core_clk = dispc->feat->calc_core_clk(pclk, in_width, in_height,
    out_width, out_height, mem_to_mem);
 return 0;
}
