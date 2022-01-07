; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_setup_default_dpm_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_setup_default_dpm_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table, %struct.radeon_cac_leakage_table, %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table }
%struct.radeon_cac_leakage_table = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.radeon_clock_voltage_dependency_table = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64 }
%struct.ci_power_info = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_16__, %struct.TYPE_16__, %struct.TYPE_16__, %struct.TYPE_16__, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SMU7_MAX_LEVELS_GRAPHICS = common dso_local global i32 0, align 4
@SMU7_MAX_LEVELS_MEMORY = common dso_local global i32 0, align 4
@SMU7_MAX_LEVELS_VDDC = common dso_local global i32 0, align 4
@SMU7_MAX_LEVELS_VDDCI = common dso_local global i32 0, align 4
@SMU7_MAX_LEVELS_MVDD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @ci_setup_default_dpm_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_setup_default_dpm_tables(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.ci_power_info*, align 8
  %5 = alloca %struct.radeon_clock_voltage_dependency_table*, align 8
  %6 = alloca %struct.radeon_clock_voltage_dependency_table*, align 8
  %7 = alloca %struct.radeon_cac_leakage_table*, align 8
  %8 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %9)
  store %struct.ci_power_info* %10, %struct.ci_power_info** %4, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 4
  store %struct.radeon_clock_voltage_dependency_table* %15, %struct.radeon_clock_voltage_dependency_table** %5, align 8
  %16 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 3
  store %struct.radeon_clock_voltage_dependency_table* %20, %struct.radeon_clock_voltage_dependency_table** %6, align 8
  %21 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 2
  store %struct.radeon_cac_leakage_table* %25, %struct.radeon_cac_leakage_table** %7, align 8
  %26 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %5, align 8
  %27 = icmp eq %struct.radeon_clock_voltage_dependency_table* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %419

31:                                               ; preds = %1
  %32 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %5, align 8
  %33 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %419

39:                                               ; preds = %31
  %40 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %6, align 8
  %41 = icmp eq %struct.radeon_clock_voltage_dependency_table* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %419

45:                                               ; preds = %39
  %46 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %6, align 8
  %47 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %419

53:                                               ; preds = %45
  %54 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %55 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %54, i32 0, i32 0
  %56 = call i32 @memset(%struct.TYPE_15__* %55, i32 0, i32 4)
  %57 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %58 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %59 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 4
  %61 = load i32, i32* @SMU7_MAX_LEVELS_GRAPHICS, align 4
  %62 = call i32 @ci_reset_single_dpm_table(%struct.radeon_device* %57, %struct.TYPE_16__* %60, i32 %61)
  %63 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %64 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %65 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 3
  %67 = load i32, i32* @SMU7_MAX_LEVELS_MEMORY, align 4
  %68 = call i32 @ci_reset_single_dpm_table(%struct.radeon_device* %63, %struct.TYPE_16__* %66, i32 %67)
  %69 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %70 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %71 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 2
  %73 = load i32, i32* @SMU7_MAX_LEVELS_VDDC, align 4
  %74 = call i32 @ci_reset_single_dpm_table(%struct.radeon_device* %69, %struct.TYPE_16__* %72, i32 %73)
  %75 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %76 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %77 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load i32, i32* @SMU7_MAX_LEVELS_VDDCI, align 4
  %80 = call i32 @ci_reset_single_dpm_table(%struct.radeon_device* %75, %struct.TYPE_16__* %78, i32 %79)
  %81 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %82 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %83 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i32, i32* @SMU7_MAX_LEVELS_MVDD, align 4
  %86 = call i32 @ci_reset_single_dpm_table(%struct.radeon_device* %81, %struct.TYPE_16__* %84, i32 %85)
  %87 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %88 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  store i64 0, i64* %8, align 8
  br label %91

91:                                               ; preds = %167, %53
  %92 = load i64, i64* %8, align 8
  %93 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %5, align 8
  %94 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = icmp ult i64 %92, %96
  br i1 %97, label %98, label %170

98:                                               ; preds = %91
  %99 = load i64, i64* %8, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %124, label %101

101:                                              ; preds = %98
  %102 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %103 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %105, align 8
  %107 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %108 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = sub i64 %111, 1
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %5, align 8
  %117 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %116, i32 0, i32 1
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %117, align 8
  %119 = load i64, i64* %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %115, %122
  br i1 %123, label %124, label %166

