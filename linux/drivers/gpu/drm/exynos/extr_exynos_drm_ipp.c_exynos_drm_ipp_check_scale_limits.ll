; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_ipp.c_exynos_drm_ipp_check_scale_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_ipp.c_exynos_drm_ipp_check_scale_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_exynos_ipp_task_rect = type { i32, i32 }
%struct.drm_exynos_ipp_limit = type { i32, %struct.drm_exynos_ipp_limit_val, %struct.drm_exynos_ipp_limit_val }
%struct.drm_exynos_ipp_limit_val = type { i32, i32 }

@DRM_EXYNOS_IPP_LIMIT_TYPE_MASK = common dso_local global i32 0, align 4
@DRM_EXYNOS_IPP_LIMIT_TYPE_SCALE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_limit*, i32, i32)* @exynos_drm_ipp_check_scale_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_drm_ipp_check_scale_limits(%struct.drm_exynos_ipp_task_rect* %0, %struct.drm_exynos_ipp_task_rect* %1, %struct.drm_exynos_ipp_limit* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_exynos_ipp_task_rect*, align 8
  %8 = alloca %struct.drm_exynos_ipp_task_rect*, align 8
  %9 = alloca %struct.drm_exynos_ipp_limit*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_exynos_ipp_limit_val*, align 8
  %13 = alloca %struct.drm_exynos_ipp_limit_val*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_exynos_ipp_task_rect* %0, %struct.drm_exynos_ipp_task_rect** %7, align 8
  store %struct.drm_exynos_ipp_task_rect* %1, %struct.drm_exynos_ipp_task_rect** %8, align 8
  store %struct.drm_exynos_ipp_limit* %2, %struct.drm_exynos_ipp_limit** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  br label %16

16:                                               ; preds = %29, %5
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load %struct.drm_exynos_ipp_limit*, %struct.drm_exynos_ipp_limit** %9, align 8
  %21 = getelementptr inbounds %struct.drm_exynos_ipp_limit, %struct.drm_exynos_ipp_limit* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DRM_EXYNOS_IPP_LIMIT_TYPE_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @DRM_EXYNOS_IPP_LIMIT_TYPE_SCALE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %34

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.drm_exynos_ipp_limit*, %struct.drm_exynos_ipp_limit** %9, align 8
  %31 = getelementptr inbounds %struct.drm_exynos_ipp_limit, %struct.drm_exynos_ipp_limit* %30, i32 1
  store %struct.drm_exynos_ipp_limit* %31, %struct.drm_exynos_ipp_limit** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = add i32 %32, -1
  store i32 %33, i32* %10, align 4
  br label %16

34:                                               ; preds = %27, %16
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %112

38:                                               ; preds = %34
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load %struct.drm_exynos_ipp_limit*, %struct.drm_exynos_ipp_limit** %9, align 8
  %43 = getelementptr inbounds %struct.drm_exynos_ipp_limit, %struct.drm_exynos_ipp_limit* %42, i32 0, i32 1
  br label %47

44:                                               ; preds = %38
  %45 = load %struct.drm_exynos_ipp_limit*, %struct.drm_exynos_ipp_limit** %9, align 8
  %46 = getelementptr inbounds %struct.drm_exynos_ipp_limit, %struct.drm_exynos_ipp_limit* %45, i32 0, i32 2
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi %struct.drm_exynos_ipp_limit_val* [ %43, %41 ], [ %46, %44 ]
  store %struct.drm_exynos_ipp_limit_val* %48, %struct.drm_exynos_ipp_limit_val** %12, align 8
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load %struct.drm_exynos_ipp_limit*, %struct.drm_exynos_ipp_limit** %9, align 8
  %53 = getelementptr inbounds %struct.drm_exynos_ipp_limit, %struct.drm_exynos_ipp_limit* %52, i32 0, i32 2
  br label %57

54:                                               ; preds = %47
  %55 = load %struct.drm_exynos_ipp_limit*, %struct.drm_exynos_ipp_limit** %9, align 8
  %56 = getelementptr inbounds %struct.drm_exynos_ipp_limit, %struct.drm_exynos_ipp_limit* %55, i32 0, i32 1
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi %struct.drm_exynos_ipp_limit_val* [ %53, %51 ], [ %56, %54 ]
  store %struct.drm_exynos_ipp_limit_val* %58, %struct.drm_exynos_ipp_limit_val** %13, align 8
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect** %8, align 8
  %63 = getelementptr inbounds %struct.drm_exynos_ipp_task_rect, %struct.drm_exynos_ipp_task_rect* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  br label %69

65:                                               ; preds = %57
  %66 = load %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect** %8, align 8
  %67 = getelementptr inbounds %struct.drm_exynos_ipp_task_rect, %struct.drm_exynos_ipp_task_rect* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  br label %69

69:                                               ; preds = %65, %61
  %70 = phi i32 [ %64, %61 ], [ %68, %65 ]
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect** %8, align 8
  %75 = getelementptr inbounds %struct.drm_exynos_ipp_task_rect, %struct.drm_exynos_ipp_task_rect* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  br label %81

77:                                               ; preds = %69
  %78 = load %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect** %8, align 8
  %79 = getelementptr inbounds %struct.drm_exynos_ipp_task_rect, %struct.drm_exynos_ipp_task_rect* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  br label %81

81:                                               ; preds = %77, %73
  %82 = phi i32 [ %76, %73 ], [ %80, %77 ]
  store i32 %82, i32* %15, align 4
  %83 = load %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect** %7, align 8
  %84 = getelementptr inbounds %struct.drm_exynos_ipp_task_rect, %struct.drm_exynos_ipp_task_rect* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load %struct.drm_exynos_ipp_limit_val*, %struct.drm_exynos_ipp_limit_val** %12, align 8
  %88 = getelementptr inbounds %struct.drm_exynos_ipp_limit_val, %struct.drm_exynos_ipp_limit_val* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.drm_exynos_ipp_limit_val*, %struct.drm_exynos_ipp_limit_val** %12, align 8
  %91 = getelementptr inbounds %struct.drm_exynos_ipp_limit_val, %struct.drm_exynos_ipp_limit_val* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @__scale_limit_check(i32 %85, i32 %86, i32 %89, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %81
  %96 = load %struct.drm_exynos_ipp_task_rect*, %struct.drm_exynos_ipp_task_rect** %7, align 8
  %97 = getelementptr inbounds %struct.drm_exynos_ipp_task_rect, %struct.drm_exynos_ipp_task_rect* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %15, align 4
  %100 = load %struct.drm_exynos_ipp_limit_val*, %struct.drm_exynos_ipp_limit_val** %13, align 8
  %101 = getelementptr inbounds %struct.drm_exynos_ipp_limit_val, %struct.drm_exynos_ipp_limit_val* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.drm_exynos_ipp_limit_val*, %struct.drm_exynos_ipp_limit_val** %13, align 8
  %104 = getelementptr inbounds %struct.drm_exynos_ipp_limit_val, %struct.drm_exynos_ipp_limit_val* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @__scale_limit_check(i32 %98, i32 %99, i32 %102, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %95, %81
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %6, align 4
  br label %112

111:                                              ; preds = %95
  store i32 0, i32* %6, align 4
  br label %112

112:                                              ; preds = %111, %108, %37
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i32 @__scale_limit_check(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
