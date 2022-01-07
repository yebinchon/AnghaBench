; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_set_eop_interrupt_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_set_eop_interrupt_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_irq_src = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, i32, i32)* @gfx_v10_0_set_eop_interrupt_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_set_eop_interrupt_state(%struct.amdgpu_device* %0, %struct.amdgpu_irq_src* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_irq_src*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_irq_src* %1, %struct.amdgpu_irq_src** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %50 [
    i32 129, label %10
    i32 128, label %14
    i32 137, label %18
    i32 136, label %22
    i32 135, label %26
    i32 134, label %30
    i32 133, label %34
    i32 132, label %38
    i32 131, label %42
    i32 130, label %46
  ]

10:                                               ; preds = %4
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @gfx_v10_0_set_gfx_eop_interrupt_state(%struct.amdgpu_device* %11, i32 0, i32 0, i32 %12)
  br label %51

14:                                               ; preds = %4
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @gfx_v10_0_set_gfx_eop_interrupt_state(%struct.amdgpu_device* %15, i32 0, i32 1, i32 %16)
  br label %51

18:                                               ; preds = %4
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @gfx_v10_0_set_compute_eop_interrupt_state(%struct.amdgpu_device* %19, i32 1, i32 0, i32 %20)
  br label %51

22:                                               ; preds = %4
  %23 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @gfx_v10_0_set_compute_eop_interrupt_state(%struct.amdgpu_device* %23, i32 1, i32 1, i32 %24)
  br label %51

26:                                               ; preds = %4
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @gfx_v10_0_set_compute_eop_interrupt_state(%struct.amdgpu_device* %27, i32 1, i32 2, i32 %28)
  br label %51

30:                                               ; preds = %4
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @gfx_v10_0_set_compute_eop_interrupt_state(%struct.amdgpu_device* %31, i32 1, i32 3, i32 %32)
  br label %51

34:                                               ; preds = %4
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @gfx_v10_0_set_compute_eop_interrupt_state(%struct.amdgpu_device* %35, i32 2, i32 0, i32 %36)
  br label %51

38:                                               ; preds = %4
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @gfx_v10_0_set_compute_eop_interrupt_state(%struct.amdgpu_device* %39, i32 2, i32 1, i32 %40)
  br label %51

42:                                               ; preds = %4
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @gfx_v10_0_set_compute_eop_interrupt_state(%struct.amdgpu_device* %43, i32 2, i32 2, i32 %44)
  br label %51

46:                                               ; preds = %4
  %47 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @gfx_v10_0_set_compute_eop_interrupt_state(%struct.amdgpu_device* %47, i32 2, i32 3, i32 %48)
  br label %51

50:                                               ; preds = %4
  br label %51

51:                                               ; preds = %50, %46, %42, %38, %34, %30, %26, %22, %18, %14, %10
  ret i32 0
}

declare dso_local i32 @gfx_v10_0_set_gfx_eop_interrupt_state(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @gfx_v10_0_set_compute_eop_interrupt_state(%struct.amdgpu_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
