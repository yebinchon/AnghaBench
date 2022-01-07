; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_apply_state_adjust_rules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_apply_state_adjust_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.radeon_ps = type { i32, i64, i64, i64 }
%struct.trinity_ps = type { i64, i32, i32, i32, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i64, i64, i32, i32, i32, i64, i32, i32 }
%struct.trinity_power_info = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32, i64 }

@ATOM_PPLIB_CLASSIFICATION_THERMAL = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_HDSTATE = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_SDSTATE = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_UI_MASK = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_UI_BATTERY = common dso_local global i32 0, align 4
@TRINITY_POWERSTATE_FLAGS_BAPM_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*)* @trinity_apply_state_adjust_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trinity_apply_state_adjust_rules(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct.radeon_ps* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca %struct.trinity_ps*, align 8
  %8 = alloca %struct.trinity_ps*, align 8
  %9 = alloca %struct.trinity_power_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  store %struct.radeon_ps* %2, %struct.radeon_ps** %6, align 8
  %17 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %18 = call %struct.trinity_ps* @trinity_get_ps(%struct.radeon_ps* %17)
  store %struct.trinity_ps* %18, %struct.trinity_ps** %7, align 8
  %19 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %20 = call %struct.trinity_ps* @trinity_get_ps(%struct.radeon_ps* %19)
  store %struct.trinity_ps* %20, %struct.trinity_ps** %8, align 8
  %21 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %22 = call %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device* %21)
  store %struct.trinity_power_info* %22, %struct.trinity_power_info** %9, align 8
  store i64 0, i64* %10, align 8
  %23 = load %struct.trinity_power_info*, %struct.trinity_power_info** %9, align 8
  %24 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %11, align 8
  %27 = load %struct.trinity_power_info*, %struct.trinity_power_info** %9, align 8
  %28 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %12, align 8
  %31 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %16, align 8
  %36 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %37 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_THERMAL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %3
  %43 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %44 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %45 = load %struct.trinity_ps*, %struct.trinity_ps** %8, align 8
  call void @trinity_patch_thermal_state(%struct.radeon_device* %43, %struct.trinity_ps* %44, %struct.trinity_ps* %45)
  br label %391

46:                                               ; preds = %3
  %47 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %48 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %49 = call i32 @trinity_adjust_uvd_state(%struct.radeon_device* %47, %struct.radeon_ps* %48)
  %50 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %51 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %85

54:                                               ; preds = %46
  %55 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %69 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %68, i32 0, i32 2
  store i64 %67, i64* %69, align 8
  %70 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %71 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %76 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %84 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  br label %90

85:                                               ; preds = %46
  %86 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %87 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %86, i32 0, i32 2
  store i64 0, i64* %87, align 8
  %88 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %89 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %85, %54
  store i64 0, i64* %13, align 8
  br label %91

91:                                               ; preds = %275, %90
  %92 = load i64, i64* %13, align 8
  %93 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %94 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ult i64 %92, %95
  br i1 %96, label %97, label %278

97:                                               ; preds = %91
  %98 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %99 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %98, i32 0, i32 5
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = load i64, i64* %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %10, align 8
  %106 = icmp ult i64 %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %97
  %108 = load i64, i64* %10, align 8
  %109 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %110 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %109, i32 0, i32 5
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = load i64, i64* %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  store i64 %108, i64* %114, align 8
  br label %115

115:                                              ; preds = %107, %97
  %116 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %117 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %116, i32 0, i32 5
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = load i64, i64* %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %11, align 8
  %124 = icmp ult i64 %122, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %115
  %126 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %127 = load i64, i64* %11, align 8
  %128 = call i64 @trinity_get_valid_engine_clock(%struct.radeon_device* %126, i64 %127)
  %129 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %130 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %129, i32 0, i32 5
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = load i64, i64* %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  store i64 %128, i64* %134, align 8
  br label %135

135:                                              ; preds = %125, %115
  %136 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %137 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %209

140:                                              ; preds = %135
  %141 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %142 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %141, i32 0, i32 5
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %142, align 8
  %144 = load i64, i64* %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %149 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %154 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ult i64 %147, %160
  br i1 %161, label %162, label %182

