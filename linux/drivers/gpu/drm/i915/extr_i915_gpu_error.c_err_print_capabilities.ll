; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_err_print_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gpu_error.c_err_print_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_error_state_buf = type { i32 }
%struct.intel_device_info = type { i32 }
%struct.intel_runtime_info = type { i32 }
%struct.intel_driver_caps = type { i32 }
%struct.drm_printer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_error_state_buf*, %struct.intel_device_info*, %struct.intel_runtime_info*, %struct.intel_driver_caps*)* @err_print_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @err_print_capabilities(%struct.drm_i915_error_state_buf* %0, %struct.intel_device_info* %1, %struct.intel_runtime_info* %2, %struct.intel_driver_caps* %3) #0 {
  %5 = alloca %struct.drm_i915_error_state_buf*, align 8
  %6 = alloca %struct.intel_device_info*, align 8
  %7 = alloca %struct.intel_runtime_info*, align 8
  %8 = alloca %struct.intel_driver_caps*, align 8
  %9 = alloca %struct.drm_printer, align 4
  store %struct.drm_i915_error_state_buf* %0, %struct.drm_i915_error_state_buf** %5, align 8
  store %struct.intel_device_info* %1, %struct.intel_device_info** %6, align 8
  store %struct.intel_runtime_info* %2, %struct.intel_runtime_info** %7, align 8
  store %struct.intel_driver_caps* %3, %struct.intel_driver_caps** %8, align 8
  %10 = load %struct.drm_i915_error_state_buf*, %struct.drm_i915_error_state_buf** %5, align 8
  %11 = call i32 @i915_error_printer(%struct.drm_i915_error_state_buf* %10)
  %12 = getelementptr inbounds %struct.drm_printer, %struct.drm_printer* %9, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load %struct.intel_device_info*, %struct.intel_device_info** %6, align 8
  %14 = call i32 @intel_device_info_dump_flags(%struct.intel_device_info* %13, %struct.drm_printer* %9)
  %15 = load %struct.intel_driver_caps*, %struct.intel_driver_caps** %8, align 8
  %16 = call i32 @intel_driver_caps_print(%struct.intel_driver_caps* %15, %struct.drm_printer* %9)
  %17 = load %struct.intel_runtime_info*, %struct.intel_runtime_info** %7, align 8
  %18 = getelementptr inbounds %struct.intel_runtime_info, %struct.intel_runtime_info* %17, i32 0, i32 0
  %19 = call i32 @intel_device_info_dump_topology(i32* %18, %struct.drm_printer* %9)
  ret void
}

declare dso_local i32 @i915_error_printer(%struct.drm_i915_error_state_buf*) #1

declare dso_local i32 @intel_device_info_dump_flags(%struct.intel_device_info*, %struct.drm_printer*) #1

declare dso_local i32 @intel_driver_caps_print(%struct.intel_driver_caps*, %struct.drm_printer*) #1

declare dso_local i32 @intel_device_info_dump_topology(i32*, %struct.drm_printer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
