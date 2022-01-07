; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_convert_power_state_to_smc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_convert_power_state_to_smc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.rv7xx_ps = type { i32, i32, i32 }

@ATOM_PPLIB_DISALLOW_ON_DC = common dso_local global i32 0, align 4
@PPSMC_SWSTATE_FLAG_DC = common dso_local global i32 0, align 4
@PPSMC_DISPLAY_WATERMARK_LOW = common dso_local global i32 0, align 4
@PPSMC_DISPLAY_WATERMARK_HIGH = common dso_local global i32 0, align 4
@MC_CG_ARB_FREQ_F1 = common dso_local global i32 0, align 4
@MC_CG_ARB_FREQ_F2 = common dso_local global i32 0, align 4
@MC_CG_ARB_FREQ_F3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_ps*, %struct.TYPE_6__*)* @rv770_convert_power_state_to_smc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv770_convert_power_state_to_smc(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.rv7xx_ps*, align 8
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %10 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %11 = call %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps* %10)
  store %struct.rv7xx_ps* %11, %struct.rv7xx_ps** %8, align 8
  %12 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %13 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ATOM_PPLIB_DISALLOW_ON_DC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @PPSMC_SWSTATE_FLAG_DC, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  br label %24

24:                                               ; preds = %18, %3
  %25 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %26 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %8, align 8
  %27 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %26, i32 0, i32 2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 0
  %32 = load i32, i32* @PPSMC_DISPLAY_WATERMARK_LOW, align 4
  %33 = call i32 @rv770_convert_power_level_to_smc(%struct.radeon_device* %25, i32* %27, %struct.TYPE_7__* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %120

38:                                               ; preds = %24
  %39 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %40 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %8, align 8
  %41 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i64 1
  %46 = load i32, i32* @PPSMC_DISPLAY_WATERMARK_LOW, align 4
  %47 = call i32 @rv770_convert_power_level_to_smc(%struct.radeon_device* %39, i32* %41, %struct.TYPE_7__* %45, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %120

52:                                               ; preds = %38
  %53 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %54 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %8, align 8
  %55 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i64 2
  %60 = load i32, i32* @PPSMC_DISPLAY_WATERMARK_HIGH, align 4
  %61 = call i32 @rv770_convert_power_level_to_smc(%struct.radeon_device* %53, i32* %55, %struct.TYPE_7__* %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %52
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %4, align 4
  br label %120

66:                                               ; preds = %52
  %67 = load i32, i32* @MC_CG_ARB_FREQ_F1, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  store i32 %67, i32* %72, align 8
  %73 = load i32, i32* @MC_CG_ARB_FREQ_F2, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  store i32 %73, i32* %78, align 8
  %79 = load i32, i32* @MC_CG_ARB_FREQ_F3, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 2
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  store i32 %79, i32* %84, align 8
  %85 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %86 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %8, align 8
  %87 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %86, i32 0, i32 2
  %88 = call i8* @rv770_get_seq_value(%struct.radeon_device* %85, i32* %87)
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i64 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  store i8* %88, i8** %93, align 8
  %94 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %95 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %8, align 8
  %96 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %95, i32 0, i32 1
  %97 = call i8* @rv770_get_seq_value(%struct.radeon_device* %94, i32* %96)
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i64 1
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  store i8* %97, i8** %102, align 8
  %103 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %104 = load %struct.rv7xx_ps*, %struct.rv7xx_ps** %8, align 8
  %105 = getelementptr inbounds %struct.rv7xx_ps, %struct.rv7xx_ps* %104, i32 0, i32 0
  %106 = call i8* @rv770_get_seq_value(%struct.radeon_device* %103, i32* %105)
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i64 2
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  store i8* %106, i8** %111, align 8
  %112 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %113 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %115 = call i32 @rv770_populate_smc_sp(%struct.radeon_device* %112, %struct.radeon_ps* %113, %struct.TYPE_6__* %114)
  %116 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %117 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %119 = call i32 @rv770_populate_smc_t(%struct.radeon_device* %116, %struct.radeon_ps* %117, %struct.TYPE_6__* %118)
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %66, %64, %50, %36
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local %struct.rv7xx_ps* @rv770_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @rv770_convert_power_level_to_smc(%struct.radeon_device*, i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i8* @rv770_get_seq_value(%struct.radeon_device*, i32*) #1

declare dso_local i32 @rv770_populate_smc_sp(%struct.radeon_device*, %struct.radeon_ps*, %struct.TYPE_6__*) #1

declare dso_local i32 @rv770_populate_smc_t(%struct.radeon_device*, %struct.radeon_ps*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
