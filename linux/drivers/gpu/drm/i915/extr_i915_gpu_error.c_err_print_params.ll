; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_err_print_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_err_print_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_error_state_buf = type { i32 }
%struct.i915_params = type { i32 }
%struct.drm_printer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_error_state_buf*, %struct.i915_params*)* @err_print_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @err_print_params(%struct.drm_i915_error_state_buf* %0, %struct.i915_params* %1) #0 {
  %3 = alloca %struct.drm_i915_error_state_buf*, align 8
  %4 = alloca %struct.i915_params*, align 8
  %5 = alloca %struct.drm_printer, align 4
  store %struct.drm_i915_error_state_buf* %0, %struct.drm_i915_error_state_buf** %3, align 8
  store %struct.i915_params* %1, %struct.i915_params** %4, align 8
  %6 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %3, align 8
  %7 = call i32 @i915_error_printer(%struct.drm_i915_error_state_buf* %6)
  %8 = getelementptr inbounds %struct.drm_printer, %struct.drm_printer* %5, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = load %struct.i915_params*, %struct.i915_params** %4, align 8
  %10 = call i32 @i915_params_dump(%struct.i915_params* %9, %struct.drm_printer* %5)
  ret void
}

declare dso_local i32 @i915_error_printer(%struct.drm_i915_error_state_buf*) #1

declare dso_local i32 @i915_params_dump(%struct.i915_params*, %struct.drm_printer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
