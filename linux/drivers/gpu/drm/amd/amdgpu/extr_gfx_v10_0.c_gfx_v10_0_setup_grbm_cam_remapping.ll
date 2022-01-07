; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_setup_grbm_cam_remapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_setup_grbm_cam_remapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@GC = common dso_local global i32 0, align 4
@mmGRBM_CAM_INDEX = common dso_local global i32 0, align 4
@mmVGT_TF_RING_SIZE_UMD = common dso_local global i32 0, align 4
@GRBM_CAM_DATA__CAM_ADDR__SHIFT = common dso_local global i32 0, align 4
@mmVGT_TF_RING_SIZE = common dso_local global i32 0, align 4
@GRBM_CAM_DATA__CAM_REMAPADDR__SHIFT = common dso_local global i32 0, align 4
@mmGRBM_CAM_DATA_UPPER = common dso_local global i32 0, align 4
@mmGRBM_CAM_DATA = common dso_local global i32 0, align 4
@mmVGT_TF_MEMORY_BASE_UMD = common dso_local global i32 0, align 4
@mmVGT_TF_MEMORY_BASE = common dso_local global i32 0, align 4
@mmVGT_TF_MEMORY_BASE_HI_UMD = common dso_local global i32 0, align 4
@mmVGT_TF_MEMORY_BASE_HI = common dso_local global i32 0, align 4
@mmVGT_HS_OFFCHIP_PARAM_UMD = common dso_local global i32 0, align 4
@mmVGT_HS_OFFCHIP_PARAM = common dso_local global i32 0, align 4
@mmVGT_ESGS_RING_SIZE_UMD = common dso_local global i32 0, align 4
@mmVGT_ESGS_RING_SIZE = common dso_local global i32 0, align 4
@mmVGT_GSVS_RING_SIZE_UMD = common dso_local global i32 0, align 4
@mmVGT_GSVS_RING_SIZE = common dso_local global i32 0, align 4
@mmSPI_CONFIG_CNTL_REMAP = common dso_local global i32 0, align 4
@mmSPI_CONFIG_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v10_0_setup_grbm_cam_remapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v10_0_setup_grbm_cam_remapping(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %4 = load i32, i32* @GC, align 4
  %5 = load i32, i32* @mmGRBM_CAM_INDEX, align 4
  %6 = call i32 @WREG32_SOC15(i32 %4, i32 0, i32 %5, i32 0)
  %7 = load i32, i32* @GC, align 4
  %8 = load i32, i32* @mmVGT_TF_RING_SIZE_UMD, align 4
  %9 = call i32 @SOC15_REG_OFFSET(i32 %7, i32 0, i32 %8)
  %10 = load i32, i32* @GRBM_CAM_DATA__CAM_ADDR__SHIFT, align 4
  %11 = shl i32 %9, %10
  %12 = load i32, i32* @GC, align 4
  %13 = load i32, i32* @mmVGT_TF_RING_SIZE, align 4
  %14 = call i32 @SOC15_REG_OFFSET(i32 %12, i32 0, i32 %13)
  %15 = load i32, i32* @GRBM_CAM_DATA__CAM_REMAPADDR__SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = or i32 %11, %16
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @GC, align 4
  %19 = load i32, i32* @mmGRBM_CAM_DATA_UPPER, align 4
  %20 = call i32 @WREG32_SOC15(i32 %18, i32 0, i32 %19, i32 0)
  %21 = load i32, i32* @GC, align 4
  %22 = load i32, i32* @mmGRBM_CAM_DATA, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @WREG32_SOC15(i32 %21, i32 0, i32 %22, i32 %23)
  %25 = load i32, i32* @GC, align 4
  %26 = load i32, i32* @mmVGT_TF_MEMORY_BASE_UMD, align 4
  %27 = call i32 @SOC15_REG_OFFSET(i32 %25, i32 0, i32 %26)
  %28 = load i32, i32* @GRBM_CAM_DATA__CAM_ADDR__SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* @GC, align 4
  %31 = load i32, i32* @mmVGT_TF_MEMORY_BASE, align 4
  %32 = call i32 @SOC15_REG_OFFSET(i32 %30, i32 0, i32 %31)
  %33 = load i32, i32* @GRBM_CAM_DATA__CAM_REMAPADDR__SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = or i32 %29, %34
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* @GC, align 4
  %37 = load i32, i32* @mmGRBM_CAM_DATA_UPPER, align 4
  %38 = call i32 @WREG32_SOC15(i32 %36, i32 0, i32 %37, i32 0)
  %39 = load i32, i32* @GC, align 4
  %40 = load i32, i32* @mmGRBM_CAM_DATA, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @WREG32_SOC15(i32 %39, i32 0, i32 %40, i32 %41)
  %43 = load i32, i32* @GC, align 4
  %44 = load i32, i32* @mmVGT_TF_MEMORY_BASE_HI_UMD, align 4
  %45 = call i32 @SOC15_REG_OFFSET(i32 %43, i32 0, i32 %44)
  %46 = load i32, i32* @GRBM_CAM_DATA__CAM_ADDR__SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* @GC, align 4
  %49 = load i32, i32* @mmVGT_TF_MEMORY_BASE_HI, align 4
  %50 = call i32 @SOC15_REG_OFFSET(i32 %48, i32 0, i32 %49)
  %51 = load i32, i32* @GRBM_CAM_DATA__CAM_REMAPADDR__SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = or i32 %47, %52
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* @GC, align 4
  %55 = load i32, i32* @mmGRBM_CAM_DATA_UPPER, align 4
  %56 = call i32 @WREG32_SOC15(i32 %54, i32 0, i32 %55, i32 0)
  %57 = load i32, i32* @GC, align 4
  %58 = load i32, i32* @mmGRBM_CAM_DATA, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @WREG32_SOC15(i32 %57, i32 0, i32 %58, i32 %59)
  %61 = load i32, i32* @GC, align 4
  %62 = load i32, i32* @mmVGT_HS_OFFCHIP_PARAM_UMD, align 4
  %63 = call i32 @SOC15_REG_OFFSET(i32 %61, i32 0, i32 %62)
  %64 = load i32, i32* @GRBM_CAM_DATA__CAM_ADDR__SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = load i32, i32* @GC, align 4
  %67 = load i32, i32* @mmVGT_HS_OFFCHIP_PARAM, align 4
  %68 = call i32 @SOC15_REG_OFFSET(i32 %66, i32 0, i32 %67)
  %69 = load i32, i32* @GRBM_CAM_DATA__CAM_REMAPADDR__SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = or i32 %65, %70
  store i32 %71, i32* %3, align 4
  %72 = load i32, i32* @GC, align 4
  %73 = load i32, i32* @mmGRBM_CAM_DATA_UPPER, align 4
  %74 = call i32 @WREG32_SOC15(i32 %72, i32 0, i32 %73, i32 0)
  %75 = load i32, i32* @GC, align 4
  %76 = load i32, i32* @mmGRBM_CAM_DATA, align 4
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @WREG32_SOC15(i32 %75, i32 0, i32 %76, i32 %77)
  %79 = load i32, i32* @GC, align 4
  %80 = load i32, i32* @mmVGT_ESGS_RING_SIZE_UMD, align 4
  %81 = call i32 @SOC15_REG_OFFSET(i32 %79, i32 0, i32 %80)
  %82 = load i32, i32* @GRBM_CAM_DATA__CAM_ADDR__SHIFT, align 4
  %83 = shl i32 %81, %82
  %84 = load i32, i32* @GC, align 4
  %85 = load i32, i32* @mmVGT_ESGS_RING_SIZE, align 4
  %86 = call i32 @SOC15_REG_OFFSET(i32 %84, i32 0, i32 %85)
  %87 = load i32, i32* @GRBM_CAM_DATA__CAM_REMAPADDR__SHIFT, align 4
  %88 = shl i32 %86, %87
  %89 = or i32 %83, %88
  store i32 %89, i32* %3, align 4
  %90 = load i32, i32* @GC, align 4
  %91 = load i32, i32* @mmGRBM_CAM_DATA_UPPER, align 4
  %92 = call i32 @WREG32_SOC15(i32 %90, i32 0, i32 %91, i32 0)
  %93 = load i32, i32* @GC, align 4
  %94 = load i32, i32* @mmGRBM_CAM_DATA, align 4
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @WREG32_SOC15(i32 %93, i32 0, i32 %94, i32 %95)
  %97 = load i32, i32* @GC, align 4
  %98 = load i32, i32* @mmVGT_GSVS_RING_SIZE_UMD, align 4
  %99 = call i32 @SOC15_REG_OFFSET(i32 %97, i32 0, i32 %98)
  %100 = load i32, i32* @GRBM_CAM_DATA__CAM_ADDR__SHIFT, align 4
  %101 = shl i32 %99, %100
  %102 = load i32, i32* @GC, align 4
  %103 = load i32, i32* @mmVGT_GSVS_RING_SIZE, align 4
  %104 = call i32 @SOC15_REG_OFFSET(i32 %102, i32 0, i32 %103)
  %105 = load i32, i32* @GRBM_CAM_DATA__CAM_REMAPADDR__SHIFT, align 4
  %106 = shl i32 %104, %105
  %107 = or i32 %101, %106
  store i32 %107, i32* %3, align 4
  %108 = load i32, i32* @GC, align 4
  %109 = load i32, i32* @mmGRBM_CAM_DATA_UPPER, align 4
  %110 = call i32 @WREG32_SOC15(i32 %108, i32 0, i32 %109, i32 0)
  %111 = load i32, i32* @GC, align 4
  %112 = load i32, i32* @mmGRBM_CAM_DATA, align 4
  %113 = load i32, i32* %3, align 4
  %114 = call i32 @WREG32_SOC15(i32 %111, i32 0, i32 %112, i32 %113)
  %115 = load i32, i32* @GC, align 4
  %116 = load i32, i32* @mmSPI_CONFIG_CNTL_REMAP, align 4
  %117 = call i32 @SOC15_REG_OFFSET(i32 %115, i32 0, i32 %116)
  %118 = load i32, i32* @GRBM_CAM_DATA__CAM_ADDR__SHIFT, align 4
  %119 = shl i32 %117, %118
  %120 = load i32, i32* @GC, align 4
  %121 = load i32, i32* @mmSPI_CONFIG_CNTL, align 4
  %122 = call i32 @SOC15_REG_OFFSET(i32 %120, i32 0, i32 %121)
  %123 = load i32, i32* @GRBM_CAM_DATA__CAM_REMAPADDR__SHIFT, align 4
  %124 = shl i32 %122, %123
  %125 = or i32 %119, %124
  store i32 %125, i32* %3, align 4
  %126 = load i32, i32* @GC, align 4
  %127 = load i32, i32* @mmGRBM_CAM_DATA_UPPER, align 4
  %128 = call i32 @WREG32_SOC15(i32 %126, i32 0, i32 %127, i32 0)
  %129 = load i32, i32* @GC, align 4
  %130 = load i32, i32* @mmGRBM_CAM_DATA, align 4
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @WREG32_SOC15(i32 %129, i32 0, i32 %130, i32 %131)
  ret void
}

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
