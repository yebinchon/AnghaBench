; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_ipp.c___size_limit_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_ipp.c___size_limit_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_exynos_ipp_limit_val = type { i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"Value %d exceeds HW limits (min %d, max %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.drm_exynos_ipp_limit_val*)* @__size_limit_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__size_limit_check(i32 %0, %struct.drm_exynos_ipp_limit_val* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_exynos_ipp_limit_val*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.drm_exynos_ipp_limit_val* %1, %struct.drm_exynos_ipp_limit_val** %5, align 8
  %6 = load %struct.drm_exynos_ipp_limit_val*, %struct.drm_exynos_ipp_limit_val** %5, align 8
  %7 = getelementptr inbounds %struct.drm_exynos_ipp_limit_val, %struct.drm_exynos_ipp_limit_val* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.drm_exynos_ipp_limit_val*, %struct.drm_exynos_ipp_limit_val** %5, align 8
  %13 = getelementptr inbounds %struct.drm_exynos_ipp_limit_val, %struct.drm_exynos_ipp_limit_val* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %27, label %16

16:                                               ; preds = %10, %2
  %17 = load %struct.drm_exynos_ipp_limit_val*, %struct.drm_exynos_ipp_limit_val** %5, align 8
  %18 = getelementptr inbounds %struct.drm_exynos_ipp_limit_val, %struct.drm_exynos_ipp_limit_val* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.drm_exynos_ipp_limit_val*, %struct.drm_exynos_ipp_limit_val** %5, align 8
  %24 = getelementptr inbounds %struct.drm_exynos_ipp_limit_val, %struct.drm_exynos_ipp_limit_val* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ugt i32 %22, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %21, %10
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.drm_exynos_ipp_limit_val*, %struct.drm_exynos_ipp_limit_val** %5, align 8
  %30 = getelementptr inbounds %struct.drm_exynos_ipp_limit_val, %struct.drm_exynos_ipp_limit_val* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.drm_exynos_ipp_limit_val*, %struct.drm_exynos_ipp_limit_val** %5, align 8
  %33 = getelementptr inbounds %struct.drm_exynos_ipp_limit_val, %struct.drm_exynos_ipp_limit_val* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31, i32 %34)
  store i32 0, i32* %3, align 4
  br label %42

36:                                               ; preds = %21, %16
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.drm_exynos_ipp_limit_val*, %struct.drm_exynos_ipp_limit_val** %5, align 8
  %39 = getelementptr inbounds %struct.drm_exynos_ipp_limit_val, %struct.drm_exynos_ipp_limit_val* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @__align_check(i32 %37, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %36, %27
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32, i32) #1

declare dso_local i32 @__align_check(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
