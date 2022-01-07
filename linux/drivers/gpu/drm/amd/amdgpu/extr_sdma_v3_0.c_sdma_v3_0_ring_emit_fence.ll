; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v3_0.c_sdma_v3_0_ring_emit_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v3_0.c_sdma_v3_0_ring_emit_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }

@AMDGPU_FENCE_FLAG_64BIT = common dso_local global i32 0, align 4
@SDMA_OP_FENCE = common dso_local global i32 0, align 4
@SDMA_OP_TRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i32, i32, i32)* @sdma_v3_0_ring_emit_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v3_0_ring_emit_fence(%struct.amdgpu_ring* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @AMDGPU_FENCE_FLAG_64BIT, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %9, align 4
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %14 = load i32, i32* @SDMA_OP_FENCE, align 4
  %15 = call i32 @SDMA_PKT_HEADER_OP(i32 %14)
  %16 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %13, i32 %15)
  %17 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @lower_32_bits(i32 %18)
  %20 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %17, i32 %19)
  %21 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @upper_32_bits(i32 %22)
  %24 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %21, i32 %23)
  %25 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @lower_32_bits(i32 %26)
  %28 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %25, i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 4
  store i32 %33, i32* %6, align 4
  %34 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %35 = load i32, i32* @SDMA_OP_FENCE, align 4
  %36 = call i32 @SDMA_PKT_HEADER_OP(i32 %35)
  %37 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %34, i32 %36)
  %38 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @lower_32_bits(i32 %39)
  %41 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %38, i32 %40)
  %42 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @upper_32_bits(i32 %43)
  %45 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %42, i32 %44)
  %46 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @upper_32_bits(i32 %47)
  %49 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %46, i32 %48)
  br label %50

50:                                               ; preds = %31, %4
  %51 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %52 = load i32, i32* @SDMA_OP_TRAP, align 4
  %53 = call i32 @SDMA_PKT_HEADER_OP(i32 %52)
  %54 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %51, i32 %53)
  %55 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %56 = call i32 @SDMA_PKT_TRAP_INT_CONTEXT_INT_CONTEXT(i32 0)
  %57 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %55, i32 %56)
  ret void
}

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @SDMA_PKT_HEADER_OP(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @SDMA_PKT_TRAP_INT_CONTEXT_INT_CONTEXT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
