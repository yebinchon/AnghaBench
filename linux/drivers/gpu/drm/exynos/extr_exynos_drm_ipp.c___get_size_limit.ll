; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_ipp.c___get_size_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_ipp.c___get_size_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_exynos_ipp_limit = type { i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.drm_ipp_limit = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@limit_id_fallback = common dso_local global i32** null, align 8
@DRM_EXYNOS_IPP_LIMIT_TYPE_MASK = common dso_local global i32 0, align 4
@DRM_EXYNOS_IPP_LIMIT_TYPE_SIZE = common dso_local global i32 0, align 4
@DRM_EXYNOS_IPP_LIMIT_SIZE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_exynos_ipp_limit*, i32, i32, %struct.drm_ipp_limit*)* @__get_size_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__get_size_limit(%struct.drm_exynos_ipp_limit* %0, i32 %1, i32 %2, %struct.drm_ipp_limit* %3) #0 {
  %5 = alloca %struct.drm_exynos_ipp_limit*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_ipp_limit*, align 8
  %9 = alloca %struct.drm_exynos_ipp_limit*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_exynos_ipp_limit* %0, %struct.drm_exynos_ipp_limit** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.drm_ipp_limit* %3, %struct.drm_ipp_limit** %8, align 8
  %11 = load %struct.drm_exynos_ipp_limit*, %struct.drm_exynos_ipp_limit** %5, align 8
  store %struct.drm_exynos_ipp_limit* %11, %struct.drm_exynos_ipp_limit** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.drm_ipp_limit*, %struct.drm_ipp_limit** %8, align 8
  %13 = call i32 @memset(%struct.drm_ipp_limit* %12, i32 0, i32 24)
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %115, %4
  %15 = load i32**, i32*** @limit_id_fallback, align 8
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %118

25:                                               ; preds = %14
  %26 = load %struct.drm_exynos_ipp_limit*, %struct.drm_exynos_ipp_limit** %5, align 8
  store %struct.drm_exynos_ipp_limit* %26, %struct.drm_exynos_ipp_limit** %9, align 8
  br label %27

27:                                               ; preds = %111, %25
  %28 = load %struct.drm_exynos_ipp_limit*, %struct.drm_exynos_ipp_limit** %9, align 8
  %29 = load %struct.drm_exynos_ipp_limit*, %struct.drm_exynos_ipp_limit** %5, align 8
  %30 = ptrtoint %struct.drm_exynos_ipp_limit* %28 to i64
  %31 = ptrtoint %struct.drm_exynos_ipp_limit* %29 to i64
  %32 = sub i64 %30, %31
  %33 = sdiv exact i64 %32, 28
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = icmp slt i64 %33, %35
  br i1 %36, label %37, label %114

37:                                               ; preds = %27
  %38 = load %struct.drm_exynos_ipp_limit*, %struct.drm_exynos_ipp_limit** %9, align 8
  %39 = getelementptr inbounds %struct.drm_exynos_ipp_limit, %struct.drm_exynos_ipp_limit* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DRM_EXYNOS_IPP_LIMIT_TYPE_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @DRM_EXYNOS_IPP_LIMIT_TYPE_SIZE, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %61, label %45

45:                                               ; preds = %37
  %46 = load %struct.drm_exynos_ipp_limit*, %struct.drm_exynos_ipp_limit** %9, align 8
  %47 = getelementptr inbounds %struct.drm_exynos_ipp_limit, %struct.drm_exynos_ipp_limit* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DRM_EXYNOS_IPP_LIMIT_SIZE_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32**, i32*** @limit_id_fallback, align 8
  %52 = load i32, i32* %7, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %50, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %45, %37
  br label %111

62:                                               ; preds = %45
  %63 = load %struct.drm_ipp_limit*, %struct.drm_ipp_limit** %8, align 8
  %64 = getelementptr inbounds %struct.drm_ipp_limit, %struct.drm_ipp_limit* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load %struct.drm_exynos_ipp_limit*, %struct.drm_exynos_ipp_limit** %9, align 8
  %67 = getelementptr inbounds %struct.drm_exynos_ipp_limit, %struct.drm_exynos_ipp_limit* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @__limit_set_val(i32* %65, i32 %69)
  %71 = load %struct.drm_ipp_limit*, %struct.drm_ipp_limit** %8, align 8
  %72 = getelementptr inbounds %struct.drm_ipp_limit, %struct.drm_ipp_limit* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load %struct.drm_exynos_ipp_limit*, %struct.drm_exynos_ipp_limit** %9, align 8
  %75 = getelementptr inbounds %struct.drm_exynos_ipp_limit, %struct.drm_exynos_ipp_limit* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @__limit_set_val(i32* %73, i32 %77)
  %79 = load %struct.drm_ipp_limit*, %struct.drm_ipp_limit** %8, align 8
  %80 = getelementptr inbounds %struct.drm_ipp_limit, %struct.drm_ipp_limit* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load %struct.drm_exynos_ipp_limit*, %struct.drm_exynos_ipp_limit** %9, align 8
  %83 = getelementptr inbounds %struct.drm_exynos_ipp_limit, %struct.drm_exynos_ipp_limit* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @__limit_set_val(i32* %81, i32 %85)
  %87 = load %struct.drm_ipp_limit*, %struct.drm_ipp_limit** %8, align 8
  %88 = getelementptr inbounds %struct.drm_ipp_limit, %struct.drm_ipp_limit* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  %90 = load %struct.drm_exynos_ipp_limit*, %struct.drm_exynos_ipp_limit** %9, align 8
  %91 = getelementptr inbounds %struct.drm_exynos_ipp_limit, %struct.drm_exynos_ipp_limit* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @__limit_set_val(i32* %89, i32 %93)
  %95 = load %struct.drm_ipp_limit*, %struct.drm_ipp_limit** %8, align 8
  %96 = getelementptr inbounds %struct.drm_ipp_limit, %struct.drm_ipp_limit* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load %struct.drm_exynos_ipp_limit*, %struct.drm_exynos_ipp_limit** %9, align 8
  %99 = getelementptr inbounds %struct.drm_exynos_ipp_limit, %struct.drm_exynos_ipp_limit* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @__limit_set_val(i32* %97, i32 %101)
  %103 = load %struct.drm_ipp_limit*, %struct.drm_ipp_limit** %8, align 8
  %104 = getelementptr inbounds %struct.drm_ipp_limit, %struct.drm_ipp_limit* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load %struct.drm_exynos_ipp_limit*, %struct.drm_exynos_ipp_limit** %9, align 8
  %107 = getelementptr inbounds %struct.drm_exynos_ipp_limit, %struct.drm_exynos_ipp_limit* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @__limit_set_val(i32* %105, i32 %109)
  br label %111

111:                                              ; preds = %62, %61
  %112 = load %struct.drm_exynos_ipp_limit*, %struct.drm_exynos_ipp_limit** %9, align 8
  %113 = getelementptr inbounds %struct.drm_exynos_ipp_limit, %struct.drm_exynos_ipp_limit* %112, i32 1
  store %struct.drm_exynos_ipp_limit* %113, %struct.drm_exynos_ipp_limit** %9, align 8
  br label %27

114:                                              ; preds = %27
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %14

118:                                              ; preds = %14
  ret void
}

declare dso_local i32 @memset(%struct.drm_ipp_limit*, i32, i32) #1

declare dso_local i32 @__limit_set_val(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
