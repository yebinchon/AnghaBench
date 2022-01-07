; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_dec_ring_insert_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_dec_ring_insert_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@UVD = common dso_local global i32 0, align 4
@mmUVD_GPCOM_VCPU_DATA0 = common dso_local global i32 0, align 4
@mmUVD_GPCOM_VCPU_CMD = common dso_local global i32 0, align 4
@VCN_DEC_CMD_PACKET_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*)* @vcn_v1_0_dec_ring_insert_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcn_v1_0_dec_ring_insert_start(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %4 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %5 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %4, i32 0, i32 0
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_device* %6, %struct.amdgpu_device** %3, align 8
  %7 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %8 = load i32, i32* @UVD, align 4
  %9 = load i32, i32* @mmUVD_GPCOM_VCPU_DATA0, align 4
  %10 = call i32 @SOC15_REG_OFFSET(i32 %8, i32 0, i32 %9)
  %11 = call i32 @PACKET0(i32 %10, i32 0)
  %12 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %7, i32 %11)
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %14 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %13, i32 0)
  %15 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %16 = load i32, i32* @UVD, align 4
  %17 = load i32, i32* @mmUVD_GPCOM_VCPU_CMD, align 4
  %18 = call i32 @SOC15_REG_OFFSET(i32 %16, i32 0, i32 %17)
  %19 = call i32 @PACKET0(i32 %18, i32 0)
  %20 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %15, i32 %19)
  %21 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %22 = load i32, i32* @VCN_DEC_CMD_PACKET_START, align 4
  %23 = shl i32 %22, 1
  %24 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %21, i32 %23)
  ret void
}

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
