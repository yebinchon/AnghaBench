; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_gmu_set_oob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/adreno/extr_a6xx_gmu.c_a6xx_gmu_set_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a6xx_gmu = type { i32 }

@GMU_OOB_GPU_SET_REQUEST = common dso_local global i32 0, align 4
@GMU_OOB_GPU_SET_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"GPU_SET\00", align 1
@GMU_OOB_BOOT_SLUMBER_REQUEST = common dso_local global i32 0, align 4
@GMU_OOB_BOOT_SLUMBER_ACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"BOOT_SLUMBER\00", align 1
@GMU_OOB_DCVS_REQUEST = common dso_local global i32 0, align 4
@GMU_OOB_DCVS_ACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"GPU_DCVS\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@REG_A6XX_GMU_HOST2GMU_INTR_SET = common dso_local global i32 0, align 4
@REG_A6XX_GMU_GMU2HOST_INTR_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"Timeout waiting for GMU OOB set %s: 0x%x\0A\00", align 1
@REG_A6XX_GMU_GMU2HOST_INTR_CLR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @a6xx_gmu_set_oob(%struct.a6xx_gmu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.a6xx_gmu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.a6xx_gmu* %0, %struct.a6xx_gmu** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %21 [
    i32 128, label %12
    i32 130, label %15
    i32 129, label %18
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @GMU_OOB_GPU_SET_REQUEST, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @GMU_OOB_GPU_SET_ACK, align 4
  store i32 %14, i32* %9, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %24

15:                                               ; preds = %2
  %16 = load i32, i32* @GMU_OOB_BOOT_SLUMBER_REQUEST, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @GMU_OOB_BOOT_SLUMBER_ACK, align 4
  store i32 %17, i32* %9, align 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %24

18:                                               ; preds = %2
  %19 = load i32, i32* @GMU_OOB_DCVS_REQUEST, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @GMU_OOB_DCVS_ACK, align 4
  store i32 %20, i32* %9, align 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %56

24:                                               ; preds = %18, %15, %12
  %25 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %4, align 8
  %26 = load i32, i32* @REG_A6XX_GMU_HOST2GMU_INTR_SET, align 4
  %27 = load i32, i32* %8, align 4
  %28 = shl i32 1, %27
  %29 = call i32 @gmu_write(%struct.a6xx_gmu* %25, i32 %26, i32 %28)
  %30 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %4, align 8
  %31 = load i32, i32* @REG_A6XX_GMU_GMU2HOST_INTR_INFO, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %9, align 4
  %35 = shl i32 1, %34
  %36 = and i32 %33, %35
  %37 = call i32 @gmu_poll_timeout(%struct.a6xx_gmu* %30, i32 %31, i32 %32, i32 %36, i32 100, i32 10000)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %24
  %41 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %4, align 8
  %42 = getelementptr inbounds %struct.a6xx_gmu, %struct.a6xx_gmu* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %10, align 8
  %45 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %4, align 8
  %46 = load i32, i32* @REG_A6XX_GMU_GMU2HOST_INTR_INFO, align 4
  %47 = call i32 @gmu_read(%struct.a6xx_gmu* %45, i32 %46)
  %48 = call i32 @DRM_DEV_ERROR(i32 %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %44, i32 %47)
  br label %49

49:                                               ; preds = %40, %24
  %50 = load %struct.a6xx_gmu*, %struct.a6xx_gmu** %4, align 8
  %51 = load i32, i32* @REG_A6XX_GMU_GMU2HOST_INTR_CLR, align 4
  %52 = load i32, i32* %9, align 4
  %53 = shl i32 1, %52
  %54 = call i32 @gmu_write(%struct.a6xx_gmu* %50, i32 %51, i32 %53)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %49, %21
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @gmu_write(%struct.a6xx_gmu*, i32, i32) #1

declare dso_local i32 @gmu_poll_timeout(%struct.a6xx_gmu*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i8*, i32) #1

declare dso_local i32 @gmu_read(%struct.a6xx_gmu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
