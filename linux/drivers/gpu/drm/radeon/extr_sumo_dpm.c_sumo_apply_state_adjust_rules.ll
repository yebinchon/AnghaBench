; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_apply_state_adjust_rules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_apply_state_adjust_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32, i32 }
%struct.sumo_ps = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i32, i32, i32 }
%struct.sumo_power_info = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ATOM_PPLIB_CLASSIFICATION_THERMAL = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_UI_PERFORMANCE = common dso_local global i32 0, align 4
@SUMO_POWERSTATE_FLAGS_BOOST_STATE = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_UI_BATTERY = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_SDSTATE = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION_HDSTATE = common dso_local global i32 0, align 4
@SUMO_POWERSTATE_FLAGS_FORCE_NBPS1_STATE = common dso_local global i32 0, align 4
@SUMO_MINIMUM_ENGINE_CLOCK = common dso_local global i64 0, align 8
@ATOM_PPLIB_CLASSIFICATION_UVDSTATE = common dso_local global i32 0, align 4
@ATOM_PPLIB_CLASSIFICATION2_MVC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*)* @sumo_apply_state_adjust_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sumo_apply_state_adjust_rules(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct.radeon_ps* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca %struct.sumo_ps*, align 8
  %8 = alloca %struct.sumo_ps*, align 8
  %9 = alloca %struct.sumo_power_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  store %struct.radeon_ps* %2, %struct.radeon_ps** %6, align 8
  %14 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %15 = call %struct.sumo_ps* @sumo_get_ps(%struct.radeon_ps* %14)
  store %struct.sumo_ps* %15, %struct.sumo_ps** %7, align 8
  %16 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %17 = call %struct.sumo_ps* @sumo_get_ps(%struct.radeon_ps* %16)
  store %struct.sumo_ps* %17, %struct.sumo_ps** %8, align 8
  %18 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %19 = call %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device* %18)
  store %struct.sumo_power_info* %19, %struct.sumo_power_info** %9, align 8
  store i64 0, i64* %10, align 8
  %20 = load %struct.sumo_power_info*, %struct.sumo_power_info** %9, align 8
  %21 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %11, align 8
  %24 = load %struct.sumo_power_info*, %struct.sumo_power_info** %9, align 8
  %25 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %12, align 8
  %28 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %29 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_THERMAL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %36 = load %struct.sumo_ps*, %struct.sumo_ps** %7, align 8
  %37 = load %struct.sumo_ps*, %struct.sumo_ps** %8, align 8
  call void @sumo_patch_thermal_state(%struct.radeon_device* %35, %struct.sumo_ps* %36, %struct.sumo_ps* %37)
  br label %330

38:                                               ; preds = %3
  %39 = load %struct.sumo_power_info*, %struct.sumo_power_info** %9, align 8
  %40 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %38
  %44 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %45 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UI_PERFORMANCE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load i32, i32* @SUMO_POWERSTATE_FLAGS_BOOST_STATE, align 4
  %52 = load %struct.sumo_ps*, %struct.sumo_ps** %7, align 8
  %53 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %50, %43
  br label %57

57:                                               ; preds = %56, %38
  %58 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %59 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UI_BATTERY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %57
  %65 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %66 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_SDSTATE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %64
  %72 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %73 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_HDSTATE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71, %64, %57
  %79 = load i32, i32* @SUMO_POWERSTATE_FLAGS_FORCE_NBPS1_STATE, align 4
  %80 = load %struct.sumo_ps*, %struct.sumo_ps** %7, align 8
  %81 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %78, %71
  store i64 0, i64* %13, align 8
  br label %85

85:                                               ; preds = %327, %84
  %86 = load i64, i64* %13, align 8
  %87 = load %struct.sumo_ps*, %struct.sumo_ps** %7, align 8
  %88 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ult i64 %86, %89
  br i1 %90, label %91, label %330

91:                                               ; preds = %85
  %92 = load %struct.sumo_ps*, %struct.sumo_ps** %7, align 8
  %93 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %92, i32 0, i32 2
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i64, i64* %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %10, align 8
  %100 = icmp ult i64 %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %91
  %102 = load i64, i64* %10, align 8
  %103 = load %struct.sumo_ps*, %struct.sumo_ps** %7, align 8
  %104 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %103, i32 0, i32 2
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = load i64, i64* %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  store i64 %102, i64* %108, align 8
  br label %109

