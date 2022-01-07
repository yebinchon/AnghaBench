; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bw.c_icl_get_qgv_points.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bw.c_icl_get_qgv_points.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_qgv_info = type { i32, %struct.intel_qgv_point* }
%struct.intel_qgv_point = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"QGV %d: DCLK=%d tRP=%d tRDPRE=%d tRAS=%d tRCD=%d tRC=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.intel_qgv_info*)* @icl_get_qgv_points to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_get_qgv_points(%struct.drm_i915_private* %0, %struct.intel_qgv_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_qgv_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_qgv_point*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store %struct.intel_qgv_info* %1, %struct.intel_qgv_info** %5, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %10 = load %struct.intel_qgv_info*, %struct.intel_qgv_info** %5, align 8
  %11 = call i32 @icl_pcode_read_mem_global_info(%struct.drm_i915_private* %9, %struct.intel_qgv_info* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %3, align 4
  br label %82

16:                                               ; preds = %2
  %17 = load %struct.intel_qgv_info*, %struct.intel_qgv_info** %5, align 8
  %18 = getelementptr inbounds %struct.intel_qgv_info, %struct.intel_qgv_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.intel_qgv_info*, %struct.intel_qgv_info** %5, align 8
  %21 = getelementptr inbounds %struct.intel_qgv_info, %struct.intel_qgv_info* %20, i32 0, i32 1
  %22 = load %struct.intel_qgv_point*, %struct.intel_qgv_point** %21, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.intel_qgv_point* %22)
  %24 = icmp sgt i32 %19, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %16
  %29 = load %struct.intel_qgv_info*, %struct.intel_qgv_info** %5, align 8
  %30 = getelementptr inbounds %struct.intel_qgv_info, %struct.intel_qgv_info* %29, i32 0, i32 1
  %31 = load %struct.intel_qgv_point*, %struct.intel_qgv_point** %30, align 8
  %32 = call i32 @ARRAY_SIZE(%struct.intel_qgv_point* %31)
  %33 = load %struct.intel_qgv_info*, %struct.intel_qgv_info** %5, align 8
  %34 = getelementptr inbounds %struct.intel_qgv_info, %struct.intel_qgv_info* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %28, %16
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %78, %35
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.intel_qgv_info*, %struct.intel_qgv_info** %5, align 8
  %39 = getelementptr inbounds %struct.intel_qgv_info, %struct.intel_qgv_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %81

42:                                               ; preds = %36
  %43 = load %struct.intel_qgv_info*, %struct.intel_qgv_info** %5, align 8
  %44 = getelementptr inbounds %struct.intel_qgv_info, %struct.intel_qgv_info* %43, i32 0, i32 1
  %45 = load %struct.intel_qgv_point*, %struct.intel_qgv_point** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.intel_qgv_point, %struct.intel_qgv_point* %45, i64 %47
  store %struct.intel_qgv_point* %48, %struct.intel_qgv_point** %8, align 8
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %50 = load %struct.intel_qgv_point*, %struct.intel_qgv_point** %8, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @icl_pcode_read_qgv_point_info(%struct.drm_i915_private* %49, %struct.intel_qgv_point* %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %42
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %82

57:                                               ; preds = %42
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.intel_qgv_point*, %struct.intel_qgv_point** %8, align 8
  %60 = getelementptr inbounds %struct.intel_qgv_point, %struct.intel_qgv_point* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.intel_qgv_point*, %struct.intel_qgv_point** %8, align 8
  %63 = getelementptr inbounds %struct.intel_qgv_point, %struct.intel_qgv_point* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.intel_qgv_point*, %struct.intel_qgv_point** %8, align 8
  %66 = getelementptr inbounds %struct.intel_qgv_point, %struct.intel_qgv_point* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.intel_qgv_point*, %struct.intel_qgv_point** %8, align 8
  %69 = getelementptr inbounds %struct.intel_qgv_point, %struct.intel_qgv_point* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.intel_qgv_point*, %struct.intel_qgv_point** %8, align 8
  %72 = getelementptr inbounds %struct.intel_qgv_point, %struct.intel_qgv_point* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.intel_qgv_point*, %struct.intel_qgv_point** %8, align 8
  %75 = getelementptr inbounds %struct.intel_qgv_point, %struct.intel_qgv_point* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %61, i32 %64, i32 %67, i32 %70, i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %57
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %36

81:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %55, %14
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @icl_pcode_read_mem_global_info(%struct.drm_i915_private*, %struct.intel_qgv_info*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.intel_qgv_point*) #1

declare dso_local i32 @icl_pcode_read_qgv_point_info(%struct.drm_i915_private*, %struct.intel_qgv_point*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
