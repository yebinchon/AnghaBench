; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_all_memory_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_all_memory_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.ci_power_info = type { i64, i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.ci_dpm_table }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.ci_dpm_table = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@SMU7_Discrete_DpmTable = common dso_local global i32 0, align 4
@MemoryLevel = common dso_local global i32 0, align 4
@SMU7_MAX_LEVELS_MEMORY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PPSMC_DISPLAY_WATERMARK_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @ci_populate_all_memory_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_populate_all_memory_levels(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.ci_power_info*, align 8
  %5 = alloca %struct.ci_dpm_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %11)
  store %struct.ci_power_info* %12, %struct.ci_power_info** %4, align 8
  %13 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %14 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %13, i32 0, i32 4
  store %struct.ci_dpm_table* %14, %struct.ci_dpm_table** %5, align 8
  %15 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %16 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @SMU7_Discrete_DpmTable, align 4
  %19 = load i32, i32* @MemoryLevel, align 4
  %20 = call i64 @offsetof(i32 %18, i32 %19)
  %21 = add i64 %17, %20
  store i64 %21, i64* %6, align 8
  %22 = load i32, i32* @SMU7_MAX_LEVELS_MEMORY, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 20, %23
  store i64 %24, i64* %7, align 8
  %25 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %26 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %8, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @memset(%struct.TYPE_13__* %29, i32 0, i64 %30)
  store i64 0, i64* %9, align 8
  br label %32

32:                                               ; preds = %75, %1
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.ci_dpm_table*, %struct.ci_dpm_table** %5, align 8
  %35 = getelementptr inbounds %struct.ci_dpm_table, %struct.ci_dpm_table* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %33, %37
  br i1 %38, label %39, label %78

39:                                               ; preds = %32
  %40 = load %struct.ci_dpm_table*, %struct.ci_dpm_table** %5, align 8
  %41 = getelementptr inbounds %struct.ci_dpm_table, %struct.ci_dpm_table* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %179

52:                                               ; preds = %39
  %53 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %54 = load %struct.ci_dpm_table*, %struct.ci_dpm_table** %5, align 8
  %55 = getelementptr inbounds %struct.ci_dpm_table, %struct.ci_dpm_table* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %63 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i64 %66
  %68 = call i64 @ci_populate_single_memory_level(%struct.radeon_device* %53, i64 %61, %struct.TYPE_13__* %67)
  store i64 %68, i64* %10, align 8
  %69 = load i64, i64* %10, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %52
  %72 = load i64, i64* %10, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %2, align 4
  br label %179

74:                                               ; preds = %52
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %9, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %9, align 8
  br label %32

78:                                               ; preds = %32
  %79 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %80 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 4
  %85 = load %struct.ci_dpm_table*, %struct.ci_dpm_table** %5, align 8
  %86 = getelementptr inbounds %struct.ci_dpm_table, %struct.ci_dpm_table* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp uge i64 %88, 2
  br i1 %89, label %90, label %131

90:                                               ; preds = %78
  %91 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %92 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %91, i32 0, i32 0
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 26544
  br i1 %96, label %104, label %97

97:                                               ; preds = %90
  %98 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %99 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %98, i32 0, i32 0
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 26545
  br i1 %103, label %104, label %131

104:                                              ; preds = %97, %90
  %105 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %106 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %113 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i64 1
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 4
  store i32 %111, i32* %117, align 4
  %118 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %119 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %126 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i64 1
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 3
  store i32 %124, i32* %130, align 4
  br label %131

131:                                              ; preds = %104, %97, %78
  %132 = call i32 @cpu_to_be16(i32 31)
  %133 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %134 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 2
  store i32 %132, i32* %138, align 4
  %139 = load %struct.ci_dpm_table*, %struct.ci_dpm_table** %5, align 8
  %140 = getelementptr inbounds %struct.ci_dpm_table, %struct.ci_dpm_table* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %144 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  store i64 %142, i64* %145, align 8
  %146 = load %struct.ci_dpm_table*, %struct.ci_dpm_table** %5, align 8
  %147 = getelementptr inbounds %struct.ci_dpm_table, %struct.ci_dpm_table* %146, i32 0, i32 0
  %148 = call i32 @ci_get_dpm_level_enable_mask_value(%struct.TYPE_14__* %147)
  %149 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %150 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 0
  store i32 %148, i32* %151, align 8
  %152 = load i32, i32* @PPSMC_DISPLAY_WATERMARK_HIGH, align 4
  %153 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %154 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %155, align 8
  %157 = load %struct.ci_dpm_table*, %struct.ci_dpm_table** %5, align 8
  %158 = getelementptr inbounds %struct.ci_dpm_table, %struct.ci_dpm_table* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = sub i64 %160, 1
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 1
  store i32 %152, i32* %163, align 4
  %164 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %165 = load i64, i64* %6, align 8
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %167 = bitcast %struct.TYPE_13__* %166 to i64*
  %168 = load i64, i64* %7, align 8
  %169 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %170 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = call i64 @ci_copy_bytes_to_smc(%struct.radeon_device* %164, i64 %165, i64* %167, i64 %168, i32 %171)
  store i64 %172, i64* %10, align 8
  %173 = load i64, i64* %10, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %131
  %176 = load i64, i64* %10, align 8
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %2, align 4
  br label %179

178:                                              ; preds = %131
  store i32 0, i32* %2, align 4
  br label %179

179:                                              ; preds = %178, %175, %71, %49
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i64) #1

declare dso_local i64 @ci_populate_single_memory_level(%struct.radeon_device*, i64, %struct.TYPE_13__*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @ci_get_dpm_level_enable_mask_value(%struct.TYPE_14__*) #1

declare dso_local i64 @ci_copy_bytes_to_smc(%struct.radeon_device*, i64, i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
