; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_vgpu_alloc_mm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_vgpu_alloc_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_mm = type { i32, i32, %struct.intel_vgpu* }
%struct.intel_vgpu = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_vgpu_mm* (%struct.intel_vgpu*)* @vgpu_alloc_mm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_vgpu_mm* @vgpu_alloc_mm(%struct.intel_vgpu* %0) #0 {
  %2 = alloca %struct.intel_vgpu_mm*, align 8
  %3 = alloca %struct.intel_vgpu*, align 8
  %4 = alloca %struct.intel_vgpu_mm*, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.intel_vgpu_mm* @kzalloc(i32 16, i32 %5)
  store %struct.intel_vgpu_mm* %6, %struct.intel_vgpu_mm** %4, align 8
  %7 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %4, align 8
  %8 = icmp ne %struct.intel_vgpu_mm* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.intel_vgpu_mm* null, %struct.intel_vgpu_mm** %2, align 8
  br label %21

10:                                               ; preds = %1
  %11 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %12 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %4, align 8
  %13 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %12, i32 0, i32 2
  store %struct.intel_vgpu* %11, %struct.intel_vgpu** %13, align 8
  %14 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %4, align 8
  %15 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %14, i32 0, i32 1
  %16 = call i32 @kref_init(i32* %15)
  %17 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %4, align 8
  %18 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %17, i32 0, i32 0
  %19 = call i32 @atomic_set(i32* %18, i32 0)
  %20 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %4, align 8
  store %struct.intel_vgpu_mm* %20, %struct.intel_vgpu_mm** %2, align 8
  br label %21

21:                                               ; preds = %10, %9
  %22 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %2, align 8
  ret %struct.intel_vgpu_mm* %22
}

declare dso_local %struct.intel_vgpu_mm* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
