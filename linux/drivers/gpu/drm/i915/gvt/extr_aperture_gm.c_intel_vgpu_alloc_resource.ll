; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_aperture_gm.c_intel_vgpu_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_aperture_gm.c_intel_vgpu_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32 }
%struct.intel_vgpu_creation_params = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_vgpu_alloc_resource(%struct.intel_vgpu* %0, %struct.intel_vgpu_creation_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_vgpu*, align 8
  %5 = alloca %struct.intel_vgpu_creation_params*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %4, align 8
  store %struct.intel_vgpu_creation_params* %1, %struct.intel_vgpu_creation_params** %5, align 8
  %7 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %8 = load %struct.intel_vgpu_creation_params*, %struct.intel_vgpu_creation_params** %5, align 8
  %9 = call i32 @alloc_resource(%struct.intel_vgpu* %7, %struct.intel_vgpu_creation_params* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %34

14:                                               ; preds = %2
  %15 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %16 = call i32 @alloc_vgpu_gm(%struct.intel_vgpu* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %30

20:                                               ; preds = %14
  %21 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %22 = call i32 @alloc_vgpu_fence(%struct.intel_vgpu* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %27

26:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %34

27:                                               ; preds = %25
  %28 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %29 = call i32 @free_vgpu_gm(%struct.intel_vgpu* %28)
  br label %30

30:                                               ; preds = %27, %19
  %31 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %32 = call i32 @free_resource(%struct.intel_vgpu* %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %30, %26, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @alloc_resource(%struct.intel_vgpu*, %struct.intel_vgpu_creation_params*) #1

declare dso_local i32 @alloc_vgpu_gm(%struct.intel_vgpu*) #1

declare dso_local i32 @alloc_vgpu_fence(%struct.intel_vgpu*) #1

declare dso_local i32 @free_vgpu_gm(%struct.intel_vgpu*) #1

declare dso_local i32 @free_resource(%struct.intel_vgpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