109:                                              ; preds = %101, %91
  %110 = load %struct.sumo_ps*, %struct.sumo_ps** %7, align 8
  %111 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %110, i32 0, i32 2
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i64, i64* %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %11, align 8
  %118 = icmp ult i64 %116, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %109
  %120 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %121 = load i64, i64* %11, align 8
  %122 = call i64 @sumo_get_valid_engine_clock(%struct.radeon_device* %120, i64 %121)
  %123 = load %struct.sumo_ps*, %struct.sumo_ps** %7, align 8
  %124 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %123, i32 0, i32 2
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = load i64, i64* %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  store i64 %122, i64* %128, align 8
  br label %129

129:                                              ; preds = %119, %109
  %130 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %131 = load %struct.sumo_ps*, %struct.sumo_ps** %7, align 8
  %132 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %131, i32 0, i32 2
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = load i64, i64* %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %12, align 8
  %139 = call i8* @sumo_get_sleep_divider_id_from_clock(%struct.radeon_device* %130, i64 %137, i64 %138)
  %140 = ptrtoint i8* %139 to i32
  %141 = load %struct.sumo_ps*, %struct.sumo_ps** %7, align 8
  %142 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %141, i32 0, i32 2
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = load i64, i64* %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 2
  store i32 %140, i32* %146, align 8
  %147 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %148 = load %struct.sumo_ps*, %struct.sumo_ps** %7, align 8
  %149 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %148, i32 0, i32 2
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = load i64, i64* %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @SUMO_MINIMUM_ENGINE_CLOCK, align 8
  %156 = call i8* @sumo_get_sleep_divider_id_from_clock(%struct.radeon_device* %147, i64 %154, i64 %155)
  %157 = ptrtoint i8* %156 to i32
  %158 = load %struct.sumo_ps*, %struct.sumo_ps** %7, align 8
  %159 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %158, i32 0, i32 2
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = load i64, i64* %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 3
  store i32 %157, i32* %163, align 4
  %164 = load %struct.sumo_ps*, %struct.sumo_ps** %7, align 8
  %165 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %164, i32 0, i32 2
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = load i64, i64* %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.sumo_ps*, %struct.sumo_ps** %7, align 8
  %172 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %171, i32 0, i32 2
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = load i64, i64* %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = add nsw i32 %177, 1
  %179 = icmp sgt i32 %170, %178
  br i1 %179, label %180, label %195

180:                                              ; preds = %129
  %181 = load %struct.sumo_ps*, %struct.sumo_ps** %7, align 8
  %182 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %181, i32 0, i32 2
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = load i64, i64* %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = add nsw i32 %187, 1
  %189 = load %struct.sumo_ps*, %struct.sumo_ps** %7, align 8
  %190 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %189, i32 0, i32 2
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %190, align 8
  %192 = load i64, i64* %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 3
  store i32 %188, i32* %194, align 4
  br label %195

195:                                              ; preds = %180, %129
  %196 = load %struct.sumo_ps*, %struct.sumo_ps** %7, align 8
  %197 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %196, i32 0, i32 2
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = load i64, i64* %13, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.sumo_ps*, %struct.sumo_ps** %7, align 8
  %204 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %203, i32 0, i32 2
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %204, align 8
  %206 = load i64, i64* %13, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %202, %209
  br i1 %210, label %211, label %236

211:                                              ; preds = %195
  %212 = load %struct.sumo_ps*, %struct.sumo_ps** %7, align 8
  %213 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %212, i32 0, i32 2
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %213, align 8
  %215 = load i64, i64* %13, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = icmp sgt i32 %218, 1
  br i1 %219, label %220, label %235

220:                                              ; preds = %211
  %221 = load %struct.sumo_ps*, %struct.sumo_ps** %7, align 8
  %222 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %221, i32 0, i32 2
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %222, align 8
  %224 = load i64, i64* %13, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = sub nsw i32 %227, 1
  %229 = load %struct.sumo_ps*, %struct.sumo_ps** %7, align 8
  %230 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %229, i32 0, i32 2
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %230, align 8
  %232 = load i64, i64* %13, align 8
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 2
  store i32 %228, i32* %234, align 8
  br label %235

235:                                              ; preds = %220, %211
  br label %236

236:                                              ; preds = %235, %195
  %237 = load %struct.sumo_ps*, %struct.sumo_ps** %7, align 8
  %238 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %237, i32 0, i32 2
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %238, align 8
  %240 = load i64, i64* %13, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %252

