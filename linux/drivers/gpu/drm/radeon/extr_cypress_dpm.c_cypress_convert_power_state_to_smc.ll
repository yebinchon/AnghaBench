; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_convert_power_state_to_smc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_convert_power_state_to_smc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.rv7xx_ps = type { i32, i32, i32 }
%struct.evergreen_power_info = type { i64 }

@ATOM_PPLIB_DISALLOW_ON_DC = common dso_local global i32 0, align 4
@PPSMC_SWSTATE_FLAG_DC = common dso_local global i32 0, align 4
@PPSMC_DISPLAY_WATERMARK_LOW = common dso_local global i32 0, align 4
@PPSMC_DISPLAY_WATERMARK_HIGH = common dso_local global i32 0, align 4
@MC_CG_ARB_FREQ_F1 = common dso_local global i32 0, align 4
@MC_CG_ARB_FREQ_F2 = common dso_local global i32 0, align 4
@MC_CG_ARB_FREQ_F3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_ps*, %struct.TYPE_6__*)* @cypress_convert_power_state_to_smc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cypress_convert_power_state_to_smc(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.rv7xx_ps*, align 8
  %9 = alloca %struct.evergreen_power_info*, align 8
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %11 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %12 = call %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps* %11)
  store %struct.rv7xx_ps* %12, %struct.rv7xx_ps** %8, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %14 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %13)
  store %struct.evergreen_power_info* %14, %struct.evergreen_power_info** %9, align 8
  %15 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %16 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ATOM_PPLIB_DISALLOW_ON_DC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @PPSMC_SWSTATE_FLAG_DC, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %21, %3
  %28 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %29 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %8, align 8
  %30 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 0
  %35 = load i32, i32* @PPSMC_DISPLAY_WATERMARK_LOW, align 4
  %36 = call i32 @cypress_convert_power_level_to_smc(%struct.radeon_device* %28, i32* %30, %struct.TYPE_7__* %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %133

41:                                               ; preds = %27
  %42 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %43 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %8, align 8
  %44 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i64 1
  %49 = load i32, i32* @PPSMC_DISPLAY_WATERMARK_LOW, align 4
  %50 = call i32 @cypress_convert_power_level_to_smc(%struct.radeon_device* %42, i32* %44, %struct.TYPE_7__* %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %4, align 4
  br label %133

55:                                               ; preds = %41
  %56 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %57 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %8, align 8
  %58 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i64 2
  %63 = load i32, i32* @PPSMC_DISPLAY_WATERMARK_HIGH, align 4
  %64 = call i32 @cypress_convert_power_level_to_smc(%struct.radeon_device* %56, i32* %58, %struct.TYPE_7__* %62, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %55
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %133

69:                                               ; preds = %55
  %70 = load i32, i32* @MC_CG_ARB_FREQ_F1, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  store i32 %70, i32* %75, align 4
  %76 = load i32, i32* @MC_CG_ARB_FREQ_F2, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i64 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  store i32 %76, i32* %81, align 4
  %82 = load i32, i32* @MC_CG_ARB_FREQ_F3, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i64 2
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  store i32 %82, i32* %87, align 4
  %88 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %9, align 8
  %89 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %69
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  store i32 2, i32* %97, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 1
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  store i32 3, i32* %102, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i64 2
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  store i32 4, i32* %107, align 4
  br label %124

108:                                              ; preds = %69
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i64 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  store i32 0, i32* %113, align 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i64 1
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  store i32 0, i32* %118, align 4
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i64 2
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  store i32 0, i32* %123, align 4
  br label %124

124:                                              ; preds = %108, %92
  %125 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %126 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %128 = call i32 @rv770_populate_smc_sp(%struct.radeon_device* %125, %struct.radeon_ps* %126, %struct.TYPE_6__* %127)
  %129 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %130 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %132 = call i32 @rv770_populate_smc_t(%struct.radeon_device* %129, %struct.radeon_ps* %130, %struct.TYPE_6__* %131)
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %124, %67, %53, %39
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @cypress_convert_power_level_to_smc(%struct.radeon_device*, i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @rv770_populate_smc_sp(%struct.radeon_device*, %struct.radeon_ps*, %struct.TYPE_6__*) #1

declare dso_local i32 @rv770_populate_smc_t(%struct.radeon_device*, %struct.radeon_ps*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
