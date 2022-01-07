; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_pm_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a5xx_gpu.c_a5xx_pm_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gpu = type { i32 }

@REG_A5XX_GPMU_RBCCU_POWER_CNTL = common dso_local global i32 0, align 4
@REG_A5XX_GPMU_RBCCU_PWR_CLK_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%s: timeout waiting for RBCCU GDSC enable: %X\0A\00", align 1
@REG_A5XX_GPMU_SP_POWER_CNTL = common dso_local global i32 0, align 4
@REG_A5XX_GPMU_SP_PWR_CLK_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"%s: timeout waiting for SP GDSC enable\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_gpu*)* @a5xx_pm_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a5xx_pm_resume(%struct.msm_gpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msm_gpu*, align 8
  %4 = alloca i32, align 4
  store %struct.msm_gpu* %0, %struct.msm_gpu** %3, align 8
  %5 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %6 = call i32 @msm_gpu_pm_resume(%struct.msm_gpu* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %46

11:                                               ; preds = %1
  %12 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %13 = load i32, i32* @REG_A5XX_GPMU_RBCCU_POWER_CNTL, align 4
  %14 = call i32 @gpu_write(%struct.msm_gpu* %12, i32 %13, i32 7831552)
  %15 = call i32 @udelay(i32 3)
  %16 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %17 = load i32, i32* @REG_A5XX_GPMU_RBCCU_PWR_CLK_STATUS, align 4
  %18 = call i32 @spin_usecs(%struct.msm_gpu* %16, i32 20, i32 %17, i32 1048576, i32 1048576)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %11
  %22 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %23 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %26 = load i32, i32* @REG_A5XX_GPMU_RBCCU_PWR_CLK_STATUS, align 4
  %27 = call i32 @gpu_read(%struct.msm_gpu* %25, i32 %26)
  %28 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %46

30:                                               ; preds = %11
  %31 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %32 = load i32, i32* @REG_A5XX_GPMU_SP_POWER_CNTL, align 4
  %33 = call i32 @gpu_write(%struct.msm_gpu* %31, i32 %32, i32 7831552)
  %34 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %35 = load i32, i32* @REG_A5XX_GPMU_SP_PWR_CLK_STATUS, align 4
  %36 = call i32 @spin_usecs(%struct.msm_gpu* %34, i32 20, i32 %35, i32 1048576, i32 1048576)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = load %struct.msm_gpu*, %struct.msm_gpu** %3, align 8
  %41 = getelementptr inbounds %struct.msm_gpu, %struct.msm_gpu* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %39, %30
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %21, %9
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @msm_gpu_pm_resume(%struct.msm_gpu*) #1

declare dso_local i32 @gpu_write(%struct.msm_gpu*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_usecs(%struct.msm_gpu*, i32, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, ...) #1

declare dso_local i32 @gpu_read(%struct.msm_gpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
