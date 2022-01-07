; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_ring_set_wptr_compute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_ring_set_wptr_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.amdgpu_ring* }

@mmCP_RB1_WPTR = common dso_local global i32 0, align 4
@mmCP_RB2_WPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*)* @gfx_v6_0_ring_set_wptr_compute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v6_0_ring_set_wptr_compute(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %4 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %5 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %4, i32 0, i32 1
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_device* %6, %struct.amdgpu_device** %3, align 8
  %7 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %10, align 8
  %12 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %11, i64 0
  %13 = icmp eq %struct.amdgpu_ring* %7, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load i32, i32* @mmCP_RB1_WPTR, align 4
  %16 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %17 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @lower_32_bits(i32 %18)
  %20 = call i32 @WREG32(i32 %15, i32 %19)
  %21 = load i32, i32* @mmCP_RB1_WPTR, align 4
  %22 = call i32 @RREG32(i32 %21)
  br label %43

23:                                               ; preds = %1
  %24 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %27, align 8
  %29 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %28, i64 1
  %30 = icmp eq %struct.amdgpu_ring* %24, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = load i32, i32* @mmCP_RB2_WPTR, align 4
  %33 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %34 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @lower_32_bits(i32 %35)
  %37 = call i32 @WREG32(i32 %32, i32 %36)
  %38 = load i32, i32* @mmCP_RB2_WPTR, align 4
  %39 = call i32 @RREG32(i32 %38)
  br label %42

40:                                               ; preds = %23
  %41 = call i32 (...) @BUG()
  br label %42

42:                                               ; preds = %40, %31
  br label %43

43:                                               ; preds = %42, %14
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
