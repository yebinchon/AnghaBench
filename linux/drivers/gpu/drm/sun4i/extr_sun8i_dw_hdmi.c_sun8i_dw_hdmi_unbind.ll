; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_dw_hdmi.c_sun8i_dw_hdmi_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_dw_hdmi.c_sun8i_dw_hdmi_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sun8i_dw_hdmi = type { i64, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.device*, i8*)* @sun8i_dw_hdmi_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun8i_dw_hdmi_unbind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sun8i_dw_hdmi*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.sun8i_dw_hdmi* @dev_get_drvdata(%struct.device* %8)
  store %struct.sun8i_dw_hdmi* %9, %struct.sun8i_dw_hdmi** %7, align 8
  %10 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %7, align 8
  %11 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dw_hdmi_unbind(i32 %12)
  %14 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %7, align 8
  %15 = call i32 @sun8i_hdmi_phy_remove(%struct.sun8i_dw_hdmi* %14)
  %16 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %7, align 8
  %17 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @clk_disable_unprepare(i32 %18)
  %20 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %7, align 8
  %21 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @reset_control_assert(i32 %22)
  %24 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %7, align 8
  %25 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @gpiod_set_value(i64 %26, i32 0)
  %28 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %7, align 8
  %29 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @regulator_disable(i32 %30)
  %32 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %7, align 8
  %33 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %3
  %37 = load %struct.sun8i_dw_hdmi*, %struct.sun8i_dw_hdmi** %7, align 8
  %38 = getelementptr inbounds %struct.sun8i_dw_hdmi, %struct.sun8i_dw_hdmi* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @gpiod_put(i64 %39)
  br label %41

41:                                               ; preds = %36, %3
  ret void
}

declare dso_local %struct.sun8i_dw_hdmi* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dw_hdmi_unbind(i32) #1

declare dso_local i32 @sun8i_hdmi_phy_remove(%struct.sun8i_dw_hdmi*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @gpiod_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
