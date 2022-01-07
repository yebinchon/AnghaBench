; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ilk_wm_merge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ilk_wm_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_wm_config = type { i32 }
%struct.ilk_wm_maximums = type { i64 }
%struct.intel_pipe_wm = type { i32, %struct.intel_wm_level* }
%struct.intel_wm_level = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_wm_config*, %struct.ilk_wm_maximums*, %struct.intel_pipe_wm*)* @ilk_wm_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ilk_wm_merge(%struct.drm_i915_private* %0, %struct.intel_wm_config* %1, %struct.ilk_wm_maximums* %2, %struct.intel_pipe_wm* %3) #0 {
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_wm_config*, align 8
  %7 = alloca %struct.ilk_wm_maximums*, align 8
  %8 = alloca %struct.intel_pipe_wm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.intel_wm_level*, align 8
  %13 = alloca %struct.intel_wm_level*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store %struct.intel_wm_config* %1, %struct.intel_wm_config** %6, align 8
  store %struct.ilk_wm_maximums* %2, %struct.ilk_wm_maximums** %7, align 8
  store %struct.intel_pipe_wm* %3, %struct.intel_pipe_wm** %8, align 8
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %15 = call i32 @ilk_wm_max_level(%struct.drm_i915_private* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %11, align 4
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %18 = call i32 @INTEL_GEN(%struct.drm_i915_private* %17)
  %19 = icmp sle i32 %18, 6
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %22 = call i64 @IS_IVYBRIDGE(%struct.drm_i915_private* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20, %4
  %25 = load %struct.intel_wm_config*, %struct.intel_wm_config** %6, align 8
  %26 = getelementptr inbounds %struct.intel_wm_config, %struct.intel_wm_config* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %29, %24, %20
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %32 = call i32 @INTEL_GEN(%struct.drm_i915_private* %31)
  %33 = icmp sge i32 %32, 6
  %34 = zext i1 %33 to i32
  %35 = load %struct.intel_pipe_wm*, %struct.intel_pipe_wm** %8, align 8
  %36 = getelementptr inbounds %struct.intel_pipe_wm, %struct.intel_pipe_wm* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  store i32 1, i32* %9, align 4
  br label %37

37:                                               ; preds = %88, %30
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %91

41:                                               ; preds = %37
  %42 = load %struct.intel_pipe_wm*, %struct.intel_pipe_wm** %8, align 8
  %43 = getelementptr inbounds %struct.intel_pipe_wm, %struct.intel_pipe_wm* %42, i32 0, i32 1
  %44 = load %struct.intel_wm_level*, %struct.intel_wm_level** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %44, i64 %46
  store %struct.intel_wm_level* %47, %struct.intel_wm_level** %12, align 8
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.intel_wm_level*, %struct.intel_wm_level** %12, align 8
  %51 = call i32 @ilk_merge_wm_level(%struct.drm_i915_private* %48, i32 %49, %struct.intel_wm_level* %50)
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %41
  %56 = load %struct.intel_wm_level*, %struct.intel_wm_level** %12, align 8
  %57 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  br label %68

58:                                               ; preds = %41
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.ilk_wm_maximums*, %struct.ilk_wm_maximums** %7, align 8
  %61 = load %struct.intel_wm_level*, %struct.intel_wm_level** %12, align 8
  %62 = call i32 @ilk_validate_wm_level(i32 %59, %struct.ilk_wm_maximums* %60, %struct.intel_wm_level* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %9, align 4
  %66 = sub nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %64, %58
  br label %68

68:                                               ; preds = %67, %55
  %69 = load %struct.intel_wm_level*, %struct.intel_wm_level** %12, align 8
  %70 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.ilk_wm_maximums*, %struct.ilk_wm_maximums** %7, align 8
  %73 = getelementptr inbounds %struct.ilk_wm_maximums, %struct.ilk_wm_maximums* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %71, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %68
  %77 = load %struct.intel_wm_level*, %struct.intel_wm_level** %12, align 8
  %78 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.intel_pipe_wm*, %struct.intel_pipe_wm** %8, align 8
  %83 = getelementptr inbounds %struct.intel_pipe_wm, %struct.intel_pipe_wm* %82, i32 0, i32 0
  store i32 0, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %76
  %85 = load %struct.intel_wm_level*, %struct.intel_wm_level** %12, align 8
  %86 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %84, %68
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %37

91:                                               ; preds = %37
  %92 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %93 = call i64 @IS_GEN(%struct.drm_i915_private* %92, i32 5)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %122

95:                                               ; preds = %91
  %96 = load %struct.intel_pipe_wm*, %struct.intel_pipe_wm** %8, align 8
  %97 = getelementptr inbounds %struct.intel_pipe_wm, %struct.intel_pipe_wm* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %122, label %100

100:                                              ; preds = %95
  %101 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %102 = call i64 @intel_fbc_is_active(%struct.drm_i915_private* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %100
  store i32 2, i32* %9, align 4
  br label %105

105:                                              ; preds = %118, %104
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp sle i32 %106, %107
  br i1 %108, label %109, label %121

109:                                              ; preds = %105
  %110 = load %struct.intel_pipe_wm*, %struct.intel_pipe_wm** %8, align 8
  %111 = getelementptr inbounds %struct.intel_pipe_wm, %struct.intel_pipe_wm* %110, i32 0, i32 1
  %112 = load %struct.intel_wm_level*, %struct.intel_wm_level** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %112, i64 %114
  store %struct.intel_wm_level* %115, %struct.intel_wm_level** %13, align 8
  %116 = load %struct.intel_wm_level*, %struct.intel_wm_level** %13, align 8
  %117 = getelementptr inbounds %struct.intel_wm_level, %struct.intel_wm_level* %116, i32 0, i32 0
  store i32 0, i32* %117, align 8
  br label %118

118:                                              ; preds = %109
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %105

121:                                              ; preds = %105
  br label %122

122:                                              ; preds = %121, %100, %95, %91
  ret void
}

declare dso_local i32 @ilk_wm_max_level(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_IVYBRIDGE(%struct.drm_i915_private*) #1

declare dso_local i32 @ilk_merge_wm_level(%struct.drm_i915_private*, i32, %struct.intel_wm_level*) #1

declare dso_local i32 @ilk_validate_wm_level(i32, %struct.ilk_wm_maximums*, %struct.intel_wm_level*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @intel_fbc_is_active(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
