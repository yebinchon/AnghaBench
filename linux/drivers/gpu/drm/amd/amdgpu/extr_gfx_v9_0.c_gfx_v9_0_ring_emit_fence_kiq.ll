; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_ring_emit_fence_kiq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_ring_emit_fence_kiq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@AMDGPU_FENCE_FLAG_64BIT = common dso_local global i32 0, align 4
@PACKET3_WRITE_DATA = common dso_local global i32 0, align 4
@WR_CONFIRM = common dso_local global i32 0, align 4
@AMDGPU_FENCE_FLAG_INT = common dso_local global i32 0, align 4
@GC = common dso_local global i32 0, align 4
@mmCPC_INT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i32, i32, i32)* @gfx_v9_0_ring_emit_fence_kiq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v9_0_ring_emit_fence_kiq(%struct.amdgpu_ring* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %11 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %10, i32 0, i32 0
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @AMDGPU_FENCE_FLAG_64BIT, align 4
  %15 = and i32 %13, %14
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %18 = load i32, i32* @PACKET3_WRITE_DATA, align 4
  %19 = call i32 @PACKET3(i32 %18, i32 3)
  %20 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %17, i32 %19)
  %21 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %22 = call i32 @WRITE_DATA_ENGINE_SEL(i32 0)
  %23 = call i32 @WRITE_DATA_DST_SEL(i32 5)
  %24 = or i32 %22, %23
  %25 = load i32, i32* @WR_CONFIRM, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %21, i32 %26)
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @lower_32_bits(i32 %29)
  %31 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %28, i32 %30)
  %32 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @upper_32_bits(i32 %33)
  %35 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %32, i32 %34)
  %36 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @lower_32_bits(i32 %37)
  %39 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %36, i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @AMDGPU_FENCE_FLAG_INT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %4
  %45 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %46 = load i32, i32* @PACKET3_WRITE_DATA, align 4
  %47 = call i32 @PACKET3(i32 %46, i32 3)
  %48 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %45, i32 %47)
  %49 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %50 = call i32 @WRITE_DATA_ENGINE_SEL(i32 0)
  %51 = call i32 @WRITE_DATA_DST_SEL(i32 0)
  %52 = or i32 %50, %51
  %53 = load i32, i32* @WR_CONFIRM, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %49, i32 %54)
  %56 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %57 = load i32, i32* @GC, align 4
  %58 = load i32, i32* @mmCPC_INT_STATUS, align 4
  %59 = call i32 @SOC15_REG_OFFSET(i32 %57, i32 0, i32 %58)
  %60 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %56, i32 %59)
  %61 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %62 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %61, i32 0)
  %63 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %64 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %63, i32 536870912)
  br label %65

65:                                               ; preds = %44, %4
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @WRITE_DATA_ENGINE_SEL(i32) #1

declare dso_local i32 @WRITE_DATA_DST_SEL(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
