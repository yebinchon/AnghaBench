; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_dec_ring_emit_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_dec_ring_emit_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_job = type { i32 }
%struct.amdgpu_ib = type { i32, i32 }

@UVD = common dso_local global i32 0, align 4
@mmUVD_LMI_RBC_IB_VMID = common dso_local global i32 0, align 4
@mmUVD_LMI_RBC_IB_64BIT_BAR_LOW = common dso_local global i32 0, align 4
@mmUVD_LMI_RBC_IB_64BIT_BAR_HIGH = common dso_local global i32 0, align 4
@mmUVD_RBC_IB_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, %struct.amdgpu_job*, %struct.amdgpu_ib*, i32)* @vcn_v1_0_dec_ring_emit_ib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcn_v1_0_dec_ring_emit_ib(%struct.amdgpu_ring* %0, %struct.amdgpu_job* %1, %struct.amdgpu_ib* %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca %struct.amdgpu_job*, align 8
  %7 = alloca %struct.amdgpu_ib*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdgpu_device*, align 8
  %10 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %5, align 8
  store %struct.amdgpu_job* %1, %struct.amdgpu_job** %6, align 8
  store %struct.amdgpu_ib* %2, %struct.amdgpu_ib** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %12 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %11, i32 0, i32 0
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %12, align 8
  store %struct.amdgpu_device* %13, %struct.amdgpu_device** %9, align 8
  %14 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %15 = call i32 @AMDGPU_JOB_GET_VMID(%struct.amdgpu_job* %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %17 = load i32, i32* @UVD, align 4
  %18 = load i32, i32* @mmUVD_LMI_RBC_IB_VMID, align 4
  %19 = call i32 @SOC15_REG_OFFSET(i32 %17, i32 0, i32 %18)
  %20 = call i32 @PACKET0(i32 %19, i32 0)
  %21 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %16, i32 %20)
  %22 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %22, i32 %23)
  %25 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %26 = load i32, i32* @UVD, align 4
  %27 = load i32, i32* @mmUVD_LMI_RBC_IB_64BIT_BAR_LOW, align 4
  %28 = call i32 @SOC15_REG_OFFSET(i32 %26, i32 0, i32 %27)
  %29 = call i32 @PACKET0(i32 %28, i32 0)
  %30 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %25, i32 %29)
  %31 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %32 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %33 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @lower_32_bits(i32 %34)
  %36 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %31, i32 %35)
  %37 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %38 = load i32, i32* @UVD, align 4
  %39 = load i32, i32* @mmUVD_LMI_RBC_IB_64BIT_BAR_HIGH, align 4
  %40 = call i32 @SOC15_REG_OFFSET(i32 %38, i32 0, i32 %39)
  %41 = call i32 @PACKET0(i32 %40, i32 0)
  %42 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %37, i32 %41)
  %43 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %44 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %45 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @upper_32_bits(i32 %46)
  %48 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %43, i32 %47)
  %49 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %50 = load i32, i32* @UVD, align 4
  %51 = load i32, i32* @mmUVD_RBC_IB_SIZE, align 4
  %52 = call i32 @SOC15_REG_OFFSET(i32 %50, i32 0, i32 %51)
  %53 = call i32 @PACKET0(i32 %52, i32 0)
  %54 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %49, i32 %53)
  %55 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %56 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %57 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %55, i32 %58)
  ret void
}

declare dso_local i32 @AMDGPU_JOB_GET_VMID(%struct.amdgpu_job*) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
