; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_i915_capture_gpu_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_i915_capture_gpu_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_gpu_state = type { i32, i32, i32, i32, i32, i32, i32, %struct.drm_i915_private*, i32 }
%struct.drm_i915_private = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.compress = type { i32 }

@ALLOW_FAIL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i915_gpu_state* @i915_capture_gpu_state(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.i915_gpu_state*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i915_gpu_state*, align 8
  %5 = alloca %struct.compress, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %7 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.i915_gpu_state* @READ_ONCE(i32 %9)
  store %struct.i915_gpu_state* %10, %struct.i915_gpu_state** %4, align 8
  %11 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %12 = call i64 @IS_ERR(%struct.i915_gpu_state* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  store %struct.i915_gpu_state* %15, %struct.i915_gpu_state** %2, align 8
  br label %94

16:                                               ; preds = %1
  %17 = load i32, i32* @ALLOW_FAIL, align 4
  %18 = call %struct.i915_gpu_state* @kzalloc(i32 48, i32 %17)
  store %struct.i915_gpu_state* %18, %struct.i915_gpu_state** %4, align 8
  %19 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %20 = icmp ne %struct.i915_gpu_state* %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %16
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call i32 @i915_disable_error_state(%struct.drm_i915_private* %22, i32 %24)
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.i915_gpu_state* @ERR_PTR(i32 %27)
  store %struct.i915_gpu_state* %28, %struct.i915_gpu_state** %2, align 8
  br label %94

29:                                               ; preds = %16
  %30 = call i32 @compress_init(%struct.compress* %5)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %29
  %33 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %34 = call i32 @kfree(%struct.i915_gpu_state* %33)
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  %38 = call i32 @i915_disable_error_state(%struct.drm_i915_private* %35, i32 %37)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.i915_gpu_state* @ERR_PTR(i32 %40)
  store %struct.i915_gpu_state* %41, %struct.i915_gpu_state** %2, align 8
  br label %94

42:                                               ; preds = %29
  %43 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %44 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %43, i32 0, i32 8
  %45 = call i32 @kref_init(i32* %44)
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %47 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %48 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %47, i32 0, i32 7
  store %struct.drm_i915_private* %46, %struct.drm_i915_private** %48, align 8
  %49 = call i32 (...) @ktime_get_real()
  %50 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %51 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = call i32 (...) @ktime_get_boottime()
  %53 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %54 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = call i32 (...) @ktime_get()
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %57 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ktime_sub(i32 %55, i32 %59)
  %61 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %62 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @jiffies, align 4
  %64 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %65 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %67 = call i32 @capture_params(%struct.i915_gpu_state* %66)
  %68 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %69 = call i32 @capture_gen_state(%struct.i915_gpu_state* %68)
  %70 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %71 = call i32 @capture_uc_state(%struct.i915_gpu_state* %70, %struct.compress* %5)
  %72 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %73 = call i32 @capture_reg_state(%struct.i915_gpu_state* %72)
  %74 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %75 = call i32 @gem_record_fences(%struct.i915_gpu_state* %74)
  %76 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %77 = call i32 @gem_record_rings(%struct.i915_gpu_state* %76, %struct.compress* %5)
  %78 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %79 = call i32 @intel_overlay_capture_error_state(%struct.drm_i915_private* %78)
  %80 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %81 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %83 = call i32 @intel_display_capture_error_state(%struct.drm_i915_private* %82)
  %84 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %85 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %87 = call i32 @capture_find_epoch(%struct.i915_gpu_state* %86)
  %88 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %89 = getelementptr inbounds %struct.i915_gpu_state, %struct.i915_gpu_state* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  %91 = call i32 @capture_finish(%struct.i915_gpu_state* %90)
  %92 = call i32 @compress_fini(%struct.compress* %5)
  %93 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %4, align 8
  store %struct.i915_gpu_state* %93, %struct.i915_gpu_state** %2, align 8
  br label %94

94:                                               ; preds = %42, %32, %21, %14
  %95 = load %struct.i915_gpu_state*, %struct.i915_gpu_state** %2, align 8
  ret %struct.i915_gpu_state* %95
}

declare dso_local %struct.i915_gpu_state* @READ_ONCE(i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_gpu_state*) #1

declare dso_local %struct.i915_gpu_state* @kzalloc(i32, i32) #1

declare dso_local i32 @i915_disable_error_state(%struct.drm_i915_private*, i32) #1

declare dso_local %struct.i915_gpu_state* @ERR_PTR(i32) #1

declare dso_local i32 @compress_init(%struct.compress*) #1

declare dso_local i32 @kfree(%struct.i915_gpu_state*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i32 @ktime_get_boottime(...) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @capture_params(%struct.i915_gpu_state*) #1

declare dso_local i32 @capture_gen_state(%struct.i915_gpu_state*) #1

declare dso_local i32 @capture_uc_state(%struct.i915_gpu_state*, %struct.compress*) #1

declare dso_local i32 @capture_reg_state(%struct.i915_gpu_state*) #1

declare dso_local i32 @gem_record_fences(%struct.i915_gpu_state*) #1

declare dso_local i32 @gem_record_rings(%struct.i915_gpu_state*, %struct.compress*) #1

declare dso_local i32 @intel_overlay_capture_error_state(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_display_capture_error_state(%struct.drm_i915_private*) #1

declare dso_local i32 @capture_find_epoch(%struct.i915_gpu_state*) #1

declare dso_local i32 @capture_finish(%struct.i915_gpu_state*) #1

declare dso_local i32 @compress_fini(%struct.compress*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
