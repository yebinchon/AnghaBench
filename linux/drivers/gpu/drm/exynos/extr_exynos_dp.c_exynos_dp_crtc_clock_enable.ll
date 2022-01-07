; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_dp.c_exynos_dp_crtc_clock_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_dp.c_exynos_dp_crtc_clock_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_plat_data = type { i32 }
%struct.exynos_dp_device = type { %struct.drm_encoder }
%struct.drm_encoder = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.analogix_dp_plat_data*, i32)* @exynos_dp_crtc_clock_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_dp_crtc_clock_enable(%struct.analogix_dp_plat_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.analogix_dp_plat_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.exynos_dp_device*, align 8
  %7 = alloca %struct.drm_encoder*, align 8
  store %struct.analogix_dp_plat_data* %0, %struct.analogix_dp_plat_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.analogix_dp_plat_data*, %struct.analogix_dp_plat_data** %4, align 8
  %9 = call %struct.exynos_dp_device* @to_dp(%struct.analogix_dp_plat_data* %8)
  store %struct.exynos_dp_device* %9, %struct.exynos_dp_device** %6, align 8
  %10 = load %struct.exynos_dp_device*, %struct.exynos_dp_device** %6, align 8
  %11 = getelementptr inbounds %struct.exynos_dp_device, %struct.exynos_dp_device* %10, i32 0, i32 0
  store %struct.drm_encoder* %11, %struct.drm_encoder** %7, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %13 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EPERM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %26

19:                                               ; preds = %2
  %20 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %21 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @to_exynos_crtc(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @exynos_drm_pipe_clk_enable(i32 %23, i32 %24)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %19, %16
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.exynos_dp_device* @to_dp(%struct.analogix_dp_plat_data*) #1

declare dso_local i32 @exynos_drm_pipe_clk_enable(i32, i32) #1

declare dso_local i32 @to_exynos_crtc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
