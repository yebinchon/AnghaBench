; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v5_0.c_sdma_v5_0_ring_emit_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v5_0.c_sdma_v5_0_ring_emit_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }
%struct.amdgpu_job = type { i32 }
%struct.amdgpu_ib = type { i32, i32 }

@SDMA_OP_INDIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, %struct.amdgpu_job*, %struct.amdgpu_ib*, i32)* @sdma_v5_0_ring_emit_ib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v5_0_ring_emit_ib(%struct.amdgpu_ring* %0, %struct.amdgpu_job* %1, %struct.amdgpu_ib* %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca %struct.amdgpu_job*, align 8
  %7 = alloca %struct.amdgpu_ib*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %5, align 8
  store %struct.amdgpu_job* %1, %struct.amdgpu_job** %6, align 8
  store %struct.amdgpu_ib* %2, %struct.amdgpu_ib** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %12 = call i32 @AMDGPU_JOB_GET_VMID(%struct.amdgpu_job* %11)
  store i32 %12, i32* %9, align 4
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @amdgpu_sdma_get_csa_mc_addr(%struct.amdgpu_ring* %13, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %17 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %18 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @lower_32_bits(i32 %19)
  %21 = and i32 %20, 7
  %22 = sub nsw i32 10, %21
  %23 = srem i32 %22, 8
  %24 = call i32 @sdma_v5_0_ring_insert_nop(%struct.amdgpu_ring* %16, i32 %23)
  %25 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %26 = load i32, i32* @SDMA_OP_INDIRECT, align 4
  %27 = call i32 @SDMA_PKT_HEADER_OP(i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, 15
  %30 = call i32 @SDMA_PKT_INDIRECT_HEADER_VMID(i32 %29)
  %31 = or i32 %27, %30
  %32 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %25, i32 %31)
  %33 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %34 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %35 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @lower_32_bits(i32 %36)
  %38 = and i32 %37, -32
  %39 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %33, i32 %38)
  %40 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %41 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %42 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @upper_32_bits(i32 %43)
  %45 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %40, i32 %44)
  %46 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %47 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %48 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %46, i32 %49)
  %51 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @lower_32_bits(i32 %52)
  %54 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %51, i32 %53)
  %55 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @upper_32_bits(i32 %56)
  %58 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %55, i32 %57)
  ret void
}

declare dso_local i32 @AMDGPU_JOB_GET_VMID(%struct.amdgpu_job*) #1

declare dso_local i32 @amdgpu_sdma_get_csa_mc_addr(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @sdma_v5_0_ring_insert_nop(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @SDMA_PKT_HEADER_OP(i32) #1

declare dso_local i32 @SDMA_PKT_INDIRECT_HEADER_VMID(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
