; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_gem_record_fences.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_gem_record_fences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gpu_state = type { i32, i8**, %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_2__, %struct.intel_uncore }
%struct.TYPE_2__ = type { i32 }
%struct.intel_uncore = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_gpu_state*)* @gem_record_fences to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_record_fences(%struct.i915_gpu_state* %0) #0 {
  %2 = alloca %struct.i915_gpu_state*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_uncore*, align 8
  %5 = alloca i32, align 4
  store %struct.i915_gpu_state* %0, %struct.i915_gpu_state** %2, align 8
  %6 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %7 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %6, i32 0, i32 2
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %3, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 1
  store %struct.intel_uncore* %10, %struct.intel_uncore** %4, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %12 = call i32 @INTEL_GEN(%struct.drm_i915_private* %11)
  %13 = icmp sge i32 %12, 6
  br i1 %13, label %14, label %37

14:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %33, %14
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %18 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %15
  %23 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @FENCE_REG_GEN6_LO(i32 %24)
  %26 = call i8* @intel_uncore_read64(%struct.intel_uncore* %23, i32 %25)
  %27 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %28 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %27, i32 0, i32 1
  %29 = load i8**, i8*** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  store i8* %26, i8** %32, align 8
  br label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %15

36:                                               ; preds = %15
  br label %88

37:                                               ; preds = %1
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %39 = call i32 @INTEL_GEN(%struct.drm_i915_private* %38)
  %40 = icmp sge i32 %39, 4
  br i1 %40, label %41, label %64

41:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %60, %41
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %45 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %42
  %50 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @FENCE_REG_965_LO(i32 %51)
  %53 = call i8* @intel_uncore_read64(%struct.intel_uncore* %50, i32 %52)
  %54 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %55 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %54, i32 0, i32 1
  %56 = load i8**, i8*** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  store i8* %53, i8** %59, align 8
  br label %60

60:                                               ; preds = %49
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %42

63:                                               ; preds = %42
  br label %87

64:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %83, %64
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %68 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %66, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %65
  %73 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @FENCE_REG(i32 %74)
  %76 = call i8* @intel_uncore_read(%struct.intel_uncore* %73, i32 %75)
  %77 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %78 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %77, i32 0, i32 1
  %79 = load i8**, i8*** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  store i8* %76, i8** %82, align 8
  br label %83

83:                                               ; preds = %72
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %65

86:                                               ; preds = %65
  br label %87

87:                                               ; preds = %86, %63
  br label %88

88:                                               ; preds = %87, %36
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  %91 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  ret void
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i8* @intel_uncore_read64(%struct.intel_uncore*, i32) #1

declare dso_local i32 @FENCE_REG_GEN6_LO(i32) #1

declare dso_local i32 @FENCE_REG_965_LO(i32) #1

declare dso_local i8* @intel_uncore_read(%struct.intel_uncore*, i32) #1

declare dso_local i32 @FENCE_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
