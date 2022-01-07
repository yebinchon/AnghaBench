; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_get_high_voltage_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_get_high_voltage_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.radeon_clock_voltage_dependency_table }
%struct.radeon_clock_voltage_dependency_table = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.kv_power_info = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.sumo_sclk_voltage_mapping_table }
%struct.sumo_sclk_voltage_mapping_table = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32*)* @kv_get_high_voltage_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kv_get_high_voltage_limit(%struct.radeon_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.kv_power_info*, align 8
  %7 = alloca %struct.radeon_clock_voltage_dependency_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sumo_sclk_voltage_mapping_table*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %11 = call %struct.kv_power_info* @kv_get_pi(%struct.radeon_device* %10)
  store %struct.kv_power_info* %11, %struct.kv_power_info** %6, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store %struct.radeon_clock_voltage_dependency_table* %16, %struct.radeon_clock_voltage_dependency_table** %7, align 8
  %17 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %7, align 8
  %18 = icmp ne %struct.radeon_clock_voltage_dependency_table* %17, null
  br i1 %18, label %19, label %60

19:                                               ; preds = %2
  %20 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %7, align 8
  %21 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %60

24:                                               ; preds = %19
  %25 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %7, align 8
  %26 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %56, %24
  %30 = load i32, i32* %8, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %29
  %33 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %34 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %32
  %38 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %39 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %7, align 8
  %40 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %39, i32 0, i32 1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @kv_convert_8bit_index_to_voltage(%struct.radeon_device* %38, i32 %46)
  %48 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %49 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sle i64 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %37
  %53 = load i32, i32* %8, align 4
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  store i32 0, i32* %3, align 4
  br label %101

55:                                               ; preds = %37, %32
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %8, align 4
  br label %29

59:                                               ; preds = %29
  br label %99

60:                                               ; preds = %19, %2
  %61 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %62 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  store %struct.sumo_sclk_voltage_mapping_table* %63, %struct.sumo_sclk_voltage_mapping_table** %9, align 8
  %64 = load %struct.sumo_sclk_voltage_mapping_table*, %struct.sumo_sclk_voltage_mapping_table** %9, align 8
  %65 = getelementptr inbounds %struct.sumo_sclk_voltage_mapping_table, %struct.sumo_sclk_voltage_mapping_table* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %95, %60
  %69 = load i32, i32* %8, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %68
  %72 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %73 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %71
  %77 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %78 = load %struct.sumo_sclk_voltage_mapping_table*, %struct.sumo_sclk_voltage_mapping_table** %9, align 8
  %79 = getelementptr inbounds %struct.sumo_sclk_voltage_mapping_table, %struct.sumo_sclk_voltage_mapping_table* %78, i32 0, i32 1
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @kv_convert_2bit_index_to_voltage(%struct.radeon_device* %77, i32 %85)
  %87 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %88 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp sle i64 %86, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %76
  %92 = load i32, i32* %8, align 4
  %93 = load i32*, i32** %5, align 8
  store i32 %92, i32* %93, align 4
  store i32 0, i32* %3, align 4
  br label %101

94:                                               ; preds = %76, %71
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %8, align 4
  br label %68

98:                                               ; preds = %68
  br label %99

99:                                               ; preds = %98, %59
  %100 = load i32*, i32** %5, align 8
  store i32 0, i32* %100, align 4
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %99, %91, %52
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.radeon_device*) #1

declare dso_local i64 @kv_convert_8bit_index_to_voltage(%struct.radeon_device*, i32) #1

declare dso_local i64 @kv_convert_2bit_index_to_voltage(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
