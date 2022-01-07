; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_wait_reg_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_wait_reg_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }

@SDMA_OP_POLL_REGMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i32, i32, i32, i32, i32, i32, i32)* @sdma_v4_0_wait_reg_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v4_0_wait_reg_mem(%struct.amdgpu_ring* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.amdgpu_ring*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %17 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %18 = load i32, i32* @SDMA_OP_POLL_REGMEM, align 4
  %19 = call i32 @SDMA_PKT_HEADER_OP(i32 %18)
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @SDMA_PKT_POLL_REGMEM_HEADER_HDP_FLUSH(i32 %20)
  %22 = or i32 %19, %21
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @SDMA_PKT_POLL_REGMEM_HEADER_MEM_POLL(i32 %23)
  %25 = or i32 %22, %24
  %26 = call i32 @SDMA_PKT_POLL_REGMEM_HEADER_FUNC(i32 3)
  %27 = or i32 %25, %26
  %28 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %17, i32 %27)
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %8
  %32 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %32, i32 %33)
  %35 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %35, i32 %36)
  br label %47

38:                                               ; preds = %8
  %39 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %40 = load i32, i32* %12, align 4
  %41 = shl i32 %40, 2
  %42 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %39, i32 %41)
  %43 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %44 = load i32, i32* %13, align 4
  %45 = shl i32 %44, 2
  %46 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %43, i32 %45)
  br label %47

47:                                               ; preds = %38, %31
  %48 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %48, i32 %49)
  %51 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %51, i32 %52)
  %54 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %55 = call i32 @SDMA_PKT_POLL_REGMEM_DW5_RETRY_COUNT(i32 4095)
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @SDMA_PKT_POLL_REGMEM_DW5_INTERVAL(i32 %56)
  %58 = or i32 %55, %57
  %59 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %54, i32 %58)
  ret void
}

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @SDMA_PKT_HEADER_OP(i32) #1

declare dso_local i32 @SDMA_PKT_POLL_REGMEM_HEADER_HDP_FLUSH(i32) #1

declare dso_local i32 @SDMA_PKT_POLL_REGMEM_HEADER_MEM_POLL(i32) #1

declare dso_local i32 @SDMA_PKT_POLL_REGMEM_HEADER_FUNC(i32) #1

declare dso_local i32 @SDMA_PKT_POLL_REGMEM_DW5_RETRY_COUNT(i32) #1

declare dso_local i32 @SDMA_PKT_POLL_REGMEM_DW5_INTERVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
