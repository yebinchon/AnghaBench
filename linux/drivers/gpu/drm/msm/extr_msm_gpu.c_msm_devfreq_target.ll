; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.c_msm_devfreq_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gpu.c_msm_devfreq_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.msm_gpu = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.msm_gpu*, i32)* }
%struct.dev_pm_opp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64*, i32)* @msm_devfreq_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_devfreq_target(%struct.device* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.msm_gpu*, align 8
  %9 = alloca %struct.dev_pm_opp*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call i32 @to_platform_device(%struct.device* %10)
  %12 = call %struct.msm_gpu* @platform_get_drvdata(i32 %11)
  store %struct.msm_gpu* %12, %struct.msm_gpu** %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = load i64*, i64** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.dev_pm_opp* @devfreq_recommended_opp(%struct.device* %13, i64* %14, i32 %15)
  store %struct.dev_pm_opp* %16, %struct.dev_pm_opp** %9, align 8
  %17 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %9, align 8
  %18 = call i64 @IS_ERR(%struct.dev_pm_opp* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %9, align 8
  %22 = call i32 @PTR_ERR(%struct.dev_pm_opp* %21)
  store i32 %22, i32* %4, align 4
  br label %51

23:                                               ; preds = %3
  %24 = load %struct.msm_gpu*, %struct.msm_gpu** %8, align 8
  %25 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.msm_gpu*, i32)*, i32 (%struct.msm_gpu*, i32)** %27, align 8
  %29 = icmp ne i32 (%struct.msm_gpu*, i32)* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load %struct.msm_gpu*, %struct.msm_gpu** %8, align 8
  %32 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.msm_gpu*, i32)*, i32 (%struct.msm_gpu*, i32)** %34, align 8
  %36 = load %struct.msm_gpu*, %struct.msm_gpu** %8, align 8
  %37 = load i64*, i64** %6, align 8
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 %35(%struct.msm_gpu* %36, i32 %39)
  br label %48

41:                                               ; preds = %23
  %42 = load %struct.msm_gpu*, %struct.msm_gpu** %8, align 8
  %43 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i64*, i64** %6, align 8
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @clk_set_rate(i32 %44, i64 %46)
  br label %48

48:                                               ; preds = %41, %30
  %49 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %9, align 8
  %50 = call i32 @dev_pm_opp_put(%struct.dev_pm_opp* %49)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %48, %20
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.msm_gpu* @platform_get_drvdata(i32) #1

declare dso_local i32 @to_platform_device(%struct.device*) #1

declare dso_local %struct.dev_pm_opp* @devfreq_recommended_opp(%struct.device*, i64*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dev_pm_opp*) #1

declare dso_local i32 @PTR_ERR(%struct.dev_pm_opp*) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @dev_pm_opp_put(%struct.dev_pm_opp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
