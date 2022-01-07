; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dma.c_cayman_dma_is_lockup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dma.c_cayman_dma_is_lockup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ring = type { i64 }

@R600_RING_TYPE_DMA_INDEX = common dso_local global i64 0, align 8
@RADEON_RESET_DMA = common dso_local global i32 0, align 4
@RADEON_RESET_DMA1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cayman_dma_is_lockup(%struct.radeon_device* %0, %struct.radeon_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %5, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %9 = call i32 @cayman_gpu_check_soft_reset(%struct.radeon_device* %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %11 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @R600_RING_TYPE_DMA_INDEX, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @RADEON_RESET_DMA, align 4
  store i32 %16, i32* %7, align 4
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @RADEON_RESET_DMA1, align 4
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %26 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %27 = call i32 @radeon_ring_lockup_update(%struct.radeon_device* %25, %struct.radeon_ring* %26)
  store i32 0, i32* %3, align 4
  br label %32

28:                                               ; preds = %19
  %29 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %30 = load %struct.radeon_ring*, %struct.radeon_ring** %5, align 8
  %31 = call i32 @radeon_ring_test_lockup(%struct.radeon_device* %29, %struct.radeon_ring* %30)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @cayman_gpu_check_soft_reset(%struct.radeon_device*) #1

declare dso_local i32 @radeon_ring_lockup_update(%struct.radeon_device*, %struct.radeon_ring*) #1

declare dso_local i32 @radeon_ring_test_lockup(%struct.radeon_device*, %struct.radeon_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
