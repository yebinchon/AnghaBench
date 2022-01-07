; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_dec_ring_emit_reg_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_dec_ring_emit_reg_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@UVD = common dso_local global i32 0, align 4
@mmUVD_GPCOM_VCPU_DATA0 = common dso_local global i32 0, align 4
@mmUVD_GPCOM_VCPU_DATA1 = common dso_local global i32 0, align 4
@mmUVD_GP_SCRATCH8 = common dso_local global i32 0, align 4
@mmUVD_GPCOM_VCPU_CMD = common dso_local global i32 0, align 4
@VCN_DEC_CMD_REG_READ_COND_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i32, i32, i32)* @vcn_v1_0_dec_ring_emit_reg_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcn_v1_0_dec_ring_emit_reg_wait(%struct.amdgpu_ring* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %11 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %10, i32 0, i32 0
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %11, align 8
  store %struct.amdgpu_device* %12, %struct.amdgpu_device** %9, align 8
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %14 = load i32, i32* @UVD, align 4
  %15 = load i32, i32* @mmUVD_GPCOM_VCPU_DATA0, align 4
  %16 = call i32 @SOC15_REG_OFFSET(i32 %14, i32 0, i32 %15)
  %17 = call i32 @PACKET0(i32 %16, i32 0)
  %18 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %13, i32 %17)
  %19 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = shl i32 %20, 2
  %22 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %19, i32 %21)
  %23 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %24 = load i32, i32* @UVD, align 4
  %25 = load i32, i32* @mmUVD_GPCOM_VCPU_DATA1, align 4
  %26 = call i32 @SOC15_REG_OFFSET(i32 %24, i32 0, i32 %25)
  %27 = call i32 @PACKET0(i32 %26, i32 0)
  %28 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %23, i32 %27)
  %29 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %29, i32 %30)
  %32 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %33 = load i32, i32* @UVD, align 4
  %34 = load i32, i32* @mmUVD_GP_SCRATCH8, align 4
  %35 = call i32 @SOC15_REG_OFFSET(i32 %33, i32 0, i32 %34)
  %36 = call i32 @PACKET0(i32 %35, i32 0)
  %37 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %32, i32 %36)
  %38 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %38, i32 %39)
  %41 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %42 = load i32, i32* @UVD, align 4
  %43 = load i32, i32* @mmUVD_GPCOM_VCPU_CMD, align 4
  %44 = call i32 @SOC15_REG_OFFSET(i32 %42, i32 0, i32 %43)
  %45 = call i32 @PACKET0(i32 %44, i32 0)
  %46 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %41, i32 %45)
  %47 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %48 = load i32, i32* @VCN_DEC_CMD_REG_READ_COND_WAIT, align 4
  %49 = shl i32 %48, 1
  %50 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %47, i32 %49)
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
