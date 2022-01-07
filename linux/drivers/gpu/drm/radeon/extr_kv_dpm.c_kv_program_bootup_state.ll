; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_program_bootup_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_program_bootup_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.radeon_clock_voltage_dependency_table }
%struct.radeon_clock_voltage_dependency_table = type { %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.kv_power_info = type { i32, i8*, %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_12__ = type { %struct.sumo_sclk_voltage_mapping_table }
%struct.sumo_sclk_voltage_mapping_table = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @kv_program_bootup_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kv_program_bootup_state(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.kv_power_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.radeon_clock_voltage_dependency_table*, align 8
  %7 = alloca %struct.sumo_sclk_voltage_mapping_table*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = call %struct.kv_power_info* @kv_get_pi(%struct.radeon_device* %8)
  store %struct.kv_power_info* %9, %struct.kv_power_info** %4, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store %struct.radeon_clock_voltage_dependency_table* %14, %struct.radeon_clock_voltage_dependency_table** %6, align 8
  %15 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %6, align 8
  %16 = icmp ne %struct.radeon_clock_voltage_dependency_table* %15, null
  br i1 %16, label %17, label %57

17:                                               ; preds = %1
  %18 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %6, align 8
  %19 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %57

22:                                               ; preds = %17
  %23 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %24 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %5, align 8
  br label %28

28:                                               ; preds = %46, %22
  %29 = load i64, i64* %5, align 8
  %30 = icmp ugt i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %28
  %32 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %6, align 8
  %33 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %32, i32 0, i32 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %40 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %38, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %49

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %5, align 8
  %48 = add i64 %47, -1
  store i64 %48, i64* %5, align 8
  br label %28

49:                                               ; preds = %44, %28
  %50 = load i64, i64* %5, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %53 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @kv_dpm_power_level_enable(%struct.radeon_device* %54, i64 %55, i32 1)
  br label %103

57:                                               ; preds = %17, %1
  %58 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %59 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  store %struct.sumo_sclk_voltage_mapping_table* %60, %struct.sumo_sclk_voltage_mapping_table** %7, align 8
  %61 = load %struct.sumo_sclk_voltage_mapping_table*, %struct.sumo_sclk_voltage_mapping_table** %7, align 8
  %62 = getelementptr inbounds %struct.sumo_sclk_voltage_mapping_table, %struct.sumo_sclk_voltage_mapping_table* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %104

68:                                               ; preds = %57
  %69 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %70 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %5, align 8
  br label %74

74:                                               ; preds = %92, %68
  %75 = load i64, i64* %5, align 8
  %76 = icmp ugt i64 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %74
  %78 = load %struct.sumo_sclk_voltage_mapping_table*, %struct.sumo_sclk_voltage_mapping_table** %7, align 8
  %79 = getelementptr inbounds %struct.sumo_sclk_voltage_mapping_table, %struct.sumo_sclk_voltage_mapping_table* %78, i32 0, i32 1
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  %81 = load i64, i64* %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %86 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %84, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %77
  br label %95

91:                                               ; preds = %77
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %5, align 8
  %94 = add i64 %93, -1
  store i64 %94, i64* %5, align 8
  br label %74

95:                                               ; preds = %90, %74
  %96 = load i64, i64* %5, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %99 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %98, i32 0, i32 1
  store i8* %97, i8** %99, align 8
  %100 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %101 = load i64, i64* %5, align 8
  %102 = call i32 @kv_dpm_power_level_enable(%struct.radeon_device* %100, i64 %101, i32 1)
  br label %103

103:                                              ; preds = %95, %49
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %103, %65
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @kv_dpm_power_level_enable(%struct.radeon_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
