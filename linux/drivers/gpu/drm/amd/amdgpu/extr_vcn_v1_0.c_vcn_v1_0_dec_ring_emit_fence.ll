; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_dec_ring_emit_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_dec_ring_emit_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@AMDGPU_FENCE_FLAG_64BIT = common dso_local global i32 0, align 4
@UVD = common dso_local global i32 0, align 4
@mmUVD_CONTEXT_ID = common dso_local global i32 0, align 4
@mmUVD_GPCOM_VCPU_DATA0 = common dso_local global i32 0, align 4
@mmUVD_GPCOM_VCPU_DATA1 = common dso_local global i32 0, align 4
@mmUVD_GPCOM_VCPU_CMD = common dso_local global i32 0, align 4
@VCN_DEC_CMD_FENCE = common dso_local global i32 0, align 4
@VCN_DEC_CMD_TRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i32, i32, i32)* @vcn_v1_0_dec_ring_emit_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcn_v1_0_dec_ring_emit_fence(%struct.amdgpu_ring* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @AMDGPU_FENCE_FLAG_64BIT, align 4
  %15 = and i32 %13, %14
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %18 = load i32, i32* @UVD, align 4
  %19 = load i32, i32* @mmUVD_CONTEXT_ID, align 4
  %20 = call i32 @SOC15_REG_OFFSET(i32 %18, i32 0, i32 %19)
  %21 = call i32 @PACKET0(i32 %20, i32 0)
  %22 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %17, i32 %21)
  %23 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %23, i32 %24)
  %26 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %27 = load i32, i32* @UVD, align 4
  %28 = load i32, i32* @mmUVD_GPCOM_VCPU_DATA0, align 4
  %29 = call i32 @SOC15_REG_OFFSET(i32 %27, i32 0, i32 %28)
  %30 = call i32 @PACKET0(i32 %29, i32 0)
  %31 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %26, i32 %30)
  %32 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %32, i32 %33)
  %35 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %36 = load i32, i32* @UVD, align 4
  %37 = load i32, i32* @mmUVD_GPCOM_VCPU_DATA1, align 4
  %38 = call i32 @SOC15_REG_OFFSET(i32 %36, i32 0, i32 %37)
  %39 = call i32 @PACKET0(i32 %38, i32 0)
  %40 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %35, i32 %39)
  %41 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @upper_32_bits(i32 %42)
  %44 = and i32 %43, 255
  %45 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %41, i32 %44)
  %46 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %47 = load i32, i32* @UVD, align 4
  %48 = load i32, i32* @mmUVD_GPCOM_VCPU_CMD, align 4
  %49 = call i32 @SOC15_REG_OFFSET(i32 %47, i32 0, i32 %48)
  %50 = call i32 @PACKET0(i32 %49, i32 0)
  %51 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %46, i32 %50)
  %52 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %53 = load i32, i32* @VCN_DEC_CMD_FENCE, align 4
  %54 = shl i32 %53, 1
  %55 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %52, i32 %54)
  %56 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %57 = load i32, i32* @UVD, align 4
  %58 = load i32, i32* @mmUVD_GPCOM_VCPU_DATA0, align 4
  %59 = call i32 @SOC15_REG_OFFSET(i32 %57, i32 0, i32 %58)
  %60 = call i32 @PACKET0(i32 %59, i32 0)
  %61 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %56, i32 %60)
  %62 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %63 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %62, i32 0)
  %64 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %65 = load i32, i32* @UVD, align 4
  %66 = load i32, i32* @mmUVD_GPCOM_VCPU_DATA1, align 4
  %67 = call i32 @SOC15_REG_OFFSET(i32 %65, i32 0, i32 %66)
  %68 = call i32 @PACKET0(i32 %67, i32 0)
  %69 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %64, i32 %68)
  %70 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %71 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %70, i32 0)
  %72 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %73 = load i32, i32* @UVD, align 4
  %74 = load i32, i32* @mmUVD_GPCOM_VCPU_CMD, align 4
  %75 = call i32 @SOC15_REG_OFFSET(i32 %73, i32 0, i32 %74)
  %76 = call i32 @PACKET0(i32 %75, i32 0)
  %77 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %72, i32 %76)
  %78 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %79 = load i32, i32* @VCN_DEC_CMD_TRAP, align 4
  %80 = shl i32 %79, 1
  %81 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %78, i32 %80)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
