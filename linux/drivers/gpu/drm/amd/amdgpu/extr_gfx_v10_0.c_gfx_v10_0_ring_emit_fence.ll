; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_ring_emit_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_ring_emit_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AMDGPU_FENCE_FLAG_64BIT = common dso_local global i32 0, align 4
@AMDGPU_FENCE_FLAG_INT = common dso_local global i32 0, align 4
@PACKET3_RELEASE_MEM = common dso_local global i32 0, align 4
@PACKET3_RELEASE_MEM_GCR_SEQ = common dso_local global i32 0, align 4
@PACKET3_RELEASE_MEM_GCR_GL2_WB = common dso_local global i32 0, align 4
@PACKET3_RELEASE_MEM_GCR_GLM_INV = common dso_local global i32 0, align 4
@PACKET3_RELEASE_MEM_GCR_GLM_WB = common dso_local global i32 0, align 4
@CACHE_FLUSH_AND_INV_TS_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i32, i32, i32)* @gfx_v10_0_ring_emit_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v10_0_ring_emit_fence(%struct.amdgpu_ring* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdgpu_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %13 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %12, i32 0, i32 0
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %13, align 8
  store %struct.amdgpu_device* %14, %struct.amdgpu_device** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @AMDGPU_FENCE_FLAG_64BIT, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @AMDGPU_FENCE_FLAG_INT, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %11, align 4
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 80
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %27, %4
  %29 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %30 = load i32, i32* @PACKET3_RELEASE_MEM, align 4
  %31 = call i32 @PACKET3(i32 %30, i32 6)
  %32 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %29, i32 %31)
  %33 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %34 = load i32, i32* @PACKET3_RELEASE_MEM_GCR_SEQ, align 4
  %35 = load i32, i32* @PACKET3_RELEASE_MEM_GCR_GL2_WB, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @PACKET3_RELEASE_MEM_GCR_GLM_INV, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @PACKET3_RELEASE_MEM_GCR_GLM_WB, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @PACKET3_RELEASE_MEM_CACHE_POLICY(i32 3)
  %42 = or i32 %40, %41
  %43 = load i32, i32* @CACHE_FLUSH_AND_INV_TS_EVENT, align 4
  %44 = call i32 @PACKET3_RELEASE_MEM_EVENT_TYPE(i32 %43)
  %45 = or i32 %42, %44
  %46 = call i32 @PACKET3_RELEASE_MEM_EVENT_INDEX(i32 5)
  %47 = or i32 %45, %46
  %48 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %33, i32 %47)
  %49 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 2, i32 1
  %54 = call i32 @PACKET3_RELEASE_MEM_DATA_SEL(i32 %53)
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 2, i32 0
  %59 = call i32 @PACKET3_RELEASE_MEM_INT_SEL(i32 %58)
  %60 = or i32 %54, %59
  %61 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %49, i32 %60)
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %28
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, 7
  %67 = call i32 @BUG_ON(i32 %66)
  br label %72

68:                                               ; preds = %28
  %69 = load i32, i32* %6, align 4
  %70 = and i32 %69, 3
  %71 = call i32 @BUG_ON(i32 %70)
  br label %72

72:                                               ; preds = %68, %64
  %73 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @lower_32_bits(i32 %74)
  %76 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %73, i32 %75)
  %77 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @upper_32_bits(i32 %78)
  %80 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %77, i32 %79)
  %81 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @lower_32_bits(i32 %82)
  %84 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %81, i32 %83)
  %85 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @upper_32_bits(i32 %86)
  %88 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %85, i32 %87)
  %89 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %90 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %89, i32 0)
  ret void
}

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @PACKET3_RELEASE_MEM_CACHE_POLICY(i32) #1

declare dso_local i32 @PACKET3_RELEASE_MEM_EVENT_TYPE(i32) #1

declare dso_local i32 @PACKET3_RELEASE_MEM_EVENT_INDEX(i32) #1

declare dso_local i32 @PACKET3_RELEASE_MEM_DATA_SEL(i32) #1

declare dso_local i32 @PACKET3_RELEASE_MEM_INT_SEL(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
