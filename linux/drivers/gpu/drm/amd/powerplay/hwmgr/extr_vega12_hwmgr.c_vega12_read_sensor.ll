; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega12_hwmgr.c_vega12_read_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega12_hwmgr.c_vega12_read_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.vega12_hwmgr = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@PP_TEMPERATURE_UNITS_PER_CENTIGRADES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, i8*, i32*)* @vega12_read_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega12_read_sensor(%struct.pp_hwmgr* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pp_hwmgr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.vega12_hwmgr*, align 8
  %11 = alloca %struct.TYPE_3__, align 4
  %12 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.vega12_hwmgr*
  store %struct.vega12_hwmgr* %16, %struct.vega12_hwmgr** %10, align 8
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %125 [
    i32 136, label %18
    i32 137, label %28
    i32 135, label %38
    i32 131, label %38
    i32 133, label %49
    i32 132, label %55
    i32 130, label %70
    i32 129, label %85
    i32 128, label %95
    i32 134, label %105
    i32 138, label %115
  ]

18:                                               ; preds = %4
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = call i32 @vega12_get_current_gfx_clk_freq(%struct.pp_hwmgr* %19, i32* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = load i32*, i32** %9, align 8
  store i32 4, i32* %26, align 4
  br label %27

27:                                               ; preds = %25, %18
  br label %128

28:                                               ; preds = %4
  %29 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = call i32 @vega12_get_current_mclk_freq(%struct.pp_hwmgr* %29, i32* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = load i32*, i32** %9, align 8
  store i32 4, i32* %36, align 4
  br label %37

37:                                               ; preds = %35, %28
  br label %128

38:                                               ; preds = %4, %4
  %39 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = bitcast i8* %41 to i32*
  %43 = call i32 @vega12_get_current_activity_percent(%struct.pp_hwmgr* %39, i32 %40, i32* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %38
  %47 = load i32*, i32** %9, align 8
  store i32 4, i32* %47, align 4
  br label %48

48:                                               ; preds = %46, %38
  br label %128

49:                                               ; preds = %4
  %50 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %51 = call i32 @vega12_thermal_get_temperature(%struct.pp_hwmgr* %50)
  %52 = load i8*, i8** %8, align 8
  %53 = bitcast i8* %52 to i32*
  store i32 %51, i32* %53, align 4
  %54 = load i32*, i32** %9, align 8
  store i32 4, i32* %54, align 4
  br label %128

55:                                               ; preds = %4
  %56 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %57 = call i32 @vega12_get_metrics_table(%struct.pp_hwmgr* %56, %struct.TYPE_3__* %11)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %5, align 4
  br label %130

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PP_TEMPERATURE_UNITS_PER_CENTIGRADES, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load i8*, i8** %8, align 8
  %68 = bitcast i8* %67 to i32*
  store i32 %66, i32* %68, align 4
  %69 = load i32*, i32** %9, align 8
  store i32 4, i32* %69, align 4
  br label %128

70:                                               ; preds = %4
  %71 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %72 = call i32 @vega12_get_metrics_table(%struct.pp_hwmgr* %71, %struct.TYPE_3__* %11)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %5, align 4
  br label %130

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @PP_TEMPERATURE_UNITS_PER_CENTIGRADES, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load i8*, i8** %8, align 8
  %83 = bitcast i8* %82 to i32*
  store i32 %81, i32* %83, align 4
  %84 = load i32*, i32** %9, align 8
  store i32 4, i32* %84, align 4
  br label %128

85:                                               ; preds = %4
  %86 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %10, align 8
  %87 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 0, i32 1
  %92 = load i8*, i8** %8, align 8
  %93 = bitcast i8* %92 to i32*
  store i32 %91, i32* %93, align 4
  %94 = load i32*, i32** %9, align 8
  store i32 4, i32* %94, align 4
  br label %128

95:                                               ; preds = %4
  %96 = load %struct.vega12_hwmgr*, %struct.vega12_hwmgr** %10, align 8
  %97 = getelementptr inbounds %struct.vega12_hwmgr, %struct.vega12_hwmgr* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 0, i32 1
  %102 = load i8*, i8** %8, align 8
  %103 = bitcast i8* %102 to i32*
  store i32 %101, i32* %103, align 4
  %104 = load i32*, i32** %9, align 8
  store i32 4, i32* %104, align 4
  br label %128

105:                                              ; preds = %4
  %106 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %107 = load i8*, i8** %8, align 8
  %108 = bitcast i8* %107 to i32*
  %109 = call i32 @vega12_get_gpu_power(%struct.pp_hwmgr* %106, i32* %108)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %105
  %113 = load i32*, i32** %9, align 8
  store i32 4, i32* %113, align 4
  br label %114

114:                                              ; preds = %112, %105
  br label %128

115:                                              ; preds = %4
  %116 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %117 = load i8*, i8** %8, align 8
  %118 = bitcast i8* %117 to i32*
  %119 = call i32 @vega12_get_enabled_smc_features(%struct.pp_hwmgr* %116, i32* %118)
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %115
  %123 = load i32*, i32** %9, align 8
  store i32 8, i32* %123, align 4
  br label %124

124:                                              ; preds = %122, %115
  br label %128

125:                                              ; preds = %4
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %12, align 4
  br label %128

128:                                              ; preds = %125, %124, %114, %95, %85, %77, %62, %49, %48, %37, %27
  %129 = load i32, i32* %12, align 4
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %128, %75, %60
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @vega12_get_current_gfx_clk_freq(%struct.pp_hwmgr*, i32*) #1

declare dso_local i32 @vega12_get_current_mclk_freq(%struct.pp_hwmgr*, i32*) #1

declare dso_local i32 @vega12_get_current_activity_percent(%struct.pp_hwmgr*, i32, i32*) #1

declare dso_local i32 @vega12_thermal_get_temperature(%struct.pp_hwmgr*) #1

declare dso_local i32 @vega12_get_metrics_table(%struct.pp_hwmgr*, %struct.TYPE_3__*) #1

declare dso_local i32 @vega12_get_gpu_power(%struct.pp_hwmgr*, i32*) #1

declare dso_local i32 @vega12_get_enabled_smc_features(%struct.pp_hwmgr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
