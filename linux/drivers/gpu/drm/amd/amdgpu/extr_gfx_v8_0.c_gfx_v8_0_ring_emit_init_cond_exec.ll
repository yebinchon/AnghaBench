; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_ring_emit_init_cond_exec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_ring_emit_init_cond_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, i32, i32 }

@PACKET3_COND_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_ring*)* @gfx_v8_0_ring_emit_init_cond_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v8_0_ring_emit_init_cond_exec(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %4 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %5 = load i32, i32* @PACKET3_COND_EXEC, align 4
  %6 = call i32 @PACKET3(i32 %5, i32 3)
  %7 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %4, i32 %6)
  %8 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %9 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %10 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @lower_32_bits(i32 %11)
  %13 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %8, i32 %12)
  %14 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %15 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %16 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @upper_32_bits(i32 %17)
  %19 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %14, i32 %18)
  %20 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %21 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %20, i32 0)
  %22 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %23 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %26 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %24, %27
  store i32 %28, i32* %3, align 4
  %29 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %30 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %29, i32 1437226410)
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
