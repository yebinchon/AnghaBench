; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_gfx_is_lockup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_gfx_is_lockup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i32 }

@RADEON_RESET_GFX = common dso_local global i32 0, align 4
@RADEON_RESET_COMPUTE = common dso_local global i32 0, align 4
@RADEON_RESET_CP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si_gfx_is_lockup(%struct.radeon_device* %0, %struct.radeon_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %5, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %8 = call i32 @si_gpu_check_soft_reset(%struct.radeon_device* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @RADEON_RESET_GFX, align 4
  %11 = load i32, i32* @RADEON_RESET_COMPUTE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @RADEON_RESET_CP, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %9, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %19 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %20 = call i32 @radeon_ring_lockup_update(%struct.radeon_device* %18, %struct.radeon_ring* %19)
  store i32 0, i32* %3, align 4
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %23 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %24 = call i32 @radeon_ring_test_lockup(%struct.radeon_device* %22, %struct.radeon_ring* %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @si_gpu_check_soft_reset(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ring_lockup_update(%struct.radeon_device*, %struct.radeon_ring*) #1

declare dso_local i32 @radeon_ring_test_lockup(%struct.radeon_device*, %struct.radeon_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
