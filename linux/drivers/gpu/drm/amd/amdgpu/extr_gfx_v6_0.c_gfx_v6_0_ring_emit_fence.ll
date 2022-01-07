; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_ring_emit_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_ring_emit_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }

@AMDGPU_FENCE_FLAG_64BIT = common dso_local global i32 0, align 4
@AMDGPU_FENCE_FLAG_INT = common dso_local global i32 0, align 4
@PACKET3_SET_CONFIG_REG = common dso_local global i32 0, align 4
@mmCP_COHER_CNTL2 = common dso_local global i32 0, align 4
@PACKET3_SET_CONFIG_REG_START = common dso_local global i32 0, align 4
@PACKET3_SURFACE_SYNC = common dso_local global i32 0, align 4
@PACKET3_TCL1_ACTION_ENA = common dso_local global i32 0, align 4
@PACKET3_TC_ACTION_ENA = common dso_local global i32 0, align 4
@PACKET3_SH_KCACHE_ACTION_ENA = common dso_local global i32 0, align 4
@PACKET3_SH_ICACHE_ACTION_ENA = common dso_local global i32 0, align 4
@PACKET3_EVENT_WRITE_EOP = common dso_local global i32 0, align 4
@CACHE_FLUSH_AND_INV_TS_EVENT = common dso_local global i32 0, align 4
@CP_EOP_DONE_DATA_CNTL__DATA_SEL__SHIFT = common dso_local global i32 0, align 4
@CP_EOP_DONE_DATA_CNTL__INT_SEL__SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i32, i32, i32)* @gfx_v6_0_ring_emit_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v6_0_ring_emit_fence(%struct.amdgpu_ring* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @AMDGPU_FENCE_FLAG_64BIT, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @AMDGPU_FENCE_FLAG_INT, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %18 = load i32, i32* @PACKET3_SET_CONFIG_REG, align 4
  %19 = call i32 @PACKET3(i32 %18, i32 1)
  %20 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %17, i32 %19)
  %21 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %22 = load i32, i32* @mmCP_COHER_CNTL2, align 4
  %23 = load i32, i32* @PACKET3_SET_CONFIG_REG_START, align 4
  %24 = sub nsw i32 %22, %23
  %25 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %21, i32 %24)
  %26 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %27 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %26, i32 0)
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %29 = load i32, i32* @PACKET3_SURFACE_SYNC, align 4
  %30 = call i32 @PACKET3(i32 %29, i32 3)
  %31 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %28, i32 %30)
  %32 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %33 = load i32, i32* @PACKET3_TCL1_ACTION_ENA, align 4
  %34 = load i32, i32* @PACKET3_TC_ACTION_ENA, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @PACKET3_SH_KCACHE_ACTION_ENA, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @PACKET3_SH_ICACHE_ACTION_ENA, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %32, i32 %39)
  %41 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %42 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %41, i32 -1)
  %43 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %44 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %43, i32 0)
  %45 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %46 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %45, i32 10)
  %47 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %48 = load i32, i32* @PACKET3_EVENT_WRITE_EOP, align 4
  %49 = call i32 @PACKET3(i32 %48, i32 4)
  %50 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %47, i32 %49)
  %51 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %52 = load i32, i32* @CACHE_FLUSH_AND_INV_TS_EVENT, align 4
  %53 = call i32 @EVENT_TYPE(i32 %52)
  %54 = call i32 @EVENT_INDEX(i32 5)
  %55 = or i32 %53, %54
  %56 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %51, i32 %55)
  %57 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, -4
  %60 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %57, i32 %59)
  %61 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @upper_32_bits(i32 %62)
  %64 = and i32 %63, 65535
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 2, i32 1
  %69 = load i32, i32* @CP_EOP_DONE_DATA_CNTL__DATA_SEL__SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = or i32 %64, %70
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 2, i32 0
  %76 = load i32, i32* @CP_EOP_DONE_DATA_CNTL__INT_SEL__SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = or i32 %71, %77
  %79 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %61, i32 %78)
  %80 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @lower_32_bits(i32 %81)
  %83 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %80, i32 %82)
  %84 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @upper_32_bits(i32 %85)
  %87 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %84, i32 %86)
  ret void
}

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @EVENT_TYPE(i32) #1

declare dso_local i32 @EVENT_INDEX(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