124:                                              ; preds = %101, %98
  %125 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %5, align 8
  %126 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %125, i32 0, i32 1
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %126, align 8
  %128 = load i64, i64* %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %133 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  %137 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %138 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  store i64 %131, i64* %143, align 8
  %144 = load i64, i64* %8, align 8
  %145 = icmp eq i64 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i32 1, i32 0
  %148 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %149 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %151, align 8
  %153 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %154 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  store i32 %147, i32* %159, align 8
  %160 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %161 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %163, align 8
  br label %166

166:                                              ; preds = %124, %101
  br label %167

167:                                              ; preds = %166
  %168 = load i64, i64* %8, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %8, align 8
  br label %91

170:                                              ; preds = %91
  %171 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %172 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 0
  store i64 0, i64* %174, align 8
  store i64 0, i64* %8, align 8
  br label %175

175:                                              ; preds = %251, %170
  %176 = load i64, i64* %8, align 8
  %177 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %6, align 8
  %178 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = icmp ult i64 %176, %180
  br i1 %181, label %182, label %254

182:                                              ; preds = %175
  %183 = load i64, i64* %8, align 8
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %208, label %185

185:                                              ; preds = %182
  %186 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %187 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %189, align 8
  %191 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %192 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = sub i64 %195, 1
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %6, align 8
  %201 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %200, i32 0, i32 1
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %201, align 8
  %203 = load i64, i64* %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %199, %206
  br i1 %207, label %208, label %250

208:                                              ; preds = %185, %182
  %209 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %6, align 8
  %210 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %209, i32 0, i32 1
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %210, align 8
  %212 = load i64, i64* %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %217 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %219, align 8
  %221 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %222 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 0
  store i64 %215, i64* %227, align 8
  %228 = load i64, i64* %8, align 8
  %229 = icmp eq i64 %228, 0
  %230 = zext i1 %229 to i64
  %231 = select i1 %229, i32 1, i32 0
  %232 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %233 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 3
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %235, align 8
  %237 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %238 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 3
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 1
  store i32 %231, i32* %243, align 8
  %244 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %245 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 3
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = add i64 %248, 1
  store i64 %249, i64* %247, align 8
  br label %250

250:                                              ; preds = %208, %185
  br label %251

251:                                              ; preds = %250
  %252 = load i64, i64* %8, align 8
  %253 = add i64 %252, 1
  store i64 %253, i64* %8, align 8
  br label %175

254:                                              ; preds = %175
  store i64 0, i64* %8, align 8
  br label %255

255:                                              ; preds = %301, %254
  %256 = load i64, i64* %8, align 8
  %257 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %5, align 8
  %258 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = sext i32 %259 to i64
  %261 = icmp ult i64 %256, %260
  br i1 %261, label %262, label %304

262:                                              ; preds = %255
  %263 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %5, align 8
  %264 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %263, i32 0, i32 1
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %264, align 8
  %266 = load i64, i64* %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %271 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 1
  %274 = load %struct.TYPE_14__*, %struct.TYPE_14__** %273, align 8
  %275 = load i64, i64* %8, align 8
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 0
  store i64 %269, i64* %277, align 8
  %278 = load %struct.radeon_cac_leakage_table*, %struct.radeon_cac_leakage_table** %7, align 8
  %279 = getelementptr inbounds %struct.radeon_cac_leakage_table, %struct.radeon_cac_leakage_table* %278, i32 0, i32 0
  %280 = load %struct.TYPE_9__*, %struct.TYPE_9__** %279, align 8
  %281 = load i64, i64* %8, align 8
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %280, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %286 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i32 0, i32 2
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 1
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %288, align 8
  %290 = load i64, i64* %8, align 8
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 2
  store i32 %284, i32* %292, align 4
  %293 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %294 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 1
  %297 = load %struct.TYPE_14__*, %struct.TYPE_14__** %296, align 8
  %298 = load i64, i64* %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %299, i32 0, i32 1
  store i32 1, i32* %300, align 8
  br label %301

301:                                              ; preds = %262
  %302 = load i64, i64* %8, align 8
  %303 = add i64 %302, 1
  store i64 %303, i64* %8, align 8
  br label %255

304:                                              ; preds = %255
  %305 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %5, align 8
  %306 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = sext i32 %307 to i64
  %309 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %310 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i32 0, i32 2
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 0
  store i64 %308, i64* %312, align 8
  %313 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %314 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 1
  store %struct.radeon_clock_voltage_dependency_table* %317, %struct.radeon_clock_voltage_dependency_table** %6, align 8
  %318 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %6, align 8
  %319 = icmp ne %struct.radeon_clock_voltage_dependency_table* %318, null
  br i1 %319, label %320, label %364

