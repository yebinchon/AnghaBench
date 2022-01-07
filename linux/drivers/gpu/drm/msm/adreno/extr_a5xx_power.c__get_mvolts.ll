; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_power.c__get_mvolts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_power.c__get_mvolts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { %struct.drm_device* }
%struct.drm_device = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.platform_device* }
%struct.platform_device = type { i32 }
%struct.dev_pm_opp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gpu*, i32)* @_get_mvolts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_get_mvolts(%struct.msm_gpu* %0, i32 %1) #0 {
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.msm_drm_private*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.dev_pm_opp*, align 8
  %9 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %11 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %5, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.msm_drm_private*, %struct.msm_drm_private** %14, align 8
  store %struct.msm_drm_private* %15, %struct.msm_drm_private** %6, align 8
  %16 = load %struct.msm_drm_private*, %struct.msm_drm_private** %6, align 8
  %17 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %16, i32 0, i32 0
  %18 = load %struct.platform_device*, %struct.platform_device** %17, align 8
  store %struct.platform_device* %18, %struct.platform_device** %7, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* %4, align 4
  %22 = call %struct.dev_pm_opp* @dev_pm_opp_find_freq_exact(i32* %20, i32 %21, i32 1)
  store %struct.dev_pm_opp* %22, %struct.dev_pm_opp** %8, align 8
  %23 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %8, align 8
  %24 = call i32 @IS_ERR(%struct.dev_pm_opp* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %2
  %27 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %8, align 8
  %28 = call i32 @dev_pm_opp_get_voltage(%struct.dev_pm_opp* %27)
  %29 = sdiv i32 %28, 1000
  store i32 %29, i32* %9, align 4
  %30 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %8, align 8
  %31 = call i32 @dev_pm_opp_put(%struct.dev_pm_opp* %30)
  br label %32

32:                                               ; preds = %26, %2
  %33 = load i32, i32* %9, align 4
  ret i32 %33
}

declare dso_local %struct.dev_pm_opp* @dev_pm_opp_find_freq_exact(i32*, i32, i32) #1

declare dso_local i32 @IS_ERR(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_pm_opp_get_voltage(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_pm_opp_put(%struct.dev_pm_opp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
