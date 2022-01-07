; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_ipp.c_exynos_drm_ipp_check_size_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_ipp.c_exynos_drm_ipp_check_size_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_drm_ipp_buffer = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.drm_exynos_ipp_limit = type { i32 }
%struct.drm_ipp_limit = type { %struct.drm_exynos_ipp_limit_val, %struct.drm_exynos_ipp_limit_val }
%struct.drm_exynos_ipp_limit_val = type { i32 }

@IPP_LIMIT_ROTATED = common dso_local global i32 0, align 4
@IPP_LIMIT_AREA = common dso_local global i32 0, align 4
@IPP_LIMIT_BUFFER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_drm_ipp_buffer*, %struct.drm_exynos_ipp_limit*, i32, i32, i32)* @exynos_drm_ipp_check_size_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_drm_ipp_check_size_limits(%struct.exynos_drm_ipp_buffer* %0, %struct.drm_exynos_ipp_limit* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.exynos_drm_ipp_buffer*, align 8
  %8 = alloca %struct.drm_exynos_ipp_limit*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_ipp_limit, align 4
  %14 = alloca %struct.drm_exynos_ipp_limit_val*, align 8
  %15 = alloca %struct.drm_exynos_ipp_limit_val*, align 8
  %16 = alloca i32, align 4
  store %struct.exynos_drm_ipp_buffer* %0, %struct.exynos_drm_ipp_buffer** %7, align 8
  store %struct.drm_exynos_ipp_limit* %1, %struct.drm_exynos_ipp_limit** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @IPP_LIMIT_ROTATED, align 4
  br label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @IPP_LIMIT_AREA, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %12, align 4
  %25 = getelementptr inbounds %struct.drm_ipp_limit, %struct.drm_ipp_limit* %13, i32 0, i32 1
  store %struct.drm_exynos_ipp_limit_val* %25, %struct.drm_exynos_ipp_limit_val** %14, align 8
  %26 = getelementptr inbounds %struct.drm_ipp_limit, %struct.drm_ipp_limit* %13, i32 0, i32 0
  store %struct.drm_exynos_ipp_limit_val* %26, %struct.drm_exynos_ipp_limit_val** %15, align 8
  %27 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %7, align 8
  %28 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %7, align 8
  %34 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %33, i32 0, i32 2
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %32, %39
  store i32 %40, i32* %16, align 4
  %41 = load %struct.drm_exynos_ipp_limit*, %struct.drm_exynos_ipp_limit** %8, align 8
  %42 = icmp ne %struct.drm_exynos_ipp_limit* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %114

44:                                               ; preds = %23
  %45 = load %struct.drm_exynos_ipp_limit*, %struct.drm_exynos_ipp_limit** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @IPP_LIMIT_BUFFER, align 4
  %48 = call i32 @__get_size_limit(%struct.drm_exynos_ipp_limit* %45, i32 %46, i32 %47, %struct.drm_ipp_limit* %13)
  %49 = load i32, i32* %16, align 4
  %50 = getelementptr inbounds %struct.drm_ipp_limit, %struct.drm_ipp_limit* %13, i32 0, i32 1
  %51 = call i32 @__size_limit_check(i32 %49, %struct.drm_exynos_ipp_limit_val* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %44
  %54 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %7, align 8
  %55 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.drm_ipp_limit, %struct.drm_ipp_limit* %13, i32 0, i32 0
  %59 = call i32 @__size_limit_check(i32 %57, %struct.drm_exynos_ipp_limit_val* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %53, %44
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %114

64:                                               ; preds = %53
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.drm_ipp_limit, %struct.drm_ipp_limit* %13, i32 0, i32 1
  store %struct.drm_exynos_ipp_limit_val* %68, %struct.drm_exynos_ipp_limit_val** %15, align 8
  %69 = getelementptr inbounds %struct.drm_ipp_limit, %struct.drm_ipp_limit* %13, i32 0, i32 0
  store %struct.drm_exynos_ipp_limit_val* %69, %struct.drm_exynos_ipp_limit_val** %14, align 8
  br label %70

70:                                               ; preds = %67, %64
  %71 = load %struct.drm_exynos_ipp_limit*, %struct.drm_exynos_ipp_limit** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @__get_size_limit(%struct.drm_exynos_ipp_limit* %71, i32 %72, i32 %73, %struct.drm_ipp_limit* %13)
  %75 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %7, align 8
  %76 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.drm_exynos_ipp_limit_val*, %struct.drm_exynos_ipp_limit_val** %14, align 8
  %80 = call i32 @__size_limit_check(i32 %78, %struct.drm_exynos_ipp_limit_val* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %110

82:                                               ; preds = %70
  %83 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %7, align 8
  %84 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.drm_exynos_ipp_limit_val*, %struct.drm_exynos_ipp_limit_val** %14, align 8
  %88 = getelementptr inbounds %struct.drm_exynos_ipp_limit_val, %struct.drm_exynos_ipp_limit_val* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @__align_check(i32 %86, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %82
  %93 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %7, align 8
  %94 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.drm_exynos_ipp_limit_val*, %struct.drm_exynos_ipp_limit_val** %15, align 8
  %98 = call i32 @__size_limit_check(i32 %96, %struct.drm_exynos_ipp_limit_val* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %92
  %101 = load %struct.exynos_drm_ipp_buffer*, %struct.exynos_drm_ipp_buffer** %7, align 8
  %102 = getelementptr inbounds %struct.exynos_drm_ipp_buffer, %struct.exynos_drm_ipp_buffer* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.drm_exynos_ipp_limit_val*, %struct.drm_exynos_ipp_limit_val** %15, align 8
  %106 = getelementptr inbounds %struct.drm_exynos_ipp_limit_val, %struct.drm_exynos_ipp_limit_val* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @__align_check(i32 %104, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %100, %92, %82, %70
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %6, align 4
  br label %114

113:                                              ; preds = %100
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %113, %110, %61, %43
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i32 @__get_size_limit(%struct.drm_exynos_ipp_limit*, i32, i32, %struct.drm_ipp_limit*) #1

declare dso_local i32 @__size_limit_check(i32, %struct.drm_exynos_ipp_limit_val*) #1

declare dso_local i32 @__align_check(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
