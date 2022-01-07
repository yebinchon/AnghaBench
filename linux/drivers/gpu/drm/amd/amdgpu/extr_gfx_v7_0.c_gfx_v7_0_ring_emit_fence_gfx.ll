; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_ring_emit_fence_gfx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_ring_emit_fence_gfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }

@AMDGPU_FENCE_FLAG_64BIT = common dso_local global i32 0, align 4
@AMDGPU_FENCE_FLAG_INT = common dso_local global i32 0, align 4
@PACKET3_EVENT_WRITE_EOP = common dso_local global i32 0, align 4
@EOP_TCL1_ACTION_EN = common dso_local global i32 0, align 4
@EOP_TC_ACTION_EN = common dso_local global i32 0, align 4
@CACHE_FLUSH_AND_INV_TS_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i32, i32, i32)* @gfx_v7_0_ring_emit_fence_gfx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v7_0_ring_emit_fence_gfx(%struct.amdgpu_ring* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = load i32, i32* @PACKET3_EVENT_WRITE_EOP, align 4
  %19 = call i32 @PACKET3(i32 %18, i32 4)
  %20 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %17, i32 %19)
  %21 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %22 = load i32, i32* @EOP_TCL1_ACTION_EN, align 4
  %23 = load i32, i32* @EOP_TC_ACTION_EN, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @CACHE_FLUSH_AND_INV_TS_EVENT, align 4
  %26 = call i32 @EVENT_TYPE(i32 %25)
  %27 = or i32 %24, %26
  %28 = call i32 @EVENT_INDEX(i32 5)
  %29 = or i32 %27, %28
  %30 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %21, i32 %29)
  %31 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, -4
  %34 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %31, i32 %33)
  %35 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @upper_32_bits(i32 %36)
  %38 = and i32 %37, 65535
  %39 = call i32 @DATA_SEL(i32 1)
  %40 = or i32 %38, %39
  %41 = call i32 @INT_SEL(i32 0)
  %42 = or i32 %40, %41
  %43 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %35, i32 %42)
  %44 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sub nsw i32 %45, 1
  %47 = call i32 @lower_32_bits(i32 %46)
  %48 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %44, i32 %47)
  %49 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 %50, 1
  %52 = call i32 @upper_32_bits(i32 %51)
  %53 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %49, i32 %52)
  %54 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %55 = load i32, i32* @PACKET3_EVENT_WRITE_EOP, align 4
  %56 = call i32 @PACKET3(i32 %55, i32 4)
  %57 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %54, i32 %56)
  %58 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %59 = load i32, i32* @EOP_TCL1_ACTION_EN, align 4
  %60 = load i32, i32* @EOP_TC_ACTION_EN, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @CACHE_FLUSH_AND_INV_TS_EVENT, align 4
  %63 = call i32 @EVENT_TYPE(i32 %62)
  %64 = or i32 %61, %63
  %65 = call i32 @EVENT_INDEX(i32 5)
  %66 = or i32 %64, %65
  %67 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %58, i32 %66)
  %68 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = and i32 %69, -4
  %71 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %68, i32 %70)
  %72 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @upper_32_bits(i32 %73)
  %75 = and i32 %74, 65535
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 2, i32 1
  %80 = call i32 @DATA_SEL(i32 %79)
  %81 = or i32 %75, %80
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 2, i32 0
  %86 = call i32 @INT_SEL(i32 %85)
  %87 = or i32 %81, %86
  %88 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %72, i32 %87)
  %89 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @lower_32_bits(i32 %90)
  %92 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %89, i32 %91)
  %93 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @upper_32_bits(i32 %94)
  %96 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %93, i32 %95)
  ret void
}

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @EVENT_TYPE(i32) #1

declare dso_local i32 @EVENT_INDEX(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @DATA_SEL(i32) #1

declare dso_local i32 @INT_SEL(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
