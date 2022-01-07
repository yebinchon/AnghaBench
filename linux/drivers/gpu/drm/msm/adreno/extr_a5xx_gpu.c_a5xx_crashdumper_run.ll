; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_crashdumper_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_crashdumper_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.a5xx_crashdumper = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@REG_A5XX_CP_CRASH_SCRIPT_BASE_LO = common dso_local global i32 0, align 4
@REG_A5XX_CP_CRASH_SCRIPT_BASE_HI = common dso_local global i32 0, align 4
@REG_A5XX_CP_CRASH_DUMP_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gpu*, %struct.a5xx_crashdumper*)* @a5xx_crashdumper_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a5xx_crashdumper_run(%struct.msm_gpu* %0, %struct.a5xx_crashdumper* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msm_gpu*, align 8
  %5 = alloca %struct.a5xx_crashdumper*, align 8
  %6 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %4, align 8
  store %struct.a5xx_crashdumper* %1, %struct.a5xx_crashdumper** %5, align 8
  %7 = load %struct.a5xx_crashdumper*, %struct.a5xx_crashdumper** %5, align 8
  %8 = getelementptr inbounds %struct.a5xx_crashdumper, %struct.a5xx_crashdumper* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @IS_ERR_OR_NULL(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %32

15:                                               ; preds = %2
  %16 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %17 = load i32, i32* @REG_A5XX_CP_CRASH_SCRIPT_BASE_LO, align 4
  %18 = load i32, i32* @REG_A5XX_CP_CRASH_SCRIPT_BASE_HI, align 4
  %19 = load %struct.a5xx_crashdumper*, %struct.a5xx_crashdumper** %5, align 8
  %20 = getelementptr inbounds %struct.a5xx_crashdumper, %struct.a5xx_crashdumper* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @gpu_write64(%struct.msm_gpu* %16, i32 %17, i32 %18, i32 %21)
  %23 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %24 = load i32, i32* @REG_A5XX_CP_CRASH_DUMP_CNTL, align 4
  %25 = call i32 @gpu_write(%struct.msm_gpu* %23, i32 %24, i32 1)
  %26 = load %struct.msm_gpu*, %struct.msm_gpu** %4, align 8
  %27 = load i32, i32* @REG_A5XX_CP_CRASH_DUMP_CNTL, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 4
  %31 = call i32 @gpu_poll_timeout(%struct.msm_gpu* %26, i32 %27, i32 %28, i32 %30, i32 100, i32 10000)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %15, %12
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @gpu_write64(%struct.msm_gpu*, i32, i32, i32) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

declare dso_local i32 @gpu_poll_timeout(%struct.msm_gpu*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
