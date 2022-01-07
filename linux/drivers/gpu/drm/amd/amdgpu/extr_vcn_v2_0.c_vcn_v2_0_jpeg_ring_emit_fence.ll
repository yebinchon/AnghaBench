; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_jpeg_ring_emit_fence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_jpeg_ring_emit_fence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }

@AMDGPU_FENCE_FLAG_64BIT = common dso_local global i32 0, align 4
@mmUVD_JPEG_GPCOM_DATA0_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@PACKETJ_TYPE0 = common dso_local global i32 0, align 4
@mmUVD_JPEG_GPCOM_DATA1_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@mmUVD_LMI_JRBC_RB_MEM_WR_64BIT_BAR_LOW_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@mmUVD_LMI_JRBC_RB_MEM_WR_64BIT_BAR_HIGH_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@mmUVD_JPEG_GPCOM_CMD_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@PACKETJ_CONDITION_CHECK0 = common dso_local global i32 0, align 4
@PACKETJ_TYPE4 = common dso_local global i32 0, align 4
@mmUVD_JRBC_EXTERNAL_REG_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@JRBC_DEC_EXTERNAL_REG_WRITE_ADDR = common dso_local global i32 0, align 4
@PACKETJ_TYPE7 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vcn_v2_0_jpeg_ring_emit_fence(%struct.amdgpu_ring* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @AMDGPU_FENCE_FLAG_64BIT, align 4
  %11 = and i32 %9, %10
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %14 = load i32, i32* @mmUVD_JPEG_GPCOM_DATA0_INTERNAL_OFFSET, align 4
  %15 = load i32, i32* @PACKETJ_TYPE0, align 4
  %16 = call i32 @PACKETJ(i32 %14, i32 0, i32 0, i32 %15)
  %17 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %13, i32 %16)
  %18 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %18, i32 %19)
  %21 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %22 = load i32, i32* @mmUVD_JPEG_GPCOM_DATA1_INTERNAL_OFFSET, align 4
  %23 = load i32, i32* @PACKETJ_TYPE0, align 4
  %24 = call i32 @PACKETJ(i32 %22, i32 0, i32 0, i32 %23)
  %25 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %21, i32 %24)
  %26 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %26, i32 %27)
  %29 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %30 = load i32, i32* @mmUVD_LMI_JRBC_RB_MEM_WR_64BIT_BAR_LOW_INTERNAL_OFFSET, align 4
  %31 = load i32, i32* @PACKETJ_TYPE0, align 4
  %32 = call i32 @PACKETJ(i32 %30, i32 0, i32 0, i32 %31)
  %33 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %29, i32 %32)
  %34 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @lower_32_bits(i32 %35)
  %37 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %34, i32 %36)
  %38 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %39 = load i32, i32* @mmUVD_LMI_JRBC_RB_MEM_WR_64BIT_BAR_HIGH_INTERNAL_OFFSET, align 4
  %40 = load i32, i32* @PACKETJ_TYPE0, align 4
  %41 = call i32 @PACKETJ(i32 %39, i32 0, i32 0, i32 %40)
  %42 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %38, i32 %41)
  %43 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @upper_32_bits(i32 %44)
  %46 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %43, i32 %45)
  %47 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %48 = load i32, i32* @mmUVD_JPEG_GPCOM_CMD_INTERNAL_OFFSET, align 4
  %49 = load i32, i32* @PACKETJ_TYPE0, align 4
  %50 = call i32 @PACKETJ(i32 %48, i32 0, i32 0, i32 %49)
  %51 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %47, i32 %50)
  %52 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %53 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %52, i32 8)
  %54 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %55 = load i32, i32* @mmUVD_JPEG_GPCOM_CMD_INTERNAL_OFFSET, align 4
  %56 = load i32, i32* @PACKETJ_CONDITION_CHECK0, align 4
  %57 = load i32, i32* @PACKETJ_TYPE4, align 4
  %58 = call i32 @PACKETJ(i32 %55, i32 0, i32 %56, i32 %57)
  %59 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %54, i32 %58)
  %60 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %61 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %60, i32 0)
  %62 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %63 = load i32, i32* @mmUVD_JRBC_EXTERNAL_REG_INTERNAL_OFFSET, align 4
  %64 = load i32, i32* @PACKETJ_TYPE0, align 4
  %65 = call i32 @PACKETJ(i32 %63, i32 0, i32 0, i32 %64)
  %66 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %62, i32 %65)
  %67 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %68 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %67, i32 16316)
  %69 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %70 = load i32, i32* @JRBC_DEC_EXTERNAL_REG_WRITE_ADDR, align 4
  %71 = load i32, i32* @PACKETJ_TYPE0, align 4
  %72 = call i32 @PACKETJ(i32 %70, i32 0, i32 0, i32 %71)
  %73 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %69, i32 %72)
  %74 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %75 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %74, i32 1)
  %76 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %77 = load i32, i32* @PACKETJ_TYPE7, align 4
  %78 = call i32 @PACKETJ(i32 0, i32 0, i32 0, i32 %77)
  %79 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %76, i32 %78)
  %80 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %81 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %80, i32 0)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKETJ(i32, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
