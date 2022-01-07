; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmiphy_enable_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmiphy_enable_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_context = type { i64, i32* }

@HDMI_PHY_ENABLE_MODE_SET = common dso_local global i32 0, align 4
@HDMI_PHY_DISABLE_MODE_SET = common dso_local global i32 0, align 4
@exynos5433_hdmi_driver_data = common dso_local global i32 0, align 4
@HDMIPHY5433_MODE_SET_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_context*, i32)* @hdmiphy_enable_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmiphy_enable_mode_set(%struct.hdmi_context* %0, i32 %1) #0 {
  %3 = alloca %struct.hdmi_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hdmi_context* %0, %struct.hdmi_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @HDMI_PHY_ENABLE_MODE_SET, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @HDMI_PHY_DISABLE_MODE_SET, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  store i32 %13, i32* %5, align 4
  %14 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %15 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, @exynos5433_hdmi_driver_data
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.hdmi_context*, %struct.hdmi_context** %3, align 8
  %21 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HDMIPHY5433_MODE_SET_DONE, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  br label %26

26:                                               ; preds = %18, %12
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
