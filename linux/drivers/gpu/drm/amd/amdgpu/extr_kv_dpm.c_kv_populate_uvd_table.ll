; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_populate_uvd_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_populate_uvd_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.amdgpu_uvd_clock_voltage_dependency_table }
%struct.amdgpu_uvd_clock_voltage_dependency_table = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.kv_power_info = type { i64, i32, i32, %struct.TYPE_10__*, i64, i64 }
%struct.TYPE_10__ = type { i8*, i8*, i8*, i8*, i32, i8*, i8* }
%struct.atom_clock_dividers = type { i32 }

@COMPUTE_ENGINE_PLL_PARAM = common dso_local global i32 0, align 4
@SMU7_Fusion_DpmTable = common dso_local global i32 0, align 4
@UvdLevelCount = common dso_local global i32 0, align 4
@UVDInterval = common dso_local global i32 0, align 4
@UvdLevel = common dso_local global i32 0, align 4
@SMU7_MAX_LEVELS_UVD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @kv_populate_uvd_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kv_populate_uvd_table(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.kv_power_info*, align 8
  %5 = alloca %struct.amdgpu_uvd_clock_voltage_dependency_table*, align 8
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
  store %struct.amdgpu_uvd_clock_voltage_dependency_table* %15, %struct.amdgpu_uvd_clock_voltage_dependency_table** %5, align 8
  %16 = load %struct.amdgpu_uvd_clock_voltage_dependency_table*, %struct.amdgpu_uvd_clock_voltage_dependency_table** %5, align 8
  %17 = icmp eq %struct.amdgpu_uvd_clock_voltage_dependency_table* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.amdgpu_uvd_clock_voltage_dependency_table*, %struct.amdgpu_uvd_clock_voltage_dependency_table** %5, align 8
  %20 = getelementptr inbounds %struct.amdgpu_uvd_clock_voltage_dependency_table, %struct.amdgpu_uvd_clock_voltage_dependency_table* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %1
  store i32 0, i32* %2, align 4
  br label %248

24:                                               ; preds = %18
  %25 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %26 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %25, i32 0, i32 5
  store i64 0, i64* %26, align 8
  store i64 0, i64* %8, align 8
  br label %27

27:                                               ; preds = %182, %24
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.amdgpu_uvd_clock_voltage_dependency_table*, %struct.amdgpu_uvd_clock_voltage_dependency_table** %5, align 8
  %30 = getelementptr inbounds %struct.amdgpu_uvd_clock_voltage_dependency_table, %struct.amdgpu_uvd_clock_voltage_dependency_table* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %185

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
  %42 = load %struct.amdgpu_uvd_clock_voltage_dependency_table*, %struct.amdgpu_uvd_clock_voltage_dependency_table** %5, align 8
  %43 = getelementptr inbounds %struct.amdgpu_uvd_clock_voltage_dependency_table, %struct.amdgpu_uvd_clock_voltage_dependency_table* %42, i32 0, i32 1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %41, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %185

51:                                               ; preds = %38, %33
  %52 = load %struct.amdgpu_uvd_clock_voltage_dependency_table*, %struct.amdgpu_uvd_clock_voltage_dependency_table** %5, align 8
  %53 = getelementptr inbounds %struct.amdgpu_uvd_clock_voltage_dependency_table, %struct.amdgpu_uvd_clock_voltage_dependency_table* %52, i32 0, i32 1
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @cpu_to_be32(i32 %58)
  %60 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %61 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %60, i32 0, i32 3
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 6
  store i8* %59, i8** %65, align 8
  %66 = load %struct.amdgpu_uvd_clock_voltage_dependency_table*, %struct.amdgpu_uvd_clock_voltage_dependency_table** %5, align 8
  %67 = getelementptr inbounds %struct.amdgpu_uvd_clock_voltage_dependency_table, %struct.amdgpu_uvd_clock_voltage_dependency_table* %66, i32 0, i32 1
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i8* @cpu_to_be32(i32 %72)
  %74 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %75 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %74, i32 0, i32 3
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 5
  store i8* %73, i8** %79, align 8
  %80 = load %struct.amdgpu_uvd_clock_voltage_dependency_table*, %struct.amdgpu_uvd_clock_voltage_dependency_table** %5, align 8
  %81 = getelementptr inbounds %struct.amdgpu_uvd_clock_voltage_dependency_table, %struct.amdgpu_uvd_clock_voltage_dependency_table* %80, i32 0, i32 1
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @cpu_to_be16(i64 %86)
  %88 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %89 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %88, i32 0, i32 3
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = load i64, i64* %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 4
  store i32 %87, i32* %93, align 8
  %94 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %95 = load %struct.amdgpu_uvd_clock_voltage_dependency_table*, %struct.amdgpu_uvd_clock_voltage_dependency_table** %5, align 8
  %96 = getelementptr inbounds %struct.amdgpu_uvd_clock_voltage_dependency_table, %struct.amdgpu_uvd_clock_voltage_dependency_table* %95, i32 0, i32 1
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = load i64, i64* %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @kv_get_clk_bypass(%struct.amdgpu_device* %94, i32 %101)
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %106 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %105, i32 0, i32 3
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = load i64, i64* %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 3
  store i8* %104, i8** %110, align 8
  %111 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %112 = load %struct.amdgpu_uvd_clock_voltage_dependency_table*, %struct.amdgpu_uvd_clock_voltage_dependency_table** %5, align 8
  %113 = getelementptr inbounds %struct.amdgpu_uvd_clock_voltage_dependency_table, %struct.amdgpu_uvd_clock_voltage_dependency_table* %112, i32 0, i32 1
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = load i64, i64* %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @kv_get_clk_bypass(%struct.amdgpu_device* %111, i32 %118)
  %120 = sext i32 %119 to i64
  %121 = inttoptr i64 %120 to i8*
  %122 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %123 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %122, i32 0, i32 3
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = load i64, i64* %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 2
  store i8* %121, i8** %127, align 8
  %128 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %129 = load i32, i32* @COMPUTE_ENGINE_PLL_PARAM, align 4
  %130 = load %struct.amdgpu_uvd_clock_voltage_dependency_table*, %struct.amdgpu_uvd_clock_voltage_dependency_table** %5, align 8
  %131 = getelementptr inbounds %struct.amdgpu_uvd_clock_voltage_dependency_table, %struct.amdgpu_uvd_clock_voltage_dependency_table* %130, i32 0, i32 1
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = load i64, i64* %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @amdgpu_atombios_get_clock_dividers(%struct.amdgpu_device* %128, i32 %129, i32 %136, i32 0, %struct.atom_clock_dividers* %6)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %51
  %141 = load i32, i32* %7, align 4
  store i32 %141, i32* %2, align 4
  br label %248

142:                                              ; preds = %51
  %143 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %6, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = inttoptr i64 %145 to i8*
  %147 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %148 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %147, i32 0, i32 3
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = load i64, i64* %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  store i8* %146, i8** %152, align 8
  %153 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %154 = load i32, i32* @COMPUTE_ENGINE_PLL_PARAM, align 4
  %155 = load %struct.amdgpu_uvd_clock_voltage_dependency_table*, %struct.amdgpu_uvd_clock_voltage_dependency_table** %5, align 8
  %156 = getelementptr inbounds %struct.amdgpu_uvd_clock_voltage_dependency_table, %struct.amdgpu_uvd_clock_voltage_dependency_table* %155, i32 0, i32 1
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = load i64, i64* %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @amdgpu_atombios_get_clock_dividers(%struct.amdgpu_device* %153, i32 %154, i32 %161, i32 0, %struct.atom_clock_dividers* %6)
  store i32 %162, i32* %7, align 4
  %163 = load i32, i32* %7, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %142
  %166 = load i32, i32* %7, align 4
  store i32 %166, i32* %2, align 4
  br label %248

167:                                              ; preds = %142
  %168 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %6, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  %171 = inttoptr i64 %170 to i8*
  %172 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %173 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %172, i32 0, i32 3
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %173, align 8
  %175 = load i64, i64* %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  store i8* %171, i8** %177, align 8
  %178 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %179 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %178, i32 0, i32 5
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %180, 1
  store i64 %181, i64* %179, align 8
  br label %182

182:                                              ; preds = %167
  %183 = load i64, i64* %8, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %8, align 8
  br label %27

185:                                              ; preds = %50, %27
  %186 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %187 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %188 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %187, i32 0, i32 4
  %189 = load i64, i64* %188, align 8
  %190 = load i32, i32* @SMU7_Fusion_DpmTable, align 4
  %191 = load i32, i32* @UvdLevelCount, align 4
  %192 = call i64 @offsetof(i32 %190, i32 %191)
  %193 = add nsw i64 %189, %192
  %194 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %195 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %194, i32 0, i32 5
  %196 = bitcast i64* %195 to i8**
  %197 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %198 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @amdgpu_kv_copy_bytes_to_smc(%struct.amdgpu_device* %186, i64 %193, i8** %196, i32 8, i32 %199)
  store i32 %200, i32* %7, align 4
  %201 = load i32, i32* %7, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %185
  %204 = load i32, i32* %7, align 4
  store i32 %204, i32* %2, align 4
  br label %248

205:                                              ; preds = %185
  %206 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %207 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %206, i32 0, i32 1
  store i32 1, i32* %207, align 8
  %208 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %209 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %210 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %209, i32 0, i32 4
  %211 = load i64, i64* %210, align 8
  %212 = load i32, i32* @SMU7_Fusion_DpmTable, align 4
  %213 = load i32, i32* @UVDInterval, align 4
  %214 = call i64 @offsetof(i32 %212, i32 %213)
  %215 = add nsw i64 %211, %214
  %216 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %217 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %216, i32 0, i32 1
  %218 = bitcast i32* %217 to i8**
  %219 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %220 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @amdgpu_kv_copy_bytes_to_smc(%struct.amdgpu_device* %208, i64 %215, i8** %218, i32 8, i32 %221)
  store i32 %222, i32* %7, align 4
  %223 = load i32, i32* %7, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %205
  %226 = load i32, i32* %7, align 4
  store i32 %226, i32* %2, align 4
  br label %248

227:                                              ; preds = %205
  %228 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %229 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %230 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %229, i32 0, i32 4
  %231 = load i64, i64* %230, align 8
  %232 = load i32, i32* @SMU7_Fusion_DpmTable, align 4
  %233 = load i32, i32* @UvdLevel, align 4
  %234 = call i64 @offsetof(i32 %232, i32 %233)
  %235 = add nsw i64 %231, %234
  %236 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %237 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %236, i32 0, i32 3
  %238 = bitcast %struct.TYPE_10__** %237 to i8**
  %239 = load i32, i32* @SMU7_MAX_LEVELS_UVD, align 4
  %240 = sext i32 %239 to i64
  %241 = mul i64 4, %240
  %242 = trunc i64 %241 to i32
  %243 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %244 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @amdgpu_kv_copy_bytes_to_smc(%struct.amdgpu_device* %228, i64 %235, i8** %238, i32 %242, i32 %245)
  store i32 %246, i32* %7, align 4
  %247 = load i32, i32* %7, align 4
  store i32 %247, i32* %2, align 4
  br label %248

248:                                              ; preds = %227, %225, %203, %165, %140, %23
  %249 = load i32, i32* %2, align 4
  ret i32 %249
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

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
