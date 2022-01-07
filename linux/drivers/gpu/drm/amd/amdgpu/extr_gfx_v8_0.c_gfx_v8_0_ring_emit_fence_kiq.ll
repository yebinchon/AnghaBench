; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_ring_emit_fence_kiq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_ring_emit_fence_kiq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }

@AMDGPU_FENCE_FLAG_64BIT = common dso_local global i32 0, align 4
@PACKET3_WRITE_DATA = common dso_local global i32 0, align 4
@WR_CONFIRM = common dso_local global i32 0, align 4
@AMDGPU_FENCE_FLAG_INT = common dso_local global i32 0, align 4
@mmCPC_INT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i32, i32, i32)* @gfx_v8_0_ring_emit_fence_kiq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v8_0_ring_emit_fence_kiq(%struct.amdgpu_ring* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @AMDGPU_FENCE_FLAG_64BIT, align 4
  %11 = and i32 %9, %10
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %14 = load i32, i32* @PACKET3_WRITE_DATA, align 4
  %15 = call i32 @PACKET3(i32 %14, i32 3)
  %16 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %13, i32 %15)
  %17 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %18 = call i32 @WRITE_DATA_ENGINE_SEL(i32 0)
  %19 = call i32 @WRITE_DATA_DST_SEL(i32 5)
  %20 = or i32 %18, %19
  %21 = load i32, i32* @WR_CONFIRM, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %17, i32 %22)
  %24 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @lower_32_bits(i32 %25)
  %27 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %24, i32 %26)
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @upper_32_bits(i32 %29)
  %31 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %28, i32 %30)
  %32 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @lower_32_bits(i32 %33)
  %35 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %32, i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @AMDGPU_FENCE_FLAG_INT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %4
  %41 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %42 = load i32, i32* @PACKET3_WRITE_DATA, align 4
  %43 = call i32 @PACKET3(i32 %42, i32 3)
  %44 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %41, i32 %43)
  %45 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %46 = call i32 @WRITE_DATA_ENGINE_SEL(i32 0)
  %47 = call i32 @WRITE_DATA_DST_SEL(i32 0)
  %48 = or i32 %46, %47
  %49 = load i32, i32* @WR_CONFIRM, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %45, i32 %50)
  %52 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %53 = load i32, i32* @mmCPC_INT_STATUS, align 4
  %54 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %52, i32 %53)
  %55 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %56 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %55, i32 0)
  %57 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %58 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %57, i32 536870912)
  br label %59

59:                                               ; preds = %40, %4
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @WRITE_DATA_ENGINE_SEL(i32) #1

declare dso_local i32 @WRITE_DATA_DST_SEL(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
