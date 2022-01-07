; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mxsfb/extr_mxsfb_crtc.c_mxsfb_disable_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mxsfb/extr_mxsfb_crtc.c_mxsfb_disable_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxsfb_drm_private = type { i64, i64, i64 }

@CTRL_DOTCLK_MODE = common dso_local global i32 0, align 4
@LCDC_CTRL = common dso_local global i64 0, align 8
@REG_CLR = common dso_local global i64 0, align 8
@CTRL_RUN = common dso_local global i32 0, align 4
@LCDC_VDCTRL4 = common dso_local global i64 0, align 8
@VDCTRL4_SYNC_SIGNALS_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxsfb_drm_private*)* @mxsfb_disable_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxsfb_disable_controller(%struct.mxsfb_drm_private* %0) #0 {
  %2 = alloca %struct.mxsfb_drm_private*, align 8
  %3 = alloca i32, align 4
  store %struct.mxsfb_drm_private* %0, %struct.mxsfb_drm_private** %2, align 8
  %4 = load i32, i32* @CTRL_DOTCLK_MODE, align 4
  %5 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %6 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @LCDC_CTRL, align 8
  %9 = add nsw i64 %7, %8
  %10 = load i64, i64* @REG_CLR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel(i32 %4, i64 %11)
  %13 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %14 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LCDC_CTRL, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @CTRL_RUN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @readl_poll_timeout(i64 %17, i32 %18, i32 %24, i32 0, i32 1000)
  %26 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %27 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @LCDC_VDCTRL4, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl(i64 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* @VDCTRL4_SYNC_SIGNALS_ON, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %38 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @LCDC_VDCTRL4, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %36, i64 %41)
  %43 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %44 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @clk_disable_unprepare(i64 %45)
  %47 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %48 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %1
  %52 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %2, align 8
  %53 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @clk_disable_unprepare(i64 %54)
  br label %56

56:                                               ; preds = %51, %1
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
