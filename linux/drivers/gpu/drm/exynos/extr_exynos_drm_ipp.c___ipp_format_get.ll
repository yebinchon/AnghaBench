; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_ipp.c___ipp_format_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_ipp.c___ipp_format_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_ipp_formats = type { i32, i64, i64 }
%struct.exynos_drm_ipp = type { i32, %struct.exynos_drm_ipp_formats* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.exynos_drm_ipp_formats* (%struct.exynos_drm_ipp*, i64, i64, i32)* @__ipp_format_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.exynos_drm_ipp_formats* @__ipp_format_get(%struct.exynos_drm_ipp* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.exynos_drm_ipp_formats*, align 8
  %6 = alloca %struct.exynos_drm_ipp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.exynos_drm_ipp* %0, %struct.exynos_drm_ipp** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %59, %4
  %12 = load i32, i32* %10, align 4
  %13 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %6, align 8
  %14 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %62

17:                                               ; preds = %11
  %18 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %6, align 8
  %19 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %18, i32 0, i32 1
  %20 = load %struct.exynos_drm_ipp_formats*, %struct.exynos_drm_ipp_formats** %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.exynos_drm_ipp_formats, %struct.exynos_drm_ipp_formats* %20, i64 %22
  %24 = getelementptr inbounds %struct.exynos_drm_ipp_formats, %struct.exynos_drm_ipp_formats* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %58

29:                                               ; preds = %17
  %30 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %6, align 8
  %31 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %30, i32 0, i32 1
  %32 = load %struct.exynos_drm_ipp_formats*, %struct.exynos_drm_ipp_formats** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.exynos_drm_ipp_formats, %struct.exynos_drm_ipp_formats* %32, i64 %34
  %36 = getelementptr inbounds %struct.exynos_drm_ipp_formats, %struct.exynos_drm_ipp_formats* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %29
  %41 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %6, align 8
  %42 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %41, i32 0, i32 1
  %43 = load %struct.exynos_drm_ipp_formats*, %struct.exynos_drm_ipp_formats** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.exynos_drm_ipp_formats, %struct.exynos_drm_ipp_formats* %43, i64 %45
  %47 = getelementptr inbounds %struct.exynos_drm_ipp_formats, %struct.exynos_drm_ipp_formats* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %40
  %52 = load %struct.exynos_drm_ipp*, %struct.exynos_drm_ipp** %6, align 8
  %53 = getelementptr inbounds %struct.exynos_drm_ipp, %struct.exynos_drm_ipp* %52, i32 0, i32 1
  %54 = load %struct.exynos_drm_ipp_formats*, %struct.exynos_drm_ipp_formats** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.exynos_drm_ipp_formats, %struct.exynos_drm_ipp_formats* %54, i64 %56
  store %struct.exynos_drm_ipp_formats* %57, %struct.exynos_drm_ipp_formats** %5, align 8
  br label %63

58:                                               ; preds = %40, %29, %17
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %11

62:                                               ; preds = %11
  store %struct.exynos_drm_ipp_formats* null, %struct.exynos_drm_ipp_formats** %5, align 8
  br label %63

63:                                               ; preds = %62, %51
  %64 = load %struct.exynos_drm_ipp_formats*, %struct.exynos_drm_ipp_formats** %5, align 8
  ret %struct.exynos_drm_ipp_formats* %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
