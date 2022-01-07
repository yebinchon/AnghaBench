; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_scheduler.c_intel_vgpu_reset_submission.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_scheduler.c_intel_vgpu_reset_submission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { %struct.intel_vgpu_submission }
%struct.intel_vgpu_submission = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.intel_vgpu*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_vgpu_reset_submission(%struct.intel_vgpu* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_vgpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_vgpu_submission*, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %7 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %6, i32 0, i32 0
  store %struct.intel_vgpu_submission* %7, %struct.intel_vgpu_submission** %5, align 8
  %8 = load %struct.intel_vgpu_submission*, %struct.intel_vgpu_submission** %5, align 8
  %9 = getelementptr inbounds %struct.intel_vgpu_submission, %struct.intel_vgpu_submission* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %25

13:                                               ; preds = %2
  %14 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @intel_vgpu_clean_workloads(%struct.intel_vgpu* %14, i32 %15)
  %17 = load %struct.intel_vgpu_submission*, %struct.intel_vgpu_submission** %5, align 8
  %18 = getelementptr inbounds %struct.intel_vgpu_submission, %struct.intel_vgpu_submission* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.intel_vgpu*, i32)*, i32 (%struct.intel_vgpu*, i32)** %20, align 8
  %22 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 %21(%struct.intel_vgpu* %22, i32 %23)
  br label %25

25:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @intel_vgpu_clean_workloads(%struct.intel_vgpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
