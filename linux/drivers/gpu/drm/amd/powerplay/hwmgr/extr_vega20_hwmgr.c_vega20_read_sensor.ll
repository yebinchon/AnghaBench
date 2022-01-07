; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_hwmgr.c_vega20_read_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega20_hwmgr.c_vega20_read_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.amdgpu_device*, i64 }
%struct.amdgpu_device = type { i32 }
%struct.vega20_hwmgr = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@PPCLK_UCLK = common dso_local global i32 0, align 4
@PP_TEMPERATURE_UNITS_PER_CENTIGRADES = common dso_local global i32 0, align 4
@SMUIO = common dso_local global i32 0, align 4
@mmSMUSVI0_TEL_PLANE0 = common dso_local global i32 0, align 4
@SMUSVI0_TEL_PLANE0__SVI0_PLANE0_VDDCOR_MASK = common dso_local global i32 0, align 4
@SMUSVI0_TEL_PLANE0__SVI0_PLANE0_VDDCOR__SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, i8*, i32*)* @vega20_read_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_read_sensor(%struct.pp_hwmgr* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pp_hwmgr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.vega20_hwmgr*, align 8
  %11 = alloca %struct.amdgpu_device*, align 8
  %12 = alloca %struct.TYPE_3__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %16 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.vega20_hwmgr*
  store %struct.vega20_hwmgr* %18, %struct.vega20_hwmgr** %10, align 8
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %20 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %19, i32 0, i32 0
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %20, align 8
  store %struct.amdgpu_device* %21, %struct.amdgpu_device** %11, align 8
  store i32 0, i32* %14, align 4
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %143 [
    i32 136, label %23
    i32 137, label %37
    i32 135, label %48
    i32 132, label %48
    i32 133, label %59
    i32 139, label %65
    i32 131, label %80
    i32 130, label %95
    i32 129, label %105
    i32 134, label %115
    i32 128, label %121
    i32 138, label %133
  ]

23:                                               ; preds = %4
  %24 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %25 = call i32 @vega20_get_metrics_table(%struct.pp_hwmgr* %24, %struct.TYPE_3__* %12)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %5, align 4
  br label %148

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %32, 100
  %34 = load i8*, i8** %8, align 8
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 4
  %36 = load i32*, i32** %9, align 8
  store i32 4, i32* %36, align 4
  br label %146

37:                                               ; preds = %4
  %38 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %39 = load i32, i32* @PPCLK_UCLK, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = call i32 @vega20_get_current_clk_freq(%struct.pp_hwmgr* %38, i32 %39, i32* %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %37
  %46 = load i32*, i32** %9, align 8
  store i32 4, i32* %46, align 4
  br label %47

47:                                               ; preds = %45, %37
  br label %146

48:                                               ; preds = %4, %4
  %49 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = bitcast i8* %51 to i32*
  %53 = call i32 @vega20_get_current_activity_percent(%struct.pp_hwmgr* %49, i32 %50, i32* %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %48
  %57 = load i32*, i32** %9, align 8
  store i32 4, i32* %57, align 4
  br label %58

58:                                               ; preds = %56, %48
  br label %146

59:                                               ; preds = %4
  %60 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %61 = call i32 @vega20_thermal_get_temperature(%struct.pp_hwmgr* %60)
  %62 = load i8*, i8** %8, align 8
  %63 = bitcast i8* %62 to i32*
  store i32 %61, i32* %63, align 4
  %64 = load i32*, i32** %9, align 8
  store i32 4, i32* %64, align 4
  br label %146

65:                                               ; preds = %4
  %66 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %67 = call i32 @vega20_get_metrics_table(%struct.pp_hwmgr* %66, %struct.TYPE_3__* %12)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %5, align 4
  br label %148

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @PP_TEMPERATURE_UNITS_PER_CENTIGRADES, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i8*, i8** %8, align 8
  %78 = bitcast i8* %77 to i32*
  store i32 %76, i32* %78, align 4
  %79 = load i32*, i32** %9, align 8
  store i32 4, i32* %79, align 4
  br label %146

80:                                               ; preds = %4
  %81 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %82 = call i32 @vega20_get_metrics_table(%struct.pp_hwmgr* %81, %struct.TYPE_3__* %12)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32, i32* %14, align 4
  store i32 %86, i32* %5, align 4
  br label %148

87:                                               ; preds = %80
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @PP_TEMPERATURE_UNITS_PER_CENTIGRADES, align 4
  %91 = mul nsw i32 %89, %90
  %92 = load i8*, i8** %8, align 8
  %93 = bitcast i8* %92 to i32*
  store i32 %91, i32* %93, align 4
  %94 = load i32*, i32** %9, align 8
  store i32 4, i32* %94, align 4
  br label %146

95:                                               ; preds = %4
  %96 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %10, align 8
  %97 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 0, i32 1
  %102 = load i8*, i8** %8, align 8
  %103 = bitcast i8* %102 to i32*
  store i32 %101, i32* %103, align 4
  %104 = load i32*, i32** %9, align 8
  store i32 4, i32* %104, align 4
  br label %146

105:                                              ; preds = %4
  %106 = load %struct.vega20_hwmgr*, %struct.vega20_hwmgr** %10, align 8
  %107 = getelementptr inbounds %struct.vega20_hwmgr, %struct.vega20_hwmgr* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 0, i32 1
  %112 = load i8*, i8** %8, align 8
  %113 = bitcast i8* %112 to i32*
  store i32 %111, i32* %113, align 4
  %114 = load i32*, i32** %9, align 8
  store i32 4, i32* %114, align 4
  br label %146

115:                                              ; preds = %4
  %116 = load i32*, i32** %9, align 8
  store i32 16, i32* %116, align 4
  %117 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = bitcast i8* %118 to i32*
  %120 = call i32 @vega20_get_gpu_power(%struct.pp_hwmgr* %117, i32* %119)
  store i32 %120, i32* %14, align 4
  br label %146

121:                                              ; preds = %4
  %122 = load i32, i32* @SMUIO, align 4
  %123 = load i32, i32* @mmSMUSVI0_TEL_PLANE0, align 4
  %124 = call i32 @RREG32_SOC15(i32 %122, i32 0, i32 %123)
  %125 = load i32, i32* @SMUSVI0_TEL_PLANE0__SVI0_PLANE0_VDDCOR_MASK, align 4
  %126 = and i32 %124, %125
  %127 = load i32, i32* @SMUSVI0_TEL_PLANE0__SVI0_PLANE0_VDDCOR__SHIFT, align 4
  %128 = ashr i32 %126, %127
  store i32 %128, i32* %13, align 4
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @convert_to_vddc(i32 %129)
  %131 = load i8*, i8** %8, align 8
  %132 = bitcast i8* %131 to i32*
  store i32 %130, i32* %132, align 4
  br label %146

133:                                              ; preds = %4
  %134 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %135 = load i8*, i8** %8, align 8
  %136 = bitcast i8* %135 to i32*
  %137 = call i32 @vega20_get_enabled_smc_features(%struct.pp_hwmgr* %134, i32* %136)
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %14, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %133
  %141 = load i32*, i32** %9, align 8
  store i32 8, i32* %141, align 4
  br label %142

142:                                              ; preds = %140, %133
  br label %146

143:                                              ; preds = %4
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %14, align 4
  br label %146

146:                                              ; preds = %143, %142, %121, %115, %105, %95, %87, %72, %59, %58, %47, %30
  %147 = load i32, i32* %14, align 4
  store i32 %147, i32* %5, align 4
  br label %148

148:                                              ; preds = %146, %85, %70, %28
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i32 @vega20_get_metrics_table(%struct.pp_hwmgr*, %struct.TYPE_3__*) #1

declare dso_local i32 @vega20_get_current_clk_freq(%struct.pp_hwmgr*, i32, i32*) #1

declare dso_local i32 @vega20_get_current_activity_percent(%struct.pp_hwmgr*, i32, i32*) #1

declare dso_local i32 @vega20_thermal_get_temperature(%struct.pp_hwmgr*) #1

declare dso_local i32 @vega20_get_gpu_power(%struct.pp_hwmgr*, i32*) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @convert_to_vddc(i32) #1

declare dso_local i32 @vega20_get_enabled_smc_features(%struct.pp_hwmgr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