162:                                              ; preds = %140
  %163 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %164 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %166, align 8
  %168 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %169 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %177 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %176, i32 0, i32 5
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %177, align 8
  %179 = load i64, i64* %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 1
  store i64 %175, i64* %181, align 8
  br label %182

182:                                              ; preds = %162, %140
  %183 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %184 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %185 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %188 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @trinity_get_vce_clock_voltage(%struct.radeon_device* %183, i64 %186, i64 %189, i64* %14)
  %191 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %192 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %191, i32 0, i32 5
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %192, align 8
  %194 = load i64, i64* %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* %14, align 8
  %199 = icmp ult i64 %197, %198
  br i1 %199, label %200, label %208

200:                                              ; preds = %182
  %201 = load i64, i64* %14, align 8
  %202 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %203 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %202, i32 0, i32 5
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %203, align 8
  %205 = load i64, i64* %13, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  store i64 %201, i64* %207, align 8
  br label %208

208:                                              ; preds = %200, %182
  br label %209

209:                                              ; preds = %208, %135
  %210 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %211 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %212 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %211, i32 0, i32 5
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %212, align 8
  %214 = load i64, i64* %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* %12, align 8
  %219 = call i32 @sumo_get_sleep_divider_id_from_clock(%struct.radeon_device* %210, i64 %217, i64 %218)
  %220 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %221 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %220, i32 0, i32 5
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %221, align 8
  %223 = load i64, i64* %13, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 6
  store i32 %219, i32* %225, align 8
  %226 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %227 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %226, i32 0, i32 5
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %227, align 8
  %229 = load i64, i64* %13, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 6
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %234 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %233, i32 0, i32 5
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %234, align 8
  %236 = load i64, i64* %13, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 7
  store i32 %232, i32* %238, align 4
  %239 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %240 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %239, i32 0, i32 5
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %240, align 8
  %242 = load i64, i64* %13, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 2
  store i32 1, i32* %244, align 8
  %245 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %246 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %245, i32 0, i32 5
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %246, align 8
  %248 = load i64, i64* %13, align 8
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 5
  store i64 0, i64* %250, align 8
  %251 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %252 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %253 = load i64, i64* %13, align 8
  %254 = call i32 @trinity_calculate_display_wm(%struct.radeon_device* %251, %struct.trinity_ps* %252, i64 %253)
  %255 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %256 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %255, i32 0, i32 5
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %256, align 8
  %258 = load i64, i64* %13, align 8
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %259, i32 0, i32 4
  store i32 %254, i32* %260, align 8
  %261 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %262 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %263 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %262, i32 0, i32 5
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i64 0
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = call i32 @trinity_calculate_vce_wm(%struct.radeon_device* %261, i64 %267)
  %269 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %270 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %269, i32 0, i32 5
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %270, align 8
  %272 = load i64, i64* %13, align 8
  %273 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 3
  store i32 %268, i32* %274, align 4
  br label %275

275:                                              ; preds = %209
  %276 = load i64, i64* %13, align 8
  %277 = add i64 %276, 1
  store i64 %277, i64* %13, align 8
  br label %91

278:                                              ; preds = %91
  %279 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %280 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_HDSTATE, align 4
  %283 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_SDSTATE, align 4
  %284 = or i32 %282, %283
  %285 = and i32 %281, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %295, label %287

287:                                              ; preds = %278
  %288 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %289 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UI_MASK, align 4
  %292 = and i32 %290, %291
  %293 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UI_BATTERY, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %301

295:                                              ; preds = %287, %278
  %296 = load i32, i32* @TRINITY_POWERSTATE_FLAGS_BAPM_DISABLE, align 4
  %297 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %298 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %297, i32 0, i32 6
  %299 = load i32, i32* %298, align 8
  %300 = or i32 %299, %296
  store i32 %300, i32* %298, align 8
  br label %301

301:                                              ; preds = %295, %287
  %302 = load %struct.trinity_power_info*, %struct.trinity_power_info** %9, align 8
  %303 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 2
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %391

307:                                              ; preds = %301
  %308 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %309 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %308, i32 0, i32 1
  store i32 1, i32* %309, align 8
  %310 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %311 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %310, i32 0, i32 2
  store i32 0, i32* %311, align 4
  %312 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %313 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %312, i32 0, i32 3
  store i32 2, i32* %313, align 8
  %314 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %315 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %314, i32 0, i32 4
  store i32 1, i32* %315, align 4
  %316 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %317 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_HDSTATE, align 4
  %320 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_SDSTATE, align 4
  %321 = or i32 %319, %320
  %322 = and i32 %318, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %332, label %324

