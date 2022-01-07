; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_jpeg_ring_emit_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v1_0.c_vcn_v1_0_jpeg_ring_emit_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }

@AMDGPU_FENCE_FLAG_64BIT = common dso_local global i32 0, align 4
@UVD = common dso_local global i32 0, align 4
@mmUVD_JPEG_GPCOM_DATA0 = common dso_local global i32 0, align 4
@PACKETJ_TYPE0 = common dso_local global i32 0, align 4
@mmUVD_JPEG_GPCOM_DATA1 = common dso_local global i32 0, align 4
@mmUVD_LMI_JRBC_RB_MEM_WR_64BIT_BAR_LOW = common dso_local global i32 0, align 4
@mmUVD_LMI_JRBC_RB_MEM_WR_64BIT_BAR_HIGH = common dso_local global i32 0, align 4
@mmUVD_JPEG_GPCOM_CMD = common dso_local global i32 0, align 4
@PACKETJ_CONDITION_CHECK0 = common dso_local global i32 0, align 4
@PACKETJ_TYPE4 = common dso_local global i32 0, align 4
@mmUVD_JRBC_RB_COND_RD_TIMER = common dso_local global i32 0, align 4
@mmUVD_JRBC_RB_REF_DATA = common dso_local global i32 0, align 4
@mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_LOW = common dso_local global i32 0, align 4
@mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_HIGH = common dso_local global i32 0, align 4
@PACKETJ_CONDITION_CHECK3 = common dso_local global i32 0, align 4
@PACKETJ_TYPE2 = common dso_local global i32 0, align 4
@mmUVD_JRBC_EXTERNAL_REG_BASE = common dso_local global i32 0, align 4
@PACKETJ_TYPE7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_ring*, i32, i32, i32)* @vcn_v1_0_jpeg_ring_emit_fence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vcn_v1_0_jpeg_ring_emit_fence(%struct.amdgpu_ring* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = load i32, i32* @mmUVD_JPEG_GPCOM_DATA0, align 4
  %20 = call i32 @SOC15_REG_OFFSET(i32 %18, i32 0, i32 %19)
  %21 = load i32, i32* @PACKETJ_TYPE0, align 4
  %22 = call i32 @PACKETJ(i32 %20, i32 0, i32 0, i32 %21)
  %23 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %17, i32 %22)
  %24 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %24, i32 %25)
  %27 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %28 = load i32, i32* @UVD, align 4
  %29 = load i32, i32* @mmUVD_JPEG_GPCOM_DATA1, align 4
  %30 = call i32 @SOC15_REG_OFFSET(i32 %28, i32 0, i32 %29)
  %31 = load i32, i32* @PACKETJ_TYPE0, align 4
  %32 = call i32 @PACKETJ(i32 %30, i32 0, i32 0, i32 %31)
  %33 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %27, i32 %32)
  %34 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %34, i32 %35)
  %37 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %38 = load i32, i32* @UVD, align 4
  %39 = load i32, i32* @mmUVD_LMI_JRBC_RB_MEM_WR_64BIT_BAR_LOW, align 4
  %40 = call i32 @SOC15_REG_OFFSET(i32 %38, i32 0, i32 %39)
  %41 = load i32, i32* @PACKETJ_TYPE0, align 4
  %42 = call i32 @PACKETJ(i32 %40, i32 0, i32 0, i32 %41)
  %43 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %37, i32 %42)
  %44 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @lower_32_bits(i32 %45)
  %47 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %44, i32 %46)
  %48 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %49 = load i32, i32* @UVD, align 4
  %50 = load i32, i32* @mmUVD_LMI_JRBC_RB_MEM_WR_64BIT_BAR_HIGH, align 4
  %51 = call i32 @SOC15_REG_OFFSET(i32 %49, i32 0, i32 %50)
  %52 = load i32, i32* @PACKETJ_TYPE0, align 4
  %53 = call i32 @PACKETJ(i32 %51, i32 0, i32 0, i32 %52)
  %54 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %48, i32 %53)
  %55 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @upper_32_bits(i32 %56)
  %58 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %55, i32 %57)
  %59 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %60 = load i32, i32* @UVD, align 4
  %61 = load i32, i32* @mmUVD_JPEG_GPCOM_CMD, align 4
  %62 = call i32 @SOC15_REG_OFFSET(i32 %60, i32 0, i32 %61)
  %63 = load i32, i32* @PACKETJ_TYPE0, align 4
  %64 = call i32 @PACKETJ(i32 %62, i32 0, i32 0, i32 %63)
  %65 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %59, i32 %64)
  %66 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %67 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %66, i32 8)
  %68 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %69 = load i32, i32* @UVD, align 4
  %70 = load i32, i32* @mmUVD_JPEG_GPCOM_CMD, align 4
  %71 = call i32 @SOC15_REG_OFFSET(i32 %69, i32 0, i32 %70)
  %72 = load i32, i32* @PACKETJ_CONDITION_CHECK0, align 4
  %73 = load i32, i32* @PACKETJ_TYPE4, align 4
  %74 = call i32 @PACKETJ(i32 %71, i32 0, i32 %72, i32 %73)
  %75 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %68, i32 %74)
  %76 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %77 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %76, i32 0)
  %78 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %79 = load i32, i32* @UVD, align 4
  %80 = load i32, i32* @mmUVD_JRBC_RB_COND_RD_TIMER, align 4
  %81 = call i32 @SOC15_REG_OFFSET(i32 %79, i32 0, i32 %80)
  %82 = load i32, i32* @PACKETJ_TYPE0, align 4
  %83 = call i32 @PACKETJ(i32 %81, i32 0, i32 0, i32 %82)
  %84 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %78, i32 %83)
  %85 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %86 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %85, i32 20972032)
  %87 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %88 = load i32, i32* @UVD, align 4
  %89 = load i32, i32* @mmUVD_JRBC_RB_REF_DATA, align 4
  %90 = call i32 @SOC15_REG_OFFSET(i32 %88, i32 0, i32 %89)
  %91 = load i32, i32* @PACKETJ_TYPE0, align 4
  %92 = call i32 @PACKETJ(i32 %90, i32 0, i32 0, i32 %91)
  %93 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %87, i32 %92)
  %94 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %94, i32 %95)
  %97 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %98 = load i32, i32* @UVD, align 4
  %99 = load i32, i32* @mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_LOW, align 4
  %100 = call i32 @SOC15_REG_OFFSET(i32 %98, i32 0, i32 %99)
  %101 = load i32, i32* @PACKETJ_TYPE0, align 4
  %102 = call i32 @PACKETJ(i32 %100, i32 0, i32 0, i32 %101)
  %103 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %97, i32 %102)
  %104 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @lower_32_bits(i32 %105)
  %107 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %104, i32 %106)
  %108 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %109 = load i32, i32* @UVD, align 4
  %110 = load i32, i32* @mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_HIGH, align 4
  %111 = call i32 @SOC15_REG_OFFSET(i32 %109, i32 0, i32 %110)
  %112 = load i32, i32* @PACKETJ_TYPE0, align 4
  %113 = call i32 @PACKETJ(i32 %111, i32 0, i32 0, i32 %112)
  %114 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %108, i32 %113)
  %115 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @upper_32_bits(i32 %116)
  %118 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %115, i32 %117)
  %119 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %120 = load i32, i32* @PACKETJ_CONDITION_CHECK3, align 4
  %121 = load i32, i32* @PACKETJ_TYPE2, align 4
  %122 = call i32 @PACKETJ(i32 0, i32 0, i32 %120, i32 %121)
  %123 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %119, i32 %122)
  %124 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %125 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %124, i32 -1)
  %126 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %127 = load i32, i32* @UVD, align 4
  %128 = load i32, i32* @mmUVD_JRBC_EXTERNAL_REG_BASE, align 4
  %129 = call i32 @SOC15_REG_OFFSET(i32 %127, i32 0, i32 %128)
  %130 = load i32, i32* @PACKETJ_TYPE0, align 4
  %131 = call i32 @PACKETJ(i32 %129, i32 0, i32 0, i32 %130)
  %132 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %126, i32 %131)
  %133 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %134 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %133, i32 16316)
  %135 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %136 = load i32, i32* @PACKETJ_TYPE0, align 4
  %137 = call i32 @PACKETJ(i32 0, i32 0, i32 0, i32 %136)
  %138 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %135, i32 %137)
  %139 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %140 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %139, i32 1)
  %141 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %142 = load i32, i32* @PACKETJ_TYPE7, align 4
  %143 = call i32 @PACKETJ(i32 0, i32 0, i32 0, i32 %142)
  %144 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %141, i32 %143)
  %145 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %146 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %145, i32 0)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKETJ(i32, i32, i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
