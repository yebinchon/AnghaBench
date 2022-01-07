; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_ring_emit_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_ring_emit_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }

@AMDGPU_FENCE_FLAG_64BIT = common dso_local global i32 0, align 4
@SDMA_OP_FENCE = common dso_local global i32 0, align 4
@SDMA_OP_TRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i32, i32, i32)* @sdma_v4_0_ring_emit_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v4_0_ring_emit_fence(%struct.amdgpu_ring* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 3
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @lower_32_bits(i32 %21)
  %23 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %20, i32 %22)
  %24 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @upper_32_bits(i32 %25)
  %27 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %24, i32 %26)
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @lower_32_bits(i32 %29)
  %31 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %28, i32 %30)
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %4
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 4
  store i32 %36, i32* %6, align 4
  %37 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %38 = load i32, i32* @SDMA_OP_FENCE, align 4
  %39 = call i32 @SDMA_PKT_HEADER_OP(i32 %38)
  %40 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %37, i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 3
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @lower_32_bits(i32 %45)
  %47 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %44, i32 %46)
  %48 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @upper_32_bits(i32 %49)
  %51 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %48, i32 %50)
  %52 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @upper_32_bits(i32 %53)
  %55 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %52, i32 %54)
  br label %56

56:                                               ; preds = %34, %4
  %57 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %58 = load i32, i32* @SDMA_OP_TRAP, align 4
  %59 = call i32 @SDMA_PKT_HEADER_OP(i32 %58)
  %60 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %57, i32 %59)
  %61 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %62 = call i32 @SDMA_PKT_TRAP_INT_CONTEXT_INT_CONTEXT(i32 0)
  %63 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %61, i32 %62)
  ret void
}

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @SDMA_PKT_HEADER_OP(i32) #1

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
