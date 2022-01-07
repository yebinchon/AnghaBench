; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_scheduler.c_shadow_context_descriptor_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_scheduler.c_shadow_context_descriptor_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_context = type { i32 }
%struct.intel_vgpu_workload = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GEN8_CTX_ADDRESSING_MODE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_context*, %struct.intel_vgpu_workload*)* @shadow_context_descriptor_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shadow_context_descriptor_update(%struct.intel_context* %0, %struct.intel_vgpu_workload* %1) #0 {
  %3 = alloca %struct.intel_context*, align 8
  %4 = alloca %struct.intel_vgpu_workload*, align 8
  %5 = alloca i32, align 4
  store %struct.intel_context* %0, %struct.intel_context** %3, align 8
  store %struct.intel_vgpu_workload* %1, %struct.intel_vgpu_workload** %4, align 8
  %6 = load %struct.intel_context*, %struct.intel_context** %3, align 8
  %7 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @GEN8_CTX_ADDRESSING_MODE_SHIFT, align 4
  %10 = shl i32 3, %9
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %4, align 8
  %15 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GEN8_CTX_ADDRESSING_MODE_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.intel_context*, %struct.intel_context** %3, align 8
  %24 = getelementptr inbounds %struct.intel_context, %struct.intel_context* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
