; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx10_kiq_set_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx10_kiq_set_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }

@PACKET3_SET_RESOURCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i32)* @gfx10_kiq_set_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx10_kiq_set_resources(%struct.amdgpu_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %6 = load i32, i32* @PACKET3_SET_RESOURCES, align 4
  %7 = call i32 @PACKET3(i32 %6, i32 6)
  %8 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %5, i32 %7)
  %9 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %10 = call i32 @PACKET3_SET_RESOURCES_VMID_MASK(i32 0)
  %11 = call i32 @PACKET3_SET_RESOURCES_QUEUE_TYPE(i32 0)
  %12 = or i32 %10, %11
  %13 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %9, i32 %12)
  %14 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @lower_32_bits(i32 %15)
  %17 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %14, i32 %16)
  %18 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @upper_32_bits(i32 %19)
  %21 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %18, i32 %20)
  %22 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %23 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %22, i32 0)
  %24 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %25 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %24, i32 0)
  %26 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %27 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %26, i32 0)
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %29 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %28, i32 0)
  ret void
}

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @PACKET3_SET_RESOURCES_VMID_MASK(i32) #1

declare dso_local i32 @PACKET3_SET_RESOURCES_QUEUE_TYPE(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
