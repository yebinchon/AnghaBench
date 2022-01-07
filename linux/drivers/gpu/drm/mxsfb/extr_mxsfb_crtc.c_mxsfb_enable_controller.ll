; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mxsfb/extr_mxsfb_crtc.c_mxsfb_enable_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mxsfb/extr_mxsfb_crtc.c_mxsfb_enable_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxsfb_drm_private = type { i64, i64, i64 }

@CTRL_DOTCLK_MODE = common dso_local global i32 0, align 4
@LCDC_CTRL = common dso_local global i64 0, align 8
@REG_SET = common dso_local global i64 0, align 8
@LCDC_VDCTRL4 = common dso_local global i64 0, align 8
@VDCTRL4_SYNC_SIGNALS_ON = common dso_local global i32 0, align 4
@CTRL_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxsfb_drm_private*)* @mxsfb_enable_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxsfb_enable_controller(%struct.mxsfb_drm_private* %0) #0 {
  %2 = alloca %struct.mxsfb_drm_private*, align 8
  %3 = alloca i32, align 4
  store %struct.mxsfb_drm_private* %0, %struct.mxsfb_drm_private** %2, align 8
  %4 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %5 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %10 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @clk_prepare_enable(i64 %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %15 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @clk_prepare_enable(i64 %16)
  %18 = load i32, i32* @CTRL_DOTCLK_MODE, align 4
  %19 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %20 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @LCDC_CTRL, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i64, i64* @REG_SET, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %18, i64 %25)
  %27 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %28 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @LCDC_VDCTRL4, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readl(i64 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @VDCTRL4_SYNC_SIGNALS_ON, align 4
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %38 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @LCDC_VDCTRL4, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %36, i64 %41)
  %43 = load i32, i32* @CTRL_RUN, align 4
  %44 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %45 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @LCDC_CTRL, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i64, i64* @REG_SET, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 %43, i64 %50)
  ret void
}

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
