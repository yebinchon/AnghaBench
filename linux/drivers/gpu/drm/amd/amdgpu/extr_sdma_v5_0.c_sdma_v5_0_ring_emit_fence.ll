; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v5_0.c_sdma_v5_0_ring_emit_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v5_0.c_sdma_v5_0_ring_emit_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AMDGPU_FENCE_FLAG_64BIT = common dso_local global i32 0, align 4
@SDMA_OP_FENCE = common dso_local global i32 0, align 4
@AMDGPU_FENCE_FLAG_INT = common dso_local global i32 0, align 4
@SDMA_OP_TRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i32, i32, i32)* @sdma_v5_0_ring_emit_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v5_0_ring_emit_fence(%struct.amdgpu_ring* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdgpu_device*, align 8
  %10 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %12 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %11, i32 0, i32 0
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  store %struct.amdgpu_device* %13, %struct.amdgpu_device** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @AMDGPU_FENCE_FLAG_64BIT, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %18 = load i32, i32* @SDMA_OP_FENCE, align 4
  %19 = call i32 @SDMA_PKT_HEADER_OP(i32 %18)
  %20 = call i32 @SDMA_PKT_FENCE_HEADER_MTYPE(i32 3)
  %21 = or i32 %19, %20
  %22 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %17, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 3
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @lower_32_bits(i32 %27)
  %29 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %26, i32 %28)
  %30 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @upper_32_bits(i32 %31)
  %33 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %30, i32 %32)
  %34 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @lower_32_bits(i32 %35)
  %37 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %34, i32 %36)
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %4
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 4
  store i32 %42, i32* %6, align 4
  %43 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %44 = load i32, i32* @SDMA_OP_FENCE, align 4
  %45 = call i32 @SDMA_PKT_HEADER_OP(i32 %44)
  %46 = call i32 @SDMA_PKT_FENCE_HEADER_MTYPE(i32 3)
  %47 = or i32 %45, %46
  %48 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %43, i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, 3
  %51 = call i32 @BUG_ON(i32 %50)
  %52 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @lower_32_bits(i32 %53)
  %55 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %52, i32 %54)
  %56 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @upper_32_bits(i32 %57)
  %59 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %56, i32 %58)
  %60 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @upper_32_bits(i32 %61)
  %63 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %60, i32 %62)
  br label %64

64:                                               ; preds = %40, %4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @AMDGPU_FENCE_FLAG_INT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %64
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %71 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 80
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %78 = load i32, i32* @SDMA_OP_TRAP, align 4
  %79 = call i32 @SDMA_PKT_HEADER_OP(i32 %78)
  %80 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %77, i32 %79)
  %81 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %82 = call i32 @SDMA_PKT_TRAP_INT_CONTEXT_INT_CONTEXT(i32 0)
  %83 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %81, i32 %82)
  br label %84

84:                                               ; preds = %76, %69, %64
  ret void
}

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @SDMA_PKT_HEADER_OP(i32) #1

declare dso_local i32 @SDMA_PKT_FENCE_HEADER_MTYPE(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @SDMA_PKT_TRAP_INT_CONTEXT_INT_CONTEXT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
