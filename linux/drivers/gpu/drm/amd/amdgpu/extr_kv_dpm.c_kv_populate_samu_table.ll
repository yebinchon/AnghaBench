; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_populate_samu_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_populate_samu_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.amdgpu_clock_voltage_dependency_table }
%struct.amdgpu_clock_voltage_dependency_table = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32 }
%struct.kv_power_info = type { i64, i32, i32, %struct.TYPE_10__*, i64, i64 }
%struct.TYPE_10__ = type { i8*, i8*, i32, i32 }
%struct.atom_clock_dividers = type { i32 }

@COMPUTE_ENGINE_PLL_PARAM = common dso_local global i32 0, align 4
@SMU7_Fusion_DpmTable = common dso_local global i32 0, align 4
@SamuLevelCount = common dso_local global i32 0, align 4
@SAMUInterval = common dso_local global i32 0, align 4
@SamuLevel = common dso_local global i32 0, align 4
@SMU7_MAX_LEVELS_SAMU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @kv_populate_samu_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kv_populate_samu_table(%struct.amdgpu_device* %0) #0 {
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
  br label %197

24:                                               ; preds = %18
  %25 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %26 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %25, i32 0, i32 5
  store i64 0, i64* %26, align 8
  store i64 0, i64* %8, align 8
  br label %27

27:                                               ; preds = %126, %24
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %5, align 8
  %30 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %129

33:                                               ; preds = %27
  %34 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %35 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %40 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %5, align 8
  %43 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %42, i32 0, i32 1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %41, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %129

51:                                               ; preds = %38, %33
  %52 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %5, align 8
  %53 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %52, i32 0, i32 1
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @cpu_to_be32(i32 %58)
  %60 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %61 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %60, i32 0, i32 3
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 3
  store i32 %59, i32* %65, align 4
  %66 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %5, align 8
  %67 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %66, i32 0, i32 1
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @cpu_to_be16(i64 %72)
  %74 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %75 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %74, i32 0, i32 3
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 2
  store i32 %73, i32* %79, align 8
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %81 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %5, align 8
  %82 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %81, i32 0, i32 1
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @kv_get_clk_bypass(%struct.amdgpu_device* %80, i32 %87)
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %92 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %91, i32 0, i32 3
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = load i64, i64* %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  store i8* %90, i8** %96, align 8
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %98 = load i32, i32* @COMPUTE_ENGINE_PLL_PARAM, align 4
  %99 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %5, align 8
  %100 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %99, i32 0, i32 1
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = load i64, i64* %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @amdgpu_atombios_get_clock_dividers(%struct.amdgpu_device* %97, i32 %98, i32 %105, i32 0, %struct.atom_clock_dividers* %6)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %51
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %2, align 4
  br label %197

111:                                              ; preds = %51
  %112 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %6, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to i8*
  %116 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %117 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %116, i32 0, i32 3
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = load i64, i64* %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  store i8* %115, i8** %121, align 8
  %122 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %123 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %123, align 8
  br label %126

126:                                              ; preds = %111
  %127 = load i64, i64* %8, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %8, align 8
  br label %27

129:                                              ; preds = %50, %27
  %130 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %131 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %132 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* @SMU7_Fusion_DpmTable, align 4
  %135 = load i32, i32* @SamuLevelCount, align 4
  %136 = call i64 @offsetof(i32 %134, i32 %135)
  %137 = add nsw i64 %133, %136
  %138 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %139 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %138, i32 0, i32 5
  %140 = bitcast i64* %139 to i8**
  %141 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %142 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @amdgpu_kv_copy_bytes_to_smc(%struct.amdgpu_device* %130, i64 %137, i8** %140, i32 8, i32 %143)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %129
  %148 = load i32, i32* %7, align 4
  store i32 %148, i32* %2, align 4
  br label %197

149:                                              ; preds = %129
  %150 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %151 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %150, i32 0, i32 1
  store i32 1, i32* %151, align 8
  %152 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %153 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %154 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* @SMU7_Fusion_DpmTable, align 4
  %157 = load i32, i32* @SAMUInterval, align 4
  %158 = call i64 @offsetof(i32 %156, i32 %157)
  %159 = add nsw i64 %155, %158
  %160 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %161 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %160, i32 0, i32 1
  %162 = bitcast i32* %161 to i8**
  %163 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %164 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @amdgpu_kv_copy_bytes_to_smc(%struct.amdgpu_device* %152, i64 %159, i8** %162, i32 8, i32 %165)
  store i32 %166, i32* %7, align 4
  %167 = load i32, i32* %7, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %149
  %170 = load i32, i32* %7, align 4
  store i32 %170, i32* %2, align 4
  br label %197

171:                                              ; preds = %149
  %172 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %173 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %174 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = load i32, i32* @SMU7_Fusion_DpmTable, align 4
  %177 = load i32, i32* @SamuLevel, align 4
  %178 = call i64 @offsetof(i32 %176, i32 %177)
  %179 = add nsw i64 %175, %178
  %180 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %181 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %180, i32 0, i32 3
  %182 = bitcast %struct.TYPE_10__** %181 to i8**
  %183 = load i32, i32* @SMU7_MAX_LEVELS_SAMU, align 4
  %184 = sext i32 %183 to i64
  %185 = mul i64 4, %184
  %186 = trunc i64 %185 to i32
  %187 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %188 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @amdgpu_kv_copy_bytes_to_smc(%struct.amdgpu_device* %172, i64 %179, i8** %182, i32 %186, i32 %189)
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* %7, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %171
  %194 = load i32, i32* %7, align 4
  store i32 %194, i32* %2, align 4
  br label %197

195:                                              ; preds = %171
  %196 = load i32, i32* %7, align 4
  store i32 %196, i32* %2, align 4
  br label %197

197:                                              ; preds = %195, %193, %169, %147, %109, %23
  %198 = load i32, i32* %2, align 4
  ret i32 %198
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i64) #1

declare dso_local i32 @kv_get_clk_bypass(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_atombios_get_clock_dividers(%struct.amdgpu_device*, i32, i32, i32, %struct.atom_clock_dividers*) #1

declare dso_local i32 @amdgpu_kv_copy_bytes_to_smc(%struct.amdgpu_device*, i64, i8**, i32, i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
