; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_gpu.c_adreno_get_pwrlevels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_adreno_gpu.c_adreno_get_pwrlevels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.msm_gpu = type { i64, %struct.dev_pm_opp* }
%struct.dev_pm_opp = type { i32 }

@ULONG_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"operating-points-v2\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Unable to set the OPP table\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Could not find a clock rate. Using a reasonable default\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"fast_rate=%u, slow_rate=27000000\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.msm_gpu*)* @adreno_get_pwrlevels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adreno_get_pwrlevels(%struct.device* %0, %struct.msm_gpu* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.msm_gpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dev_pm_opp*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.msm_gpu* %1, %struct.msm_gpu** %4, align 8
  %8 = load i64, i64* @ULONG_MAX, align 8
  store i64 %8, i64* %5, align 8
  %9 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %10 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @of_find_property(i32 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* null)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = call i32 @adreno_get_legacy_pwrlevels(%struct.device* %17)
  store i32 %18, i32* %7, align 4
  br label %28

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = call i32 @dev_pm_opp_of_add_table(%struct.device* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = call i32 @DRM_DEV_ERROR(%struct.device* %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %19
  br label %28

28:                                               ; preds = %27, %16
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %28
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = call %struct.dev_pm_opp* @dev_pm_opp_find_freq_floor(%struct.device* %32, i64* %5)
  store %struct.dev_pm_opp* %33, %struct.dev_pm_opp** %6, align 8
  %34 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %6, align 8
  %35 = call i64 @IS_ERR(%struct.dev_pm_opp* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %40 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %6, align 8
  %42 = call i32 @dev_pm_opp_put(%struct.dev_pm_opp* %41)
  br label %43

43:                                               ; preds = %37, %31
  br label %44

44:                                               ; preds = %43, %28
  %45 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %46 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load %struct.device*, %struct.device** %3, align 8
  %51 = call i32 @dev_warn(%struct.device* %50, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %53 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %52, i32 0, i32 0
  store i64 200000000, i64* %53, align 8
  br label %54

54:                                               ; preds = %49, %44
  %55 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %56 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load %struct.device*, %struct.device** %3, align 8
  %61 = call %struct.dev_pm_opp* @of_icc_get(%struct.device* %60, i32* null)
  %62 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %63 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %62, i32 0, i32 1
  store %struct.dev_pm_opp* %61, %struct.dev_pm_opp** %63, align 8
  %64 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %65 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %64, i32 0, i32 1
  %66 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %65, align 8
  %67 = call i64 @IS_ERR(%struct.dev_pm_opp* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %54
  %70 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %71 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %70, i32 0, i32 1
  store %struct.dev_pm_opp* null, %struct.dev_pm_opp** %71, align 8
  br label %72

72:                                               ; preds = %69, %54
  ret i32 0
}

declare dso_local i32 @of_find_property(i32, i8*, i32*) #1

declare dso_local i32 @adreno_get_legacy_pwrlevels(%struct.device*) #1

declare dso_local i32 @dev_pm_opp_of_add_table(%struct.device*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*) #1

declare dso_local %struct.dev_pm_opp* @dev_pm_opp_find_freq_floor(%struct.device*, i64*) #1

declare dso_local i64 @IS_ERR(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_pm_opp_put(%struct.dev_pm_opp*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local %struct.dev_pm_opp* @of_icc_get(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
