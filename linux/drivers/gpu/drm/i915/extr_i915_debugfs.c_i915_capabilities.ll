; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_debugfs.c_i915_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_device_info = type { i32 }
%struct.drm_printer = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"gen: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"platform: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"pch: %d\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@i915_modparams = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @i915_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_capabilities(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_device_info*, align 8
  %7 = alloca %struct.drm_printer, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.drm_i915_private* @node_to_i915(i32 %10)
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %5, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %13 = call %struct.intel_device_info* @INTEL_INFO(%struct.drm_i915_private* %12)
  store %struct.intel_device_info* %13, %struct.intel_device_info** %6, align 8
  %14 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %15 = call i32 @drm_seq_file_printer(%struct.seq_file* %14)
  %16 = getelementptr inbounds %struct.drm_printer, %struct.drm_printer* %7, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %19 = call i32 @INTEL_GEN(%struct.drm_i915_private* %18)
  %20 = call i32 @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = load %struct.intel_device_info*, %struct.intel_device_info** %6, align 8
  %23 = getelementptr inbounds %struct.intel_device_info, %struct.intel_device_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @intel_platform_name(i32 %24)
  %26 = call i32 @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %29 = call i32 @INTEL_PCH_TYPE(%struct.drm_i915_private* %28)
  %30 = call i32 @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load %struct.intel_device_info*, %struct.intel_device_info** %6, align 8
  %32 = call i32 @intel_device_info_dump_flags(%struct.intel_device_info* %31, %struct.drm_printer* %7)
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %34 = call i32 @RUNTIME_INFO(%struct.drm_i915_private* %33)
  %35 = call i32 @intel_device_info_dump_runtime(i32 %34, %struct.drm_printer* %7)
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %37 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %36, i32 0, i32 0
  %38 = call i32 @intel_driver_caps_print(i32* %37, %struct.drm_printer* %7)
  %39 = load i32, i32* @THIS_MODULE, align 4
  %40 = call i32 @kernel_param_lock(i32 %39)
  %41 = call i32 @i915_params_dump(i32* @i915_modparams, %struct.drm_printer* %7)
  %42 = load i32, i32* @THIS_MODULE, align 4
  %43 = call i32 @kernel_param_unlock(i32 %42)
  ret i32 0
}

declare dso_local %struct.drm_i915_private* @node_to_i915(i32) #1

declare dso_local %struct.intel_device_info* @INTEL_INFO(%struct.drm_i915_private*) #1

declare dso_local i32 @drm_seq_file_printer(%struct.seq_file*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_platform_name(i32) #1

declare dso_local i32 @INTEL_PCH_TYPE(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_device_info_dump_flags(%struct.intel_device_info*, %struct.drm_printer*) #1

declare dso_local i32 @intel_device_info_dump_runtime(i32, %struct.drm_printer*) #1

declare dso_local i32 @RUNTIME_INFO(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_driver_caps_print(i32*, %struct.drm_printer*) #1

declare dso_local i32 @kernel_param_lock(i32) #1

declare dso_local i32 @i915_params_dump(i32*, %struct.drm_printer*) #1

declare dso_local i32 @kernel_param_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
