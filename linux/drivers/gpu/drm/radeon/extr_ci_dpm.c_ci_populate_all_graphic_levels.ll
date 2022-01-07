; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_all_graphic_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_all_graphic_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.ci_power_info = type { i64, i32, %struct.TYPE_10__, %struct.TYPE_9__, i64*, %struct.ci_dpm_table }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i64 }
%struct.ci_dpm_table = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@SMU7_Discrete_DpmTable = common dso_local global i32 0, align 4
@GraphicsLevel = common dso_local global i32 0, align 4
@SMU7_MAX_LEVELS_GRAPHICS = common dso_local global i32 0, align 4
@PPSMC_DISPLAY_WATERMARK_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @ci_populate_all_graphic_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_populate_all_graphic_levels(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.ci_power_info*, align 8
  %5 = alloca %struct.ci_dpm_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %11)
  store %struct.ci_power_info* %12, %struct.ci_power_info** %4, align 8
  %13 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %14 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %13, i32 0, i32 5
  store %struct.ci_dpm_table* %14, %struct.ci_dpm_table** %5, align 8
  %15 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %16 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @SMU7_Discrete_DpmTable, align 4
  %19 = load i32, i32* @GraphicsLevel, align 4
  %20 = call i64 @offsetof(i32 %18, i32 %19)
  %21 = add i64 %17, %20
  store i64 %21, i64* %6, align 8
  %22 = load i32, i32* @SMU7_MAX_LEVELS_GRAPHICS, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 16, %23
  store i64 %24, i64* %7, align 8
  %25 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %26 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %8, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @memset(%struct.TYPE_11__* %29, i32 0, i64 %30)
  store i64 0, i64* %9, align 8
  br label %32

32:                                               ; preds = %97, %1
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.ci_dpm_table*, %struct.ci_dpm_table** %5, align 8
  %35 = getelementptr inbounds %struct.ci_dpm_table, %struct.ci_dpm_table* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %33, %37
  br i1 %38, label %39, label %100

39:                                               ; preds = %32
  %40 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %41 = load %struct.ci_dpm_table*, %struct.ci_dpm_table** %5, align 8
  %42 = getelementptr inbounds %struct.ci_dpm_table, %struct.ci_dpm_table* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %50 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %49, i32 0, i32 4
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %57 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i64 %60
  %62 = call i64 @ci_populate_single_graphic_level(%struct.radeon_device* %40, i32 %48, i32 %55, %struct.TYPE_11__* %61)
  store i64 %62, i64* %10, align 8
  %63 = load i64, i64* %10, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %39
  %66 = load i64, i64* %10, align 8
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %2, align 4
  br label %135

68:                                               ; preds = %39
  %69 = load i64, i64* %9, align 8
  %70 = icmp ugt i64 %69, 1
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %73 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %71, %68
  %80 = load i64, i64* %9, align 8
  %81 = load %struct.ci_dpm_table*, %struct.ci_dpm_table** %5, align 8
  %82 = getelementptr inbounds %struct.ci_dpm_table, %struct.ci_dpm_table* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sub i64 %84, 1
  %86 = icmp eq i64 %80, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %79
  %88 = load i32, i32* @PPSMC_DISPLAY_WATERMARK_HIGH, align 4
  %89 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %90 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = load i64, i64* %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  store i32 %88, i32* %95, align 4
  br label %96

96:                                               ; preds = %87, %79
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %9, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %9, align 8
  br label %32

100:                                              ; preds = %32
  %101 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %102 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  store i32 1, i32* %106, align 8
  %107 = load %struct.ci_dpm_table*, %struct.ci_dpm_table** %5, align 8
  %108 = getelementptr inbounds %struct.ci_dpm_table, %struct.ci_dpm_table* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %112 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  store i64 %110, i64* %113, align 8
  %114 = load %struct.ci_dpm_table*, %struct.ci_dpm_table** %5, align 8
  %115 = getelementptr inbounds %struct.ci_dpm_table, %struct.ci_dpm_table* %114, i32 0, i32 0
  %116 = call i32 @ci_get_dpm_level_enable_mask_value(%struct.TYPE_12__* %115)
  %117 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %118 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 4
  %120 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %121 = load i64, i64* %6, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %123 = bitcast %struct.TYPE_11__* %122 to i64*
  %124 = load i64, i64* %7, align 8
  %125 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %126 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @ci_copy_bytes_to_smc(%struct.radeon_device* %120, i64 %121, i64* %123, i64 %124, i32 %127)
  store i64 %128, i64* %10, align 8
  %129 = load i64, i64* %10, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %100
  %132 = load i64, i64* %10, align 8
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %2, align 4
  br label %135

134:                                              ; preds = %100
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %134, %131, %65
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i64) #1

declare dso_local i64 @ci_populate_single_graphic_level(%struct.radeon_device*, i32, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @ci_get_dpm_level_enable_mask_value(%struct.TYPE_12__*) #1

declare dso_local i64 @ci_copy_bytes_to_smc(%struct.radeon_device*, i64, i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