320:                                              ; preds = %304
  store i64 0, i64* %8, align 8
  br label %321

321:                                              ; preds = %352, %320
  %322 = load i64, i64* %8, align 8
  %323 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %6, align 8
  %324 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = sext i32 %325 to i64
  %327 = icmp ult i64 %322, %326
  br i1 %327, label %328, label %355

328:                                              ; preds = %321
  %329 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %6, align 8
  %330 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %329, i32 0, i32 1
  %331 = load %struct.TYPE_13__*, %struct.TYPE_13__** %330, align 8
  %332 = load i64, i64* %8, align 8
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %331, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %333, i32 0, i32 1
  %335 = load i64, i64* %334, align 8
  %336 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %337 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i32 0, i32 1
  %340 = load %struct.TYPE_14__*, %struct.TYPE_14__** %339, align 8
  %341 = load i64, i64* %8, align 8
  %342 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %340, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %342, i32 0, i32 0
  store i64 %335, i64* %343, align 8
  %344 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %345 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %345, i32 0, i32 1
  %347 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %346, i32 0, i32 1
  %348 = load %struct.TYPE_14__*, %struct.TYPE_14__** %347, align 8
  %349 = load i64, i64* %8, align 8
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %348, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 1
  store i32 1, i32* %351, align 8
  br label %352

352:                                              ; preds = %328
  %353 = load i64, i64* %8, align 8
  %354 = add i64 %353, 1
  store i64 %354, i64* %8, align 8
  br label %321

355:                                              ; preds = %321
  %356 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %6, align 8
  %357 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = sext i32 %358 to i64
  %360 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %361 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %361, i32 0, i32 1
  %363 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %362, i32 0, i32 0
  store i64 %359, i64* %363, align 8
  br label %364

364:                                              ; preds = %355, %304
  %365 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %366 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %366, i32 0, i32 0
  %368 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %368, i32 0, i32 0
  store %struct.radeon_clock_voltage_dependency_table* %369, %struct.radeon_clock_voltage_dependency_table** %6, align 8
  %370 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %6, align 8
  %371 = icmp ne %struct.radeon_clock_voltage_dependency_table* %370, null
  br i1 %371, label %372, label %416

372:                                              ; preds = %364
  store i64 0, i64* %8, align 8
  br label %373

373:                                              ; preds = %404, %372
  %374 = load i64, i64* %8, align 8
  %375 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %6, align 8
  %376 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = sext i32 %377 to i64
  %379 = icmp ult i64 %374, %378
  br i1 %379, label %380, label %407

380:                                              ; preds = %373
  %381 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %6, align 8
  %382 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %381, i32 0, i32 1
  %383 = load %struct.TYPE_13__*, %struct.TYPE_13__** %382, align 8
  %384 = load i64, i64* %8, align 8
  %385 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %383, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %385, i32 0, i32 1
  %387 = load i64, i64* %386, align 8
  %388 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %389 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %390, i32 0, i32 1
  %392 = load %struct.TYPE_14__*, %struct.TYPE_14__** %391, align 8
  %393 = load i64, i64* %8, align 8
  %394 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %392, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %394, i32 0, i32 0
  store i64 %387, i64* %395, align 8
  %396 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %397 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %398, i32 0, i32 1
  %400 = load %struct.TYPE_14__*, %struct.TYPE_14__** %399, align 8
  %401 = load i64, i64* %8, align 8
  %402 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %400, i64 %401
  %403 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %402, i32 0, i32 1
  store i32 1, i32* %403, align 8
  br label %404

404:                                              ; preds = %380
  %405 = load i64, i64* %8, align 8
  %406 = add i64 %405, 1
  store i64 %406, i64* %8, align 8
  br label %373

407:                                              ; preds = %373
  %408 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %6, align 8
  %409 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = sext i32 %410 to i64
  %412 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %413 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %414, i32 0, i32 0
  store i64 %411, i64* %415, align 8
  br label %416

416:                                              ; preds = %407, %364
  %417 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %418 = call i32 @ci_setup_default_pcie_tables(%struct.radeon_device* %417)
  store i32 0, i32* %2, align 4
  br label %419

419:                                              ; preds = %416, %50, %42, %36, %28
  %420 = load i32, i32* %2, align 4
  ret i32 %420
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @ci_reset_single_dpm_table(%struct.radeon_device*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @ci_setup_default_pcie_tables(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
