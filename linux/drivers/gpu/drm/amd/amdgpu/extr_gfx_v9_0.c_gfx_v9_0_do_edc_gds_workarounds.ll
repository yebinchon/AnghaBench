; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_do_edc_gds_workarounds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_do_edc_gds_workarounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { i64, i32 }

@.str = private unnamed_addr constant [54 x i8] c"amdgpu: GDS workarounds failed to lock ring %s (%d).\0A\00", align 1
@GC = common dso_local global i32 0, align 4
@mmGDS_VMID0_BASE = common dso_local global i32 0, align 4
@mmGDS_VMID0_SIZE = common dso_local global i32 0, align 4
@PACKET3_DMA_DATA = common dso_local global i32 0, align 4
@PACKET3_DMA_DATA_CP_SYNC = common dso_local global i32 0, align 4
@PACKET3_DMA_DATA_CMD_RAW_WAIT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @gfx_v9_0_do_edc_gds_workarounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v9_0_do_edc_gds_workarounds(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %9, align 8
  %11 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %10, i64 0
  store %struct.amdgpu_ring* %11, %struct.amdgpu_ring** %4, align 8
  %12 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %13 = call i32 @amdgpu_ring_alloc(%struct.amdgpu_ring* %12, i32 7)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %18 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %98

23:                                               ; preds = %1
  %24 = load i32, i32* @GC, align 4
  %25 = load i32, i32* @mmGDS_VMID0_BASE, align 4
  %26 = call i32 @WREG32_SOC15(i32 %24, i32 0, i32 %25, i32 0)
  %27 = load i32, i32* @GC, align 4
  %28 = load i32, i32* @mmGDS_VMID0_SIZE, align 4
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @WREG32_SOC15(i32 %27, i32 0, i32 %28, i32 %32)
  %34 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %35 = load i32, i32* @PACKET3_DMA_DATA, align 4
  %36 = call i32 @PACKET3(i32 %35, i32 5)
  %37 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %34, i32 %36)
  %38 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %39 = load i32, i32* @PACKET3_DMA_DATA_CP_SYNC, align 4
  %40 = call i32 @PACKET3_DMA_DATA_DST_SEL(i32 1)
  %41 = or i32 %39, %40
  %42 = call i32 @PACKET3_DMA_DATA_SRC_SEL(i32 2)
  %43 = or i32 %41, %42
  %44 = call i32 @PACKET3_DMA_DATA_ENGINE(i32 0)
  %45 = or i32 %43, %44
  %46 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %38, i32 %45)
  %47 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %48 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %47, i32 0)
  %49 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %50 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %49, i32 0)
  %51 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %52 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %51, i32 0)
  %53 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %54 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %53, i32 0)
  %55 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %56 = load i32, i32* @PACKET3_DMA_DATA_CMD_RAW_WAIT, align 4
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %56, %60
  %62 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %55, i32 %61)
  %63 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %64 = call i32 @amdgpu_ring_commit(%struct.amdgpu_ring* %63)
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %81, %23
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %65
  %72 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %73 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %76 = call i64 @gfx_v9_0_ring_get_rptr_compute(%struct.amdgpu_ring* %75)
  %77 = icmp eq i64 %74, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %84

79:                                               ; preds = %71
  %80 = call i32 @udelay(i32 1)
  br label %81

81:                                               ; preds = %79
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %65

84:                                               ; preds = %78, %65
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %87 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp sge i32 %85, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i32, i32* @ETIMEDOUT, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %90, %84
  %94 = load i32, i32* @GC, align 4
  %95 = load i32, i32* @mmGDS_VMID0_SIZE, align 4
  %96 = call i32 @WREG32_SOC15(i32 %94, i32 0, i32 %95, i32 0)
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %93, %16
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @amdgpu_ring_alloc(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @PACKET3_DMA_DATA_DST_SEL(i32) #1

declare dso_local i32 @PACKET3_DMA_DATA_SRC_SEL(i32) #1

declare dso_local i32 @PACKET3_DMA_DATA_ENGINE(i32) #1

declare dso_local i32 @amdgpu_ring_commit(%struct.amdgpu_ring*) #1

declare dso_local i64 @gfx_v9_0_ring_get_rptr_compute(%struct.amdgpu_ring*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
