; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_init_graphics_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_init_graphics_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.amdgpu_clock_voltage_dependency_table }
%struct.amdgpu_clock_voltage_dependency_table = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.kv_power_info = type { i64, i64, i32*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.sumo_sclk_voltage_mapping_table, i32 }
%struct.sumo_sclk_voltage_mapping_table = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32 }

@SMU7_MAX_LEVELS_GRAPHICS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @kv_init_graphics_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kv_init_graphics_levels(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca %struct.kv_power_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.amdgpu_clock_voltage_dependency_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sumo_sclk_voltage_mapping_table*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %9 = call %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device* %8)
  store %struct.kv_power_info* %9, %struct.kv_power_info** %3, align 8
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store %struct.amdgpu_clock_voltage_dependency_table* %14, %struct.amdgpu_clock_voltage_dependency_table** %5, align 8
  %15 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %5, align 8
  %16 = icmp ne %struct.amdgpu_clock_voltage_dependency_table* %15, null
  br i1 %16, label %17, label %98

17:                                               ; preds = %1
  %18 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %5, align 8
  %19 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %98

22:                                               ; preds = %17
  %23 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %24 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  store i64 0, i64* %4, align 8
  br label %25

25:                                               ; preds = %94, %22
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %5, align 8
  %28 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %26, %29
  br i1 %30, label %31, label %97

31:                                               ; preds = %25
  %32 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %33 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %38 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %41 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %5, align 8
  %42 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %41, i32 0, i32 1
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = load i64, i64* %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @kv_convert_8bit_index_to_voltage(%struct.amdgpu_device* %40, i32 %47)
  %49 = icmp slt i64 %39, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  br label %97

51:                                               ; preds = %36, %31
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %53 = load i64, i64* %4, align 8
  %54 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %5, align 8
  %55 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %54, i32 0, i32 1
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = load i64, i64* %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @kv_set_divider_value(%struct.amdgpu_device* %52, i64 %53, i32 %60)
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %63 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %64 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %5, align 8
  %67 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %66, i32 0, i32 1
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = load i64, i64* %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @kv_convert_vid7_to_vid2(%struct.amdgpu_device* %62, i32* %65, i32 %72)
  store i64 %73, i64* %6, align 8
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @kv_set_vid(%struct.amdgpu_device* %74, i64 %75, i64 %76)
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %79 = load i64, i64* %4, align 8
  %80 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %81 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* %4, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @kv_set_at(%struct.amdgpu_device* %78, i64 %79, i32 %85)
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %88 = load i64, i64* %4, align 8
  %89 = call i32 @kv_dpm_power_level_enabled_for_throttle(%struct.amdgpu_device* %87, i64 %88, i32 1)
  %90 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %91 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %91, align 8
  br label %94

94:                                               ; preds = %51
  %95 = load i64, i64* %4, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %4, align 8
  br label %25

97:                                               ; preds = %50, %25
  br label %171

98:                                               ; preds = %17, %1
  %99 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %100 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  store %struct.sumo_sclk_voltage_mapping_table* %101, %struct.sumo_sclk_voltage_mapping_table** %7, align 8
  %102 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %103 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %102, i32 0, i32 1
  store i64 0, i64* %103, align 8
  store i64 0, i64* %4, align 8
  br label %104

104:                                              ; preds = %167, %98
  %105 = load i64, i64* %4, align 8
  %106 = load %struct.sumo_sclk_voltage_mapping_table*, %struct.sumo_sclk_voltage_mapping_table** %7, align 8
  %107 = getelementptr inbounds %struct.sumo_sclk_voltage_mapping_table, %struct.sumo_sclk_voltage_mapping_table* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ult i64 %105, %108
  br i1 %109, label %110, label %170

110:                                              ; preds = %104
  %111 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %112 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %130

