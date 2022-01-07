; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_get_buf_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_get_buf_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_context = type { i32 }

@EXYNOS_CISTATUS2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"present[%d]before[%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to get frame count.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"buf_id[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_context*)* @fimc_get_buf_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_get_buf_id(%struct.fimc_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fimc_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fimc_context* %0, %struct.fimc_context** %3, align 8
  %7 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %8 = load i32, i32* @EXYNOS_CISTATUS2, align 4
  %9 = call i32 @fimc_read(%struct.fimc_context* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @EXYNOS_CISTATUS2_GET_FRAMECOUNT_BEFORE(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @EXYNOS_CISTATUS2_GET_FRAMECOUNT_PRESENT(i32 %15)
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %19 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @EXYNOS_CISTATUS2_GET_FRAMECOUNT_PRESENT(i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @EXYNOS_CISTATUS2_GET_FRAMECOUNT_BEFORE(i32 %23)
  %25 = call i32 (i32, i8*, i32, ...) @DRM_DEV_DEBUG_KMS(i32 %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %17
  %29 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %30 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @DRM_DEV_ERROR(i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %44

35:                                               ; preds = %17
  %36 = load i32, i32* %5, align 4
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  %38 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %39 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 (i32, i8*, i32, ...) @DRM_DEV_DEBUG_KMS(i32 %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %35, %28
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @fimc_read(%struct.fimc_context*, i32) #1

declare dso_local i32 @EXYNOS_CISTATUS2_GET_FRAMECOUNT_BEFORE(i32) #1

declare dso_local i32 @EXYNOS_CISTATUS2_GET_FRAMECOUNT_PRESENT(i32) #1

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32, ...) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
