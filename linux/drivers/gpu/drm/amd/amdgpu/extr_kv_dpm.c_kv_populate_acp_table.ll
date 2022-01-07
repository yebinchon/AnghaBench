; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_populate_acp_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_populate_acp_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.amdgpu_clock_voltage_dependency_table }
%struct.amdgpu_clock_voltage_dependency_table = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.kv_power_info = type { i32, i32, %struct.TYPE_10__*, i64, i64 }
%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.atom_clock_dividers = type { i32 }

@COMPUTE_ENGINE_PLL_PARAM = common dso_local global i32 0, align 4
@SMU7_Fusion_DpmTable = common dso_local global i32 0, align 4
@AcpLevelCount = common dso_local global i32 0, align 4
@ACPInterval = common dso_local global i32 0, align 4
@AcpLevel = common dso_local global i32 0, align 4
@SMU7_MAX_LEVELS_ACP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @kv_populate_acp_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kv_populate_acp_table(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.kv_power_info*, align 8
  %5 = alloca %struct.amdgpu_clock_voltage_dependency_table*, align 8
  %6 = alloca %struct.atom_clock_dividers, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %10 = call %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device* %9)
  store %struct.kv_power_info* %10, %struct.kv_power_info** %4, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.amdgpu_clock_voltage_dependency_table* %15, %struct.amdgpu_clock_voltage_dependency_table** %5, align 8
  %16 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %5, align 8
  %17 = icmp eq %struct.amdgpu_clock_voltage_dependency_table* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %5, align 8
  %20 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %1
  store i32 0, i32* %2, align 4
  br label %160

24:                                               ; preds = %18
  %25 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %26 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  store i64 0, i64* %8, align 8
  br label %27

27:                                               ; preds = %90, %24
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %5, align 8
  %30 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %93

33:                                               ; preds = %27
  %34 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %5, align 8
  %35 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %34, i32 0, i32 1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cpu_to_be32(i32 %40)
  %42 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %43 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %42, i32 0, i32 2
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  store i32 %41, i32* %47, align 4
  %48 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %5, align 8
  %49 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %48, i32 0, i32 1
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @cpu_to_be16(i32 %54)
  %56 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %57 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %56, i32 0, i32 2
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  store i32 %55, i32* %61, align 8
  %62 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %63 = load i32, i32* @COMPUTE_ENGINE_PLL_PARAM, align 4
  %64 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %5, align 8
  %65 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %64, i32 0, i32 1
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = load i64, i64* %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @amdgpu_atombios_get_clock_dividers(%struct.amdgpu_device* %62, i32 %63, i32 %70, i32 0, %struct.atom_clock_dividers* %6)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %33
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %2, align 4
  br label %160

76:                                               ; preds = %33
  %77 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %6, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %81 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %80, i32 0, i32 2
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  store i64 %79, i64* %85, align 8
  %86 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %87 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %87, align 8
  br label %90

90:                                               ; preds = %76
  %91 = load i64, i64* %8, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %8, align 8
  br label %27

93:                                               ; preds = %27
  %94 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %95 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %96 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* @SMU7_Fusion_DpmTable, align 4
  %99 = load i32, i32* @AcpLevelCount, align 4
  %100 = call i64 @offsetof(i32 %98, i32 %99)
  %101 = add nsw i64 %97, %100
  %102 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %103 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %102, i32 0, i32 4
  %104 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %105 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @amdgpu_kv_copy_bytes_to_smc(%struct.amdgpu_device* %94, i64 %101, i64* %103, i32 8, i32 %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %93
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %2, align 4
  br label %160

112:                                              ; preds = %93
  %113 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %114 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  %115 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %116 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %117 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* @SMU7_Fusion_DpmTable, align 4
  %120 = load i32, i32* @ACPInterval, align 4
  %121 = call i64 @offsetof(i32 %119, i32 %120)
  %122 = add nsw i64 %118, %121
  %123 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %124 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %123, i32 0, i32 0
  %125 = bitcast i32* %124 to i64*
  %126 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %127 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @amdgpu_kv_copy_bytes_to_smc(%struct.amdgpu_device* %115, i64 %122, i64* %125, i32 8, i32 %128)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %112
  %133 = load i32, i32* %7, align 4
  store i32 %133, i32* %2, align 4
  br label %160

134:                                              ; preds = %112
  %135 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %136 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %137 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load i32, i32* @SMU7_Fusion_DpmTable, align 4
  %140 = load i32, i32* @AcpLevel, align 4
  %141 = call i64 @offsetof(i32 %139, i32 %140)
  %142 = add nsw i64 %138, %141
  %143 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %144 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %143, i32 0, i32 2
  %145 = bitcast %struct.TYPE_10__** %144 to i64*
  %146 = load i32, i32* @SMU7_MAX_LEVELS_ACP, align 4
  %147 = sext i32 %146 to i64
  %148 = mul i64 4, %147
  %149 = trunc i64 %148 to i32
  %150 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %151 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @amdgpu_kv_copy_bytes_to_smc(%struct.amdgpu_device* %135, i64 %142, i64* %145, i32 %149, i32 %152)
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %134
  %157 = load i32, i32* %7, align 4
  store i32 %157, i32* %2, align 4
  br label %160

158:                                              ; preds = %134
  %159 = load i32, i32* %7, align 4
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %158, %156, %132, %110, %74, %23
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @amdgpu_atombios_get_clock_dividers(%struct.amdgpu_device*, i32, i32, i32, %struct.atom_clock_dividers*) #1

declare dso_local i32 @amdgpu_kv_copy_bytes_to_smc(%struct.amdgpu_device*, i64, i64*, i32, i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
