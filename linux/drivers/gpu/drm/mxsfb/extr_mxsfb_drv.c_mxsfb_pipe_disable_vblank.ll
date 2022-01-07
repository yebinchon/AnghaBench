; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mxsfb/extr_mxsfb_drv.c_mxsfb_pipe_disable_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mxsfb/extr_mxsfb_drv.c_mxsfb_pipe_disable_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { i32 }
%struct.mxsfb_drm_private = type { i64 }

@CTRL1_CUR_FRAME_DONE_IRQ_EN = common dso_local global i32 0, align 4
@LCDC_CTRL1 = common dso_local global i64 0, align 8
@REG_CLR = common dso_local global i64 0, align 8
@CTRL1_CUR_FRAME_DONE_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_simple_display_pipe*)* @mxsfb_pipe_disable_vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxsfb_pipe_disable_vblank(%struct.drm_simple_display_pipe* %0) #0 {
  %2 = alloca %struct.drm_simple_display_pipe*, align 8
  %3 = alloca %struct.mxsfb_drm_private*, align 8
  store %struct.drm_simple_display_pipe* %0, %struct.drm_simple_display_pipe** %2, align 8
  %4 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %2, align 8
  %5 = call %struct.mxsfb_drm_private* @drm_pipe_to_mxsfb_drm_private(%struct.drm_simple_display_pipe* %4)
  store %struct.mxsfb_drm_private* %5, %struct.mxsfb_drm_private** %3, align 8
  %6 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %3, align 8
  %7 = call i32 @mxsfb_enable_axi_clk(%struct.mxsfb_drm_private* %6)
  %8 = load i32, i32* @CTRL1_CUR_FRAME_DONE_IRQ_EN, align 4
  %9 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %3, align 8
  %10 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @LCDC_CTRL1, align 8
  %13 = add nsw i64 %11, %12
  %14 = load i64, i64* @REG_CLR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel(i32 %8, i64 %15)
  %17 = load i32, i32* @CTRL1_CUR_FRAME_DONE_IRQ, align 4
  %18 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %3, align 8
  %19 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @LCDC_CTRL1, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i64, i64* @REG_CLR, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %17, i64 %24)
  %26 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %3, align 8
  %27 = call i32 @mxsfb_disable_axi_clk(%struct.mxsfb_drm_private* %26)
  ret void
}

declare dso_local %struct.mxsfb_drm_private* @drm_pipe_to_mxsfb_drm_private(%struct.drm_simple_display_pipe*) #1

declare dso_local i32 @mxsfb_enable_axi_clk(%struct.mxsfb_drm_private*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mxsfb_disable_axi_clk(%struct.mxsfb_drm_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
