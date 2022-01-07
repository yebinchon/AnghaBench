; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_initialize_dpm_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_initialize_dpm_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }

@R600_BSU_DFLT = common dso_local global i32 0, align 4
@R600_BSP_DFLT = common dso_local global i32 0, align 4
@R600_GICST_DFLT = common dso_local global i32 0, align 4
@R600_PM_NUMBER_OF_TC = common dso_local global i32 0, align 4
@R600_TD_DFLT = common dso_local global i32 0, align 4
@R600_TPU_DFLT = common dso_local global i32 0, align 4
@R600_TPC_DFLT = common dso_local global i32 0, align 4
@R600_SSTU_DFLT = common dso_local global i32 0, align 4
@R600_SST_DFLT = common dso_local global i32 0, align 4
@R600_FCTU_DFLT = common dso_local global i32 0, align 4
@R600_FCT_DFLT = common dso_local global i32 0, align 4
@R600_VDDC3DOORSU_DFLT = common dso_local global i32 0, align 4
@R600_VDDC3DOORPHC_DFLT = common dso_local global i32 0, align 4
@R600_VDDC3DOORSDC_DFLT = common dso_local global i32 0, align 4
@R600_CTXCGTT3DRPHC_DFLT = common dso_local global i32 0, align 4
@R600_CTXCGTT3DRSDC_DFLT = common dso_local global i32 0, align 4
@R600_VRU_DFLT = common dso_local global i32 0, align 4
@R600_VOLTAGERESPONSETIME_DFLT = common dso_local global i32 0, align 4
@R600_SPLLSTEPUNIT_DFLT = common dso_local global i32 0, align 4
@R600_POWER_LEVEL_LOW = common dso_local global i32 0, align 4
@R600_POWER_LEVEL_MEDIUM = common dso_local global i32 0, align 4
@R600_POWER_LEVEL_HIGH = common dso_local global i32 0, align 4
@R600_DISPLAY_WATERMARK_HIGH = common dso_local global i32 0, align 4
@R600_POWER_LEVEL_CTXSW = common dso_local global i32 0, align 4
@RS780_CGFTV_DFLT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_ps*)* @rs780_initialize_dpm_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs780_initialize_dpm_parameters(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_ps*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = load i32, i32* @R600_BSU_DFLT, align 4
  %9 = load i32, i32* @R600_BSP_DFLT, align 4
  %10 = call i32 @r600_set_bsp(%struct.radeon_device* %7, i32 %8, i32 %9)
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = call i32 @r600_set_at(%struct.radeon_device* %11, i32 0, i32 0, i32 0, i32 0)
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = load i32, i32* @R600_GICST_DFLT, align 4
  %15 = call i32 @r600_set_git(%struct.radeon_device* %13, i32 %14)
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %24, %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @R600_PM_NUMBER_OF_TC, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @r600_set_tc(%struct.radeon_device* %21, i32 %22, i32 0, i32 0)
  br label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %16

27:                                               ; preds = %16
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = load i32, i32* @R600_TD_DFLT, align 4
  %30 = call i32 @r600_select_td(%struct.radeon_device* %28, i32 %29)
  %31 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %32 = call i32 @r600_set_vrc(%struct.radeon_device* %31, i32 0)
  %33 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %34 = load i32, i32* @R600_TPU_DFLT, align 4
  %35 = call i32 @r600_set_tpu(%struct.radeon_device* %33, i32 %34)
  %36 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %37 = load i32, i32* @R600_TPC_DFLT, align 4
  %38 = call i32 @r600_set_tpc(%struct.radeon_device* %36, i32 %37)
  %39 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %40 = load i32, i32* @R600_SSTU_DFLT, align 4
  %41 = call i32 @r600_set_sstu(%struct.radeon_device* %39, i32 %40)
  %42 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %43 = load i32, i32* @R600_SST_DFLT, align 4
  %44 = call i32 @r600_set_sst(%struct.radeon_device* %42, i32 %43)
  %45 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %46 = load i32, i32* @R600_FCTU_DFLT, align 4
  %47 = call i32 @r600_set_fctu(%struct.radeon_device* %45, i32 %46)
  %48 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %49 = load i32, i32* @R600_FCT_DFLT, align 4
  %50 = call i32 @r600_set_fct(%struct.radeon_device* %48, i32 %49)
  %51 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %52 = load i32, i32* @R600_VDDC3DOORSU_DFLT, align 4
  %53 = call i32 @r600_set_vddc3d_oorsu(%struct.radeon_device* %51, i32 %52)
  %54 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %55 = load i32, i32* @R600_VDDC3DOORPHC_DFLT, align 4
  %56 = call i32 @r600_set_vddc3d_oorphc(%struct.radeon_device* %54, i32 %55)
  %57 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %58 = load i32, i32* @R600_VDDC3DOORSDC_DFLT, align 4
  %59 = call i32 @r600_set_vddc3d_oorsdc(%struct.radeon_device* %57, i32 %58)
  %60 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %61 = load i32, i32* @R600_CTXCGTT3DRPHC_DFLT, align 4
  %62 = call i32 @r600_set_ctxcgtt3d_rphc(%struct.radeon_device* %60, i32 %61)
  %63 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %64 = load i32, i32* @R600_CTXCGTT3DRSDC_DFLT, align 4
  %65 = call i32 @r600_set_ctxcgtt3d_rsdc(%struct.radeon_device* %63, i32 %64)
  %66 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %67 = load i32, i32* @R600_VRU_DFLT, align 4
  %68 = call i32 @r600_vid_rt_set_vru(%struct.radeon_device* %66, i32 %67)
  %69 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %70 = load i32, i32* @R600_VOLTAGERESPONSETIME_DFLT, align 4
  %71 = call i32 @r600_vid_rt_set_vrt(%struct.radeon_device* %69, i32 %70)
  %72 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %73 = load i32, i32* @R600_SPLLSTEPUNIT_DFLT, align 4
  %74 = call i32 @r600_vid_rt_set_ssu(%struct.radeon_device* %72, i32 %73)
  %75 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %76 = load %struct.radeon_ps*, %struct.radeon_ps** %4, align 8
  %77 = call i32 @rs780_initialize_dpm_power_state(%struct.radeon_device* %75, %struct.radeon_ps* %76)
  store i32 %77, i32* %5, align 4
  %78 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %79 = load i32, i32* @R600_POWER_LEVEL_LOW, align 4
  %80 = call i32 @r600_power_level_set_voltage_index(%struct.radeon_device* %78, i32 %79, i32 0)
  %81 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %82 = load i32, i32* @R600_POWER_LEVEL_MEDIUM, align 4
  %83 = call i32 @r600_power_level_set_voltage_index(%struct.radeon_device* %81, i32 %82, i32 0)
  %84 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %85 = load i32, i32* @R600_POWER_LEVEL_HIGH, align 4
  %86 = call i32 @r600_power_level_set_voltage_index(%struct.radeon_device* %84, i32 %85, i32 0)
  %87 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %88 = load i32, i32* @R600_POWER_LEVEL_LOW, align 4
  %89 = call i32 @r600_power_level_set_mem_clock_index(%struct.radeon_device* %87, i32 %88, i32 0)
  %90 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %91 = load i32, i32* @R600_POWER_LEVEL_MEDIUM, align 4
  %92 = call i32 @r600_power_level_set_mem_clock_index(%struct.radeon_device* %90, i32 %91, i32 0)
  %93 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %94 = load i32, i32* @R600_POWER_LEVEL_HIGH, align 4
  %95 = call i32 @r600_power_level_set_mem_clock_index(%struct.radeon_device* %93, i32 %94, i32 0)
  %96 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %97 = load i32, i32* @R600_POWER_LEVEL_LOW, align 4
  %98 = call i32 @r600_power_level_set_eng_clock_index(%struct.radeon_device* %96, i32 %97, i32 0)
  %99 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %100 = load i32, i32* @R600_POWER_LEVEL_MEDIUM, align 4
  %101 = call i32 @r600_power_level_set_eng_clock_index(%struct.radeon_device* %99, i32 %100, i32 0)
  %102 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %103 = load i32, i32* @R600_POWER_LEVEL_HIGH, align 4
  %104 = call i32 @r600_power_level_set_eng_clock_index(%struct.radeon_device* %102, i32 %103, i32 0)
  %105 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %106 = load i32, i32* @R600_POWER_LEVEL_LOW, align 4
  %107 = load i32, i32* @R600_DISPLAY_WATERMARK_HIGH, align 4
  %108 = call i32 @r600_power_level_set_watermark_id(%struct.radeon_device* %105, i32 %106, i32 %107)
  %109 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %110 = load i32, i32* @R600_POWER_LEVEL_MEDIUM, align 4
  %111 = load i32, i32* @R600_DISPLAY_WATERMARK_HIGH, align 4
  %112 = call i32 @r600_power_level_set_watermark_id(%struct.radeon_device* %109, i32 %110, i32 %111)
  %113 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %114 = load i32, i32* @R600_POWER_LEVEL_HIGH, align 4
  %115 = load i32, i32* @R600_DISPLAY_WATERMARK_HIGH, align 4
  %116 = call i32 @r600_power_level_set_watermark_id(%struct.radeon_device* %113, i32 %114, i32 %115)
  %117 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %118 = load i32, i32* @R600_POWER_LEVEL_CTXSW, align 4
  %119 = call i32 @r600_power_level_enable(%struct.radeon_device* %117, i32 %118, i32 0)
  %120 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %121 = load i32, i32* @R600_POWER_LEVEL_HIGH, align 4
  %122 = call i32 @r600_power_level_enable(%struct.radeon_device* %120, i32 %121, i32 0)
  %123 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %124 = load i32, i32* @R600_POWER_LEVEL_MEDIUM, align 4
  %125 = call i32 @r600_power_level_enable(%struct.radeon_device* %123, i32 %124, i32 0)
  %126 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %127 = load i32, i32* @R600_POWER_LEVEL_LOW, align 4
  %128 = call i32 @r600_power_level_enable(%struct.radeon_device* %126, i32 %127, i32 1)
  %129 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %130 = load i32, i32* @R600_POWER_LEVEL_LOW, align 4
  %131 = call i32 @r600_power_level_set_enter_index(%struct.radeon_device* %129, i32 %130)
  %132 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %133 = load i32, i32* @RS780_CGFTV_DFLT, align 4
  %134 = call i32 @r600_set_vrc(%struct.radeon_device* %132, i32 %133)
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i32 @r600_set_bsp(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @r600_set_at(%struct.radeon_device*, i32, i32, i32, i32) #1

declare dso_local i32 @r600_set_git(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_set_tc(%struct.radeon_device*, i32, i32, i32) #1

declare dso_local i32 @r600_select_td(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_set_vrc(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_set_tpu(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_set_tpc(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_set_sstu(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_set_sst(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_set_fctu(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_set_fct(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_set_vddc3d_oorsu(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_set_vddc3d_oorphc(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_set_vddc3d_oorsdc(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_set_ctxcgtt3d_rphc(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_set_ctxcgtt3d_rsdc(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_vid_rt_set_vru(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_vid_rt_set_vrt(%struct.radeon_device*, i32) #1

declare dso_local i32 @r600_vid_rt_set_ssu(%struct.radeon_device*, i32) #1

declare dso_local i32 @rs780_initialize_dpm_power_state(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i32 @r600_power_level_set_voltage_index(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @r600_power_level_set_mem_clock_index(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @r600_power_level_set_eng_clock_index(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @r600_power_level_set_watermark_id(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @r600_power_level_enable(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @r600_power_level_set_enter_index(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