324:                                              ; preds = %307
  %325 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %326 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UI_MASK, align 4
  %329 = and i32 %327, %328
  %330 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UI_BATTERY, align 4
  %331 = icmp eq i32 %329, %330
  br i1 %331, label %332, label %390

332:                                              ; preds = %324, %307
  %333 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %334 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_HDSTATE, align 4
  %337 = and i32 %335, %336
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %354, label %339

339:                                              ; preds = %332
  %340 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %341 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_SDSTATE, align 4
  %344 = and i32 %342, %343
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %352

346:                                              ; preds = %339
  %347 = load %struct.trinity_power_info*, %struct.trinity_power_info** %9, align 8
  %348 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 8
  %351 = icmp eq i32 %350, 1
  br label %352

352:                                              ; preds = %346, %339
  %353 = phi i1 [ false, %339 ], [ %351, %346 ]
  br label %354

354:                                              ; preds = %352, %332
  %355 = phi i1 [ true, %332 ], [ %353, %352 ]
  %356 = zext i1 %355 to i32
  store i32 %356, i32* %15, align 4
  %357 = load i64, i64* %16, align 8
  %358 = icmp uge i64 %357, 3
  br i1 %358, label %362, label %359

359:                                              ; preds = %354
  %360 = load i32, i32* %15, align 4
  %361 = icmp ne i32 %360, 0
  br label %362

362:                                              ; preds = %359, %354
  %363 = phi i1 [ true, %354 ], [ %361, %359 ]
  %364 = zext i1 %363 to i32
  store i32 %364, i32* %15, align 4
  %365 = load i32, i32* %15, align 4
  %366 = icmp ne i32 %365, 0
  %367 = zext i1 %366 to i64
  %368 = select i1 %366, i32 2, i32 3
  %369 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %370 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %369, i32 0, i32 1
  store i32 %368, i32* %370, align 8
  %371 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %372 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %371, i32 0, i32 2
  store i32 1, i32* %372, align 4
  %373 = load i32, i32* %15, align 4
  %374 = icmp ne i32 %373, 0
  %375 = zext i1 %374 to i64
  %376 = select i1 %374, i32 2, i32 3
  %377 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %378 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %377, i32 0, i32 3
  store i32 %376, i32* %378, align 8
  %379 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %380 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %379, i32 0, i32 4
  store i32 2, i32* %380, align 4
  %381 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %382 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %381, i32 0, i32 5
  %383 = load %struct.TYPE_9__*, %struct.TYPE_9__** %382, align 8
  %384 = load %struct.trinity_ps*, %struct.trinity_ps** %7, align 8
  %385 = getelementptr inbounds %struct.trinity_ps, %struct.trinity_ps* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = sub i64 %386, 1
  %388 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %383, i64 %387
  %389 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %388, i32 0, i32 2
  store i32 0, i32* %389, align 8
  br label %390

390:                                              ; preds = %362, %324
  br label %391

391:                                              ; preds = %42, %390, %301
  ret void
}

declare dso_local %struct.trinity_ps* @trinity_get_ps(%struct.radeon_ps*) #1

declare dso_local %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device*) #1

declare dso_local void @trinity_patch_thermal_state(%struct.radeon_device*, %struct.trinity_ps*, %struct.trinity_ps*) #1

declare dso_local i32 @trinity_adjust_uvd_state(%struct.radeon_device*, %struct.radeon_ps*) #1

declare dso_local i64 @trinity_get_valid_engine_clock(%struct.radeon_device*, i64) #1

declare dso_local i32 @trinity_get_vce_clock_voltage(%struct.radeon_device*, i64, i64, i64*) #1

declare dso_local i32 @sumo_get_sleep_divider_id_from_clock(%struct.radeon_device*, i64, i64) #1

declare dso_local i32 @trinity_calculate_display_wm(%struct.radeon_device*, %struct.trinity_ps*, i64) #1

declare dso_local i32 @trinity_calculate_vce_wm(%struct.radeon_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
