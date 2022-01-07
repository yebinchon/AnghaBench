; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_csr.c_intel_csr_load_program.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_csr.c_intel_csr_load_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64*, i64, i64, i64, i32*, i32* }

@.str = private unnamed_addr constant [44 x i8] c"No CSR support available for this platform\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Tried to program CSR with empty payload\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_csr_load_program(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %7 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  store i64* %9, i64** %3, align 8
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %11 = call i32 @HAS_CSR(%struct.drm_i915_private* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %81

15:                                               ; preds = %1
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %17 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %15
  %22 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %81

23:                                               ; preds = %15
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %25 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %5, align 8
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 1
  %30 = call i32 @assert_rpm_wakelock_held(i32* %29)
  %31 = call i32 (...) @preempt_disable()
  store i64 0, i64* %4, align 8
  br label %32

32:                                               ; preds = %44, %23
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @CSR_PROGRAM(i64 %37)
  %39 = load i64*, i64** %3, align 8
  %40 = load i64, i64* %4, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @I915_WRITE_FW(i32 %38, i64 %42)
  br label %44

44:                                               ; preds = %36
  %45 = load i64, i64* %4, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %4, align 8
  br label %32

47:                                               ; preds = %32
  %48 = call i32 (...) @preempt_enable()
  store i64 0, i64* %4, align 8
  br label %49

49:                                               ; preds = %72, %47
  %50 = load i64, i64* %4, align 8
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %52 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %50, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %49
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %58 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 5
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %4, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %65 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %4, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @I915_WRITE(i32 %63, i32 %70)
  br label %72

72:                                               ; preds = %56
  %73 = load i64, i64* %4, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %4, align 8
  br label %49

75:                                               ; preds = %49
  %76 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %77 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  store i64 0, i64* %78, align 8
  %79 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %80 = call i32 @gen9_set_dc_state_debugmask(%struct.drm_i915_private* %79)
  br label %81

81:                                               ; preds = %75, %21, %13
  ret void
}

declare dso_local i32 @HAS_CSR(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @assert_rpm_wakelock_held(i32*) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @I915_WRITE_FW(i32, i64) #1

declare dso_local i32 @CSR_PROGRAM(i64) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @gen9_set_dc_state_debugmask(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
