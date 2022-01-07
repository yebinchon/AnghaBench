; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gsc.c_gsc_get_ratio_shift.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gsc.c_gsc_get_ratio_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_context = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"src[%d]dst[%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to make ratio and shift.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gsc_context*, i32, i32, i32*)* @gsc_get_ratio_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsc_get_ratio_shift(%struct.gsc_context* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gsc_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.gsc_context* %0, %struct.gsc_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load %struct.gsc_context*, %struct.gsc_context** %6, align 8
  %11 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @DRM_DEV_DEBUG_KMS(i32 %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = mul nsw i32 %17, 8
  %19 = icmp sge i32 %16, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load %struct.gsc_context*, %struct.gsc_context** %6, align 8
  %22 = getelementptr inbounds %struct.gsc_context, %struct.gsc_context* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @DRM_DEV_ERROR(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %46

27:                                               ; preds = %4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = mul nsw i32 %29, 4
  %31 = icmp sge i32 %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32*, i32** %9, align 8
  store i32 4, i32* %33, align 4
  br label %44

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = mul nsw i32 %36, 2
  %38 = icmp sge i32 %35, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32*, i32** %9, align 8
  store i32 2, i32* %40, align 4
  br label %43

41:                                               ; preds = %34
  %42 = load i32*, i32** %9, align 8
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %41, %39
  br label %44

44:                                               ; preds = %43, %32
  br label %45

45:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %20
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
