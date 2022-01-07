; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_check_ovf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimc.c_fimc_check_ovf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_context = type { i32, i32 }

@EXYNOS_CISTATUS = common dso_local global i32 0, align 4
@EXYNOS_CISTATUS_OVFIY = common dso_local global i32 0, align 4
@EXYNOS_CISTATUS_OVFICB = common dso_local global i32 0, align 4
@EXYNOS_CISTATUS_OVFICR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"flag[0x%x]\0A\00", align 1
@EXYNOS_CIWDOFST = common dso_local global i32 0, align 4
@EXYNOS_CIWDOFST_CLROVFIY = common dso_local global i32 0, align 4
@EXYNOS_CIWDOFST_CLROVFICB = common dso_local global i32 0, align 4
@EXYNOS_CIWDOFST_CLROVFICR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"occurred overflow at %d, status 0x%x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_context*)* @fimc_check_ovf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_check_ovf(%struct.fimc_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fimc_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fimc_context* %0, %struct.fimc_context** %3, align 8
  %6 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %7 = load i32, i32* @EXYNOS_CISTATUS, align 4
  %8 = call i32 @fimc_read(%struct.fimc_context* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @EXYNOS_CISTATUS_OVFIY, align 4
  %10 = load i32, i32* @EXYNOS_CISTATUS_OVFICB, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @EXYNOS_CISTATUS_OVFICR, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %15 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @DRM_DEV_DEBUG_KMS(i32 %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %1
  %24 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %25 = load i32, i32* @EXYNOS_CIWDOFST, align 4
  %26 = load i32, i32* @EXYNOS_CIWDOFST_CLROVFIY, align 4
  %27 = load i32, i32* @EXYNOS_CIWDOFST_CLROVFICB, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @EXYNOS_CIWDOFST_CLROVFICR, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @fimc_set_bits(%struct.fimc_context* %24, i32 %25, i32 %30)
  %32 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %33 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.fimc_context*, %struct.fimc_context** %3, align 8
  %36 = getelementptr inbounds %struct.fimc_context, %struct.fimc_context* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @DRM_DEV_ERROR(i32 %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38)
  store i32 1, i32* %2, align 4
  br label %41

40:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %23
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @fimc_read(%struct.fimc_context*, i32) #1

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32) #1

declare dso_local i32 @fimc_set_bits(%struct.fimc_context*, i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