245:                                              ; preds = %236
  %246 = load %struct.sumo_ps*, %struct.sumo_ps** %7, align 8
  %247 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %246, i32 0, i32 2
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %247, align 8
  %249 = load i64, i64* %13, align 8
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 3
  store i32 0, i32* %251, align 4
  br label %252

252:                                              ; preds = %245, %236
  %253 = load %struct.sumo_ps*, %struct.sumo_ps** %7, align 8
  %254 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %253, i32 0, i32 2
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** %254, align 8
  %256 = load i64, i64* %13, align 8
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %268

261:                                              ; preds = %252
  %262 = load %struct.sumo_ps*, %struct.sumo_ps** %7, align 8
  %263 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %262, i32 0, i32 2
  %264 = load %struct.TYPE_4__*, %struct.TYPE_4__** %263, align 8
  %265 = load i64, i64* %13, align 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 2
  store i32 0, i32* %267, align 8
  br label %268

268:                                              ; preds = %261, %252
  %269 = load %struct.sumo_ps*, %struct.sumo_ps** %7, align 8
  %270 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @SUMO_POWERSTATE_FLAGS_FORCE_NBPS1_STATE, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %282

275:                                              ; preds = %268
  %276 = load %struct.sumo_ps*, %struct.sumo_ps** %7, align 8
  %277 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %276, i32 0, i32 2
  %278 = load %struct.TYPE_4__*, %struct.TYPE_4__** %277, align 8
  %279 = load i64, i64* %13, align 8
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 4
  store i32 1, i32* %281, align 8
  br label %326

282:                                              ; preds = %268
  %283 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %284 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION_UVDSTATE, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %296, label %289

289:                                              ; preds = %282
  %290 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %291 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* @ATOM_PPLIB_CLASSIFICATION2_MVC, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %303

296:                                              ; preds = %289, %282
  %297 = load %struct.sumo_ps*, %struct.sumo_ps** %7, align 8
  %298 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %297, i32 0, i32 2
  %299 = load %struct.TYPE_4__*, %struct.TYPE_4__** %298, align 8
  %300 = load i64, i64* %13, align 8
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i64 %300
  %302 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i32 0, i32 4
  store i32 0, i32* %302, align 8
  br label %325

303:                                              ; preds = %289
  %304 = load i64, i64* %13, align 8
  %305 = load %struct.sumo_ps*, %struct.sumo_ps** %7, align 8
  %306 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %305, i32 0, i32 1
  %307 = load i64, i64* %306, align 8
  %308 = sub i64 %307, 1
  %309 = icmp eq i64 %304, %308
  br i1 %309, label %310, label %317

310:                                              ; preds = %303
  %311 = load %struct.sumo_ps*, %struct.sumo_ps** %7, align 8
  %312 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %311, i32 0, i32 2
  %313 = load %struct.TYPE_4__*, %struct.TYPE_4__** %312, align 8
  %314 = load i64, i64* %13, align 8
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i64 %314
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i32 0, i32 4
  store i32 0, i32* %316, align 8
  br label %324

317:                                              ; preds = %303
  %318 = load %struct.sumo_ps*, %struct.sumo_ps** %7, align 8
  %319 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %318, i32 0, i32 2
  %320 = load %struct.TYPE_4__*, %struct.TYPE_4__** %319, align 8
  %321 = load i64, i64* %13, align 8
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 4
  store i32 1, i32* %323, align 8
  br label %324

324:                                              ; preds = %317, %310
  br label %325

325:                                              ; preds = %324, %296
  br label %326

326:                                              ; preds = %325, %275
  br label %327

327:                                              ; preds = %326
  %328 = load i64, i64* %13, align 8
  %329 = add i64 %328, 1
  store i64 %329, i64* %13, align 8
  br label %85

330:                                              ; preds = %34, %85
  ret void
}

declare dso_local %struct.sumo_ps* @sumo_get_ps(%struct.radeon_ps*) #1

declare dso_local %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device*) #1

declare dso_local void @sumo_patch_thermal_state(%struct.radeon_device*, %struct.sumo_ps*, %struct.sumo_ps*) #1

declare dso_local i64 @sumo_get_valid_engine_clock(%struct.radeon_device*, i64) #1

declare dso_local i8* @sumo_get_sleep_divider_id_from_clock(%struct.radeon_device*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
