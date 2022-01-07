; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_intel_gvt_scan_and_shadow_ringbuffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_intel_gvt_scan_and_shadow_ringbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_workload = type { %struct.intel_vgpu* }
%struct.intel_vgpu = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"fail to shadow workload ring_buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"scan workload error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_gvt_scan_and_shadow_ringbuffer(%struct.intel_vgpu_workload* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_vgpu_workload*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_vgpu*, align 8
  store %struct.intel_vgpu_workload* %0, %struct.intel_vgpu_workload** %3, align 8
  %6 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %7 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %6, i32 0, i32 0
  %8 = load %struct.intel_vgpu*, %struct.intel_vgpu** %7, align 8
  store %struct.intel_vgpu* %8, %struct.intel_vgpu** %5, align 8
  %9 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %10 = call i32 @shadow_workload_ring_buffer(%struct.intel_vgpu_workload* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %25

16:                                               ; preds = %1
  %17 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %18 = call i32 @scan_workload(%struct.intel_vgpu_workload* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %25

24:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %21, %13
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @shadow_workload_ring_buffer(%struct.intel_vgpu_workload*) #1

declare dso_local i32 @gvt_vgpu_err(i8*) #1

declare dso_local i32 @scan_workload(%struct.intel_vgpu_workload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
