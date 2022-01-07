; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_ring_emit_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_ring_emit_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }

@AMDGPU_FENCE_FLAG_64BIT = common dso_local global i32 0, align 4
@AMDGPU_FENCE_FLAG_INT = common dso_local global i32 0, align 4
@AMDGPU_FENCE_FLAG_TC_WB_ONLY = common dso_local global i32 0, align 4
@PACKET3_RELEASE_MEM = common dso_local global i32 0, align 4
@EOP_TC_WB_ACTION_EN = common dso_local global i32 0, align 4
@EOP_TC_NC_ACTION_EN = common dso_local global i32 0, align 4
@EOP_TCL1_ACTION_EN = common dso_local global i32 0, align 4
@EOP_TC_ACTION_EN = common dso_local global i32 0, align 4
@EOP_TC_MD_ACTION_EN = common dso_local global i32 0, align 4
@CACHE_FLUSH_AND_INV_TS_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i32, i32, i32)* @gfx_v9_0_ring_emit_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v9_0_ring_emit_fence(%struct.amdgpu_ring* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @AMDGPU_FENCE_FLAG_64BIT, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @AMDGPU_FENCE_FLAG_INT, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @AMDGPU_FENCE_FLAG_TC_WB_ONLY, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %11, align 4
  %21 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %22 = load i32, i32* @PACKET3_RELEASE_MEM, align 4
  %23 = call i32 @PACKET3(i32 %22, i32 6)
  %24 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %21, i32 %23)
  %25 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i32, i32* @EOP_TC_WB_ACTION_EN, align 4
  %30 = load i32, i32* @EOP_TC_NC_ACTION_EN, align 4
  %31 = or i32 %29, %30
  br label %40

32:                                               ; preds = %4
  %33 = load i32, i32* @EOP_TCL1_ACTION_EN, align 4
  %34 = load i32, i32* @EOP_TC_ACTION_EN, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @EOP_TC_WB_ACTION_EN, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @EOP_TC_MD_ACTION_EN, align 4
  %39 = or i32 %37, %38
  br label %40

40:                                               ; preds = %32, %28
  %41 = phi i32 [ %31, %28 ], [ %39, %32 ]
  %42 = load i32, i32* @CACHE_FLUSH_AND_INV_TS_EVENT, align 4
  %43 = call i32 @EVENT_TYPE(i32 %42)
  %44 = or i32 %41, %43
  %45 = call i32 @EVENT_INDEX(i32 5)
  %46 = or i32 %44, %45
  %47 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %25, i32 %46)
  %48 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 2, i32 1
  %53 = call i32 @DATA_SEL(i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 2, i32 0
  %58 = call i32 @INT_SEL(i32 %57)
  %59 = or i32 %53, %58
  %60 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %48, i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %40
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, 7
  %66 = call i32 @BUG_ON(i32 %65)
  br label %71

67:                                               ; preds = %40
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, 3
  %70 = call i32 @BUG_ON(i32 %69)
  br label %71

71:                                               ; preds = %67, %63
  %72 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @lower_32_bits(i32 %73)
  %75 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %72, i32 %74)
  %76 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @upper_32_bits(i32 %77)
  %79 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %76, i32 %78)
  %80 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @lower_32_bits(i32 %81)
  %83 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %80, i32 %82)
  %84 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @upper_32_bits(i32 %85)
  %87 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %84, i32 %86)
  %88 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %89 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %88, i32 0)
  ret void
}

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @EVENT_TYPE(i32) #1

declare dso_local i32 @EVENT_INDEX(i32) #1

declare dso_local i32 @DATA_SEL(i32) #1

declare dso_local i32 @INT_SEL(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
