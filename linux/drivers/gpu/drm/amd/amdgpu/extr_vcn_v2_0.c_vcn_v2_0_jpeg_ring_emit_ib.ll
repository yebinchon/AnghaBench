; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_jpeg_ring_emit_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vcn_v2_0.c_vcn_v2_0_jpeg_ring_emit_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }
%struct.amdgpu_job = type { i32 }
%struct.amdgpu_ib = type { i32, i32 }

@mmUVD_LMI_JRBC_IB_VMID_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@PACKETJ_TYPE0 = common dso_local global i32 0, align 4
@mmUVD_LMI_JPEG_VMID_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@mmUVD_LMI_JRBC_IB_64BIT_BAR_LOW_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@mmUVD_LMI_JRBC_IB_64BIT_BAR_HIGH_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@mmUVD_JRBC_IB_SIZE_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_LOW_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_HIGH_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@PACKETJ_CONDITION_CHECK0 = common dso_local global i32 0, align 4
@PACKETJ_TYPE2 = common dso_local global i32 0, align 4
@mmUVD_JRBC_RB_COND_RD_TIMER_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@mmUVD_JRBC_RB_REF_DATA_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@mmUVD_JRBC_STATUS_INTERNAL_OFFSET = common dso_local global i32 0, align 4
@PACKETJ_CONDITION_CHECK3 = common dso_local global i32 0, align 4
@PACKETJ_TYPE3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vcn_v2_0_jpeg_ring_emit_ib(%struct.amdgpu_ring* %0, %struct.amdgpu_job* %1, %struct.amdgpu_ib* %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca %struct.amdgpu_job*, align 8
  %7 = alloca %struct.amdgpu_ib*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %5, align 8
  store %struct.amdgpu_job* %1, %struct.amdgpu_job** %6, align 8
  store %struct.amdgpu_ib* %2, %struct.amdgpu_ib** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.amdgpu_job*, %struct.amdgpu_job** %6, align 8
  %11 = call i32 @AMDGPU_JOB_GET_VMID(%struct.amdgpu_job* %10)
  store i32 %11, i32* %9, align 4
  %12 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %13 = load i32, i32* @mmUVD_LMI_JRBC_IB_VMID_INTERNAL_OFFSET, align 4
  %14 = load i32, i32* @PACKETJ_TYPE0, align 4
  %15 = call i32 @PACKETJ(i32 %13, i32 0, i32 0, i32 %14)
  %16 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %12, i32 %15)
  %17 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = shl i32 %19, 4
  %21 = or i32 %18, %20
  %22 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %17, i32 %21)
  %23 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %24 = load i32, i32* @mmUVD_LMI_JPEG_VMID_INTERNAL_OFFSET, align 4
  %25 = load i32, i32* @PACKETJ_TYPE0, align 4
  %26 = call i32 @PACKETJ(i32 %24, i32 0, i32 0, i32 %25)
  %27 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %23, i32 %26)
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = shl i32 %30, 4
  %32 = or i32 %29, %31
  %33 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %28, i32 %32)
  %34 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %35 = load i32, i32* @mmUVD_LMI_JRBC_IB_64BIT_BAR_LOW_INTERNAL_OFFSET, align 4
  %36 = load i32, i32* @PACKETJ_TYPE0, align 4
  %37 = call i32 @PACKETJ(i32 %35, i32 0, i32 0, i32 %36)
  %38 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %34, i32 %37)
  %39 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %40 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %41 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @lower_32_bits(i32 %42)
  %44 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %39, i32 %43)
  %45 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %46 = load i32, i32* @mmUVD_LMI_JRBC_IB_64BIT_BAR_HIGH_INTERNAL_OFFSET, align 4
  %47 = load i32, i32* @PACKETJ_TYPE0, align 4
  %48 = call i32 @PACKETJ(i32 %46, i32 0, i32 0, i32 %47)
  %49 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %45, i32 %48)
  %50 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %51 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %52 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @upper_32_bits(i32 %53)
  %55 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %50, i32 %54)
  %56 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %57 = load i32, i32* @mmUVD_JRBC_IB_SIZE_INTERNAL_OFFSET, align 4
  %58 = load i32, i32* @PACKETJ_TYPE0, align 4
  %59 = call i32 @PACKETJ(i32 %57, i32 0, i32 0, i32 %58)
  %60 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %56, i32 %59)
  %61 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %62 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %7, align 8
  %63 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %61, i32 %64)
  %66 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %67 = load i32, i32* @mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_LOW_INTERNAL_OFFSET, align 4
  %68 = load i32, i32* @PACKETJ_TYPE0, align 4
  %69 = call i32 @PACKETJ(i32 %67, i32 0, i32 0, i32 %68)
  %70 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %66, i32 %69)
  %71 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %72 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %73 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @lower_32_bits(i32 %74)
  %76 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %71, i32 %75)
  %77 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %78 = load i32, i32* @mmUVD_LMI_JRBC_RB_MEM_RD_64BIT_BAR_HIGH_INTERNAL_OFFSET, align 4
  %79 = load i32, i32* @PACKETJ_TYPE0, align 4
  %80 = call i32 @PACKETJ(i32 %78, i32 0, i32 0, i32 %79)
  %81 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %77, i32 %80)
  %82 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %83 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %84 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @upper_32_bits(i32 %85)
  %87 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %82, i32 %86)
  %88 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %89 = load i32, i32* @PACKETJ_CONDITION_CHECK0, align 4
  %90 = load i32, i32* @PACKETJ_TYPE2, align 4
  %91 = call i32 @PACKETJ(i32 0, i32 0, i32 %89, i32 %90)
  %92 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %88, i32 %91)
  %93 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %94 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %93, i32 0)
  %95 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %96 = load i32, i32* @mmUVD_JRBC_RB_COND_RD_TIMER_INTERNAL_OFFSET, align 4
  %97 = load i32, i32* @PACKETJ_TYPE0, align 4
  %98 = call i32 @PACKETJ(i32 %96, i32 0, i32 0, i32 %97)
  %99 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %95, i32 %98)
  %100 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %101 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %100, i32 20972032)
  %102 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %103 = load i32, i32* @mmUVD_JRBC_RB_REF_DATA_INTERNAL_OFFSET, align 4
  %104 = load i32, i32* @PACKETJ_TYPE0, align 4
  %105 = call i32 @PACKETJ(i32 %103, i32 0, i32 0, i32 %104)
  %106 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %102, i32 %105)
  %107 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %108 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %107, i32 2)
  %109 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %110 = load i32, i32* @mmUVD_JRBC_STATUS_INTERNAL_OFFSET, align 4
  %111 = load i32, i32* @PACKETJ_CONDITION_CHECK3, align 4
  %112 = load i32, i32* @PACKETJ_TYPE3, align 4
  %113 = call i32 @PACKETJ(i32 %110, i32 0, i32 %111, i32 %112)
  %114 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %109, i32 %113)
  %115 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %116 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %115, i32 2)
  ret void
}

declare dso_local i32 @AMDGPU_JOB_GET_VMID(%struct.amdgpu_job*) #1

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