115:                                              ; preds = %110
  %116 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %117 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %120 = load %struct.sumo_sclk_voltage_mapping_table*, %struct.sumo_sclk_voltage_mapping_table** %7, align 8
  %121 = getelementptr inbounds %struct.sumo_sclk_voltage_mapping_table, %struct.sumo_sclk_voltage_mapping_table* %120, i32 0, i32 1
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %121, align 8
  %123 = load i64, i64* %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i64 @kv_convert_2bit_index_to_voltage(%struct.amdgpu_device* %119, i64 %126)
  %128 = icmp slt i64 %118, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %115
  br label %170

130:                                              ; preds = %115, %110
  %131 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %132 = load i64, i64* %4, align 8
  %133 = load %struct.sumo_sclk_voltage_mapping_table*, %struct.sumo_sclk_voltage_mapping_table** %7, align 8
  %134 = getelementptr inbounds %struct.sumo_sclk_voltage_mapping_table, %struct.sumo_sclk_voltage_mapping_table* %133, i32 0, i32 1
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = load i64, i64* %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @kv_set_divider_value(%struct.amdgpu_device* %131, i64 %132, i32 %139)
  %141 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %142 = load i64, i64* %4, align 8
  %143 = load %struct.sumo_sclk_voltage_mapping_table*, %struct.sumo_sclk_voltage_mapping_table** %7, align 8
  %144 = getelementptr inbounds %struct.sumo_sclk_voltage_mapping_table, %struct.sumo_sclk_voltage_mapping_table* %143, i32 0, i32 1
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = load i64, i64* %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @kv_set_vid(%struct.amdgpu_device* %141, i64 %142, i64 %149)
  %151 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %152 = load i64, i64* %4, align 8
  %153 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %154 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* %4, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @kv_set_at(%struct.amdgpu_device* %151, i64 %152, i32 %158)
  %160 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %161 = load i64, i64* %4, align 8
  %162 = call i32 @kv_dpm_power_level_enabled_for_throttle(%struct.amdgpu_device* %160, i64 %161, i32 1)
  %163 = load %struct.kv_power_info*, %struct.kv_power_info** %3, align 8
  %164 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %165, 1
  store i64 %166, i64* %164, align 8
  br label %167

167:                                              ; preds = %130
  %168 = load i64, i64* %4, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %4, align 8
  br label %104

170:                                              ; preds = %129, %104
  br label %171

171:                                              ; preds = %170, %97
  store i64 0, i64* %4, align 8
  br label %172

172:                                              ; preds = %180, %171
  %173 = load i64, i64* %4, align 8
  %174 = load i64, i64* @SMU7_MAX_LEVELS_GRAPHICS, align 8
  %175 = icmp ult i64 %173, %174
  br i1 %175, label %176, label %183

176:                                              ; preds = %172
  %177 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %178 = load i64, i64* %4, align 8
  %179 = call i32 @kv_dpm_power_level_enable(%struct.amdgpu_device* %177, i64 %178, i32 0)
  br label %180

180:                                              ; preds = %176
  %181 = load i64, i64* %4, align 8
  %182 = add i64 %181, 1
  store i64 %182, i64* %4, align 8
  br label %172

183:                                              ; preds = %172
  ret void
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device*) #1

declare dso_local i64 @kv_convert_8bit_index_to_voltage(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @kv_set_divider_value(%struct.amdgpu_device*, i64, i32) #1

declare dso_local i64 @kv_convert_vid7_to_vid2(%struct.amdgpu_device*, i32*, i32) #1

declare dso_local i32 @kv_set_vid(%struct.amdgpu_device*, i64, i64) #1

declare dso_local i32 @kv_set_at(%struct.amdgpu_device*, i64, i32) #1

declare dso_local i32 @kv_dpm_power_level_enabled_for_throttle(%struct.amdgpu_device*, i64, i32) #1

declare dso_local i64 @kv_convert_2bit_index_to_voltage(%struct.amdgpu_device*, i64) #1

declare dso_local i32 @kv_dpm_power_level_enable(%struct.amdgpu_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
