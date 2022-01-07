; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_crashdumper_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gpu_state.c_a6xx_crashdumper_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.a6xx_crashdumper = type { i32, i32 }
%struct.adreno_gpu = type { i32 }
%struct.a6xx_gpu = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@REG_A6XX_CP_CRASH_SCRIPT_BASE_LO = common dso_local global i32 0, align 4
@REG_A6XX_CP_CRASH_SCRIPT_BASE_HI = common dso_local global i32 0, align 4
@REG_A6XX_CP_CRASH_DUMP_CNTL = common dso_local global i32 0, align 4
@REG_A6XX_CP_CRASH_DUMP_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gpu*, %struct.a6xx_crashdumper*)* @a6xx_crashdumper_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a6xx_crashdumper_run(%struct.msm_gpu* %0, %struct.a6xx_crashdumper* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msm_gpu*, align 8
  %5 = alloca %struct.a6xx_crashdumper*, align 8
  %6 = alloca %struct.adreno_gpu*, align 8
  %7 = alloca %struct.a6xx_gpu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %4, align 8
  store %struct.a6xx_crashdumper* %1, %struct.a6xx_crashdumper** %5, align 8
  %10 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %11 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %10)
  store %struct.adreno_gpu* %11, %struct.adreno_gpu** %6, align 8
  %12 = load %struct.adreno_gpu*, %struct.adreno_gpu** %6, align 8
  %13 = call %struct.a6xx_gpu* @to_a6xx_gpu(%struct.adreno_gpu* %12)
  store %struct.a6xx_gpu* %13, %struct.a6xx_gpu** %7, align 8
  %14 = load %struct.a6xx_crashdumper*, %struct.a6xx_crashdumper** %5, align 8
  %15 = getelementptr inbounds %struct.a6xx_crashdumper, %struct.a6xx_crashdumper* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @IS_ERR_OR_NULL(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %52

22:                                               ; preds = %2
  %23 = load %struct.a6xx_gpu*, %struct.a6xx_gpu** %7, align 8
  %24 = getelementptr inbounds %struct.a6xx_gpu, %struct.a6xx_gpu* %23, i32 0, i32 0
  %25 = call i32 @a6xx_gmu_sptprac_is_on(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %52

30:                                               ; preds = %22
  %31 = call i32 (...) @wmb()
  %32 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %33 = load i32, i32* @REG_A6XX_CP_CRASH_SCRIPT_BASE_LO, align 4
  %34 = load i32, i32* @REG_A6XX_CP_CRASH_SCRIPT_BASE_HI, align 4
  %35 = load %struct.a6xx_crashdumper*, %struct.a6xx_crashdumper** %5, align 8
  %36 = getelementptr inbounds %struct.a6xx_crashdumper, %struct.a6xx_crashdumper* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @gpu_write64(%struct.msm_gpu* %32, i32 %33, i32 %34, i32 %37)
  %39 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %40 = load i32, i32* @REG_A6XX_CP_CRASH_DUMP_CNTL, align 4
  %41 = call i32 @gpu_write(%struct.msm_gpu* %39, i32 %40, i32 1)
  %42 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %43 = load i32, i32* @REG_A6XX_CP_CRASH_DUMP_STATUS, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, 2
  %47 = call i32 @gpu_poll_timeout(%struct.msm_gpu* %42, i32 %43, i32 %44, i32 %46, i32 100, i32 10000)
  store i32 %47, i32* %9, align 4
  %48 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %49 = load i32, i32* @REG_A6XX_CP_CRASH_DUMP_CNTL, align 4
  %50 = call i32 @gpu_write(%struct.msm_gpu* %48, i32 %49, i32 0)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %30, %27, %19
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local %struct.a6xx_gpu* @to_a6xx_gpu(%struct.adreno_gpu*) #1

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @a6xx_gmu_sptprac_is_on(i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @gpu_write64(%struct.msm_gpu*, i32, i32, i32) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

declare dso_local i32 @gpu_poll_timeout(%struct.msm_gpu*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
