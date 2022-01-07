; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_scaler.c_scaler_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_scaler.c_scaler_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scaler_context = type { i32, i32, %struct.exynos_drm_ipp }
%struct.exynos_drm_ipp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.device*, i8*)* @scaler_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scaler_unbind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.scaler_context*, align 8
  %8 = alloca %struct.exynos_drm_ipp*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.scaler_context* @dev_get_drvdata(%struct.device* %9)
  store %struct.scaler_context* %10, %struct.scaler_context** %7, align 8
  %11 = load %struct.scaler_context*, %struct.scaler_context** %7, align 8
  %12 = getelementptr inbounds %struct.scaler_context, %struct.scaler_context* %11, i32 0, i32 2
  store %struct.exynos_drm_ipp* %12, %struct.exynos_drm_ipp** %8, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %8, align 8
  %15 = call i32 @exynos_drm_ipp_unregister(%struct.device* %13, %struct.exynos_drm_ipp* %14)
  %16 = load %struct.scaler_context*, %struct.scaler_context** %7, align 8
  %17 = getelementptr inbounds %struct.scaler_context, %struct.scaler_context* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.scaler_context*, %struct.scaler_context** %7, align 8
  %20 = getelementptr inbounds %struct.scaler_context, %struct.scaler_context* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @exynos_drm_unregister_dma(i32 %18, i32 %21)
  ret void
}

declare dso_local %struct.scaler_context* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @exynos_drm_ipp_unregister(%struct.device*, %struct.exynos_drm_ipp*) #1

declare dso_local i32 @exynos_drm_unregister_dma(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
