; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a4xx_gpu.c_a4xx_pm_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a4xx_gpu.c_a4xx_pm_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }
%struct.adreno_gpu = type { i32 }

@REG_A4XX_RBBM_POWER_CNTL_IP = common dso_local global i32 0, align 4
@REG_A4XX_RBBM_POWER_STATUS = common dso_local global i32 0, align 4
@A4XX_RBBM_POWER_CNTL_IP_SP_TP_PWR_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gpu*)* @a4xx_pm_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a4xx_pm_resume(%struct.msm_gpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca %struct.adreno_gpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  %7 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %8 = call %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu* %7)
  store %struct.adreno_gpu* %8, %struct.adreno_gpu** %4, align 8
  %9 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %10 = call i32 @msm_gpu_pm_resume(%struct.msm_gpu* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %36

15:                                               ; preds = %1
  %16 = load %struct.adreno_gpu*, %struct.adreno_gpu** %4, align 8
  %17 = call i64 @adreno_is_a430(%struct.adreno_gpu* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %21 = load i32, i32* @REG_A4XX_RBBM_POWER_CNTL_IP, align 4
  %22 = call i32 @gpu_write(%struct.msm_gpu* %20, i32 %21, i32 7831552)
  br label %23

23:                                               ; preds = %28, %19
  %24 = call i32 @udelay(i32 5)
  %25 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %26 = load i32, i32* @REG_A4XX_RBBM_POWER_STATUS, align 4
  %27 = call i32 @gpu_read(%struct.msm_gpu* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @A4XX_RBBM_POWER_CNTL_IP_SP_TP_PWR_ON, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %23, label %34

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %15
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %13
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.adreno_gpu* @to_adreno_gpu(%struct.msm_gpu*) #1

declare dso_local i32 @msm_gpu_pm_resume(%struct.msm_gpu*) #1

declare dso_local i64 @adreno_is_a430(%struct.adreno_gpu*) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gpu_read(%struct.msm_gpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
