; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/freesync/extr_freesync.c_mod_freesync_build_vrr_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/freesync/extr_freesync.c_mod_freesync_build_vrr_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mod_freesync = type { i32 }
%struct.dc_stream_state = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }
%struct.mod_freesync_config = type { i64, i64, i64, i32, i64, i32 }
%struct.mod_vrr_params = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_5__, i32 }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i64, i64 }
%struct.core_freesync = type { i32 }

@VRR_STATE_UNSUPPORTED = common dso_local global i64 0, align 8
@VRR_STATE_DISABLED = common dso_local global i64 0, align 8
@VRR_STATE_INACTIVE = common dso_local global i64 0, align 8
@VRR_STATE_ACTIVE_VARIABLE = common dso_local global i64 0, align 8
@MIN_REFRESH_RANGE_IN_US = common dso_local global i32 0, align 4
@VRR_STATE_ACTIVE_FIXED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mod_freesync_build_vrr_params(%struct.mod_freesync* %0, %struct.dc_stream_state* %1, %struct.mod_freesync_config* %2, %struct.mod_vrr_params* %3) #0 {
  %5 = alloca %struct.mod_freesync*, align 8
  %6 = alloca %struct.dc_stream_state*, align 8
  %7 = alloca %struct.mod_freesync_config*, align 8
  %8 = alloca %struct.mod_vrr_params*, align 8
  %9 = alloca %struct.core_freesync*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.mod_freesync* %0, %struct.mod_freesync** %5, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %6, align 8
  store %struct.mod_freesync_config* %2, %struct.mod_freesync_config** %7, align 8
  store %struct.mod_vrr_params* %3, %struct.mod_vrr_params** %8, align 8
  store %struct.core_freesync* null, %struct.core_freesync** %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %14 = load %struct.mod_freesync*, %struct.mod_freesync** %5, align 8
  %15 = icmp eq %struct.mod_freesync* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %331

17:                                               ; preds = %4
  %18 = load %struct.mod_freesync*, %struct.mod_freesync** %5, align 8
  %19 = call %struct.core_freesync* @MOD_FREESYNC_TO_CORE(%struct.mod_freesync* %18)
  store %struct.core_freesync* %19, %struct.core_freesync** %9, align 8
  %20 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %21 = call i64 @mod_freesync_calc_nominal_field_rate(%struct.dc_stream_state* %20)
  store i64 %21, i64* %10, align 8
  %22 = load %struct.mod_freesync_config*, %struct.mod_freesync_config** %7, align 8
  %23 = getelementptr inbounds %struct.mod_freesync_config, %struct.mod_freesync_config* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %12, align 8
  %25 = load %struct.mod_freesync_config*, %struct.mod_freesync_config** %7, align 8
  %26 = getelementptr inbounds %struct.mod_freesync_config, %struct.mod_freesync_config* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %13, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* %13, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %17
  %32 = load i64, i64* %13, align 8
  store i64 %32, i64* %12, align 8
  br label %33

33:                                               ; preds = %31, %17
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp ugt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i64, i64* %10, align 8
  store i64 %38, i64* %13, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* %10, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i64, i64* %10, align 8
  store i64 %44, i64* %12, align 8
  br label %45

45:                                               ; preds = %43, %39
  %46 = load %struct.core_freesync*, %struct.core_freesync** %9, align 8
  %47 = load %struct.mod_freesync_config*, %struct.mod_freesync_config** %7, align 8
  %48 = load i64, i64* %12, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i64, i64* %13, align 8
  %51 = trunc i64 %50 to i32
  %52 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %53 = call i32 @vrr_settings_require_update(%struct.core_freesync* %46, %struct.mod_freesync_config* %47, i32 %49, i32 %51, %struct.mod_vrr_params* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %45
  br label %331

56:                                               ; preds = %45
  %57 = load %struct.mod_freesync_config*, %struct.mod_freesync_config** %7, align 8
  %58 = getelementptr inbounds %struct.mod_freesync_config, %struct.mod_freesync_config* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %61 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.mod_freesync_config*, %struct.mod_freesync_config** %7, align 8
  %63 = getelementptr inbounds %struct.mod_freesync_config, %struct.mod_freesync_config* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %66 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %65, i32 0, i32 9
  store i32 %64, i32* %66, align 8
  %67 = load %struct.mod_freesync_config*, %struct.mod_freesync_config** %7, align 8
  %68 = getelementptr inbounds %struct.mod_freesync_config, %struct.mod_freesync_config* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @VRR_STATE_UNSUPPORTED, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %56
  %73 = load i64, i64* @VRR_STATE_UNSUPPORTED, align 8
  %74 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %75 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %77 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %76, i32 0, i32 1
  store i32 0, i32* %77, align 8
  %78 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %79 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %83 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  store i8* %81, i8** %84, align 8
  %85 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %86 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %90 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %89, i32 0, i32 6
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  store i8* %88, i8** %91, align 8
  br label %331

92:                                               ; preds = %56
  %93 = load i64, i64* %12, align 8
  %94 = trunc i64 %93 to i32
  %95 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %96 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  %97 = load i64, i64* %12, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i8* @calc_duration_in_us_from_refresh_in_uhz(i32 %98)
  %100 = ptrtoint i8* %99 to i32
  %101 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %102 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 8
  %103 = load i64, i64* %13, align 8
  %104 = trunc i64 %103 to i32
  %105 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %106 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 4
  %107 = load i64, i64* %13, align 8
  %108 = trunc i64 %107 to i32
  %109 = call i8* @calc_duration_in_us_from_refresh_in_uhz(i32 %108)
  %110 = ptrtoint i8* %109 to i32
  %111 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %112 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 8
  %113 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %114 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %117 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = sub i32 %115, %118
  store i32 %119, i32* %11, align 4
  %120 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %121 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %120, i32 0, i32 1
  store i32 1, i32* %121, align 8
  br label %122

122:                                              ; preds = %92
  %123 = load %struct.mod_freesync_config*, %struct.mod_freesync_config** %7, align 8
  %124 = getelementptr inbounds %struct.mod_freesync_config, %struct.mod_freesync_config* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %127 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %126, i32 0, i32 7
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 2
  store i64 %125, i64* %128, align 8
  %129 = load %struct.mod_freesync_config*, %struct.mod_freesync_config** %7, align 8
  %130 = getelementptr inbounds %struct.mod_freesync_config, %struct.mod_freesync_config* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %133 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %132, i32 0, i32 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  store i32 %131, i32* %134, align 8
  %135 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %136 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %139 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = mul i32 2, %140
  %142 = icmp ult i32 %137, %141
  br i1 %142, label %143, label %147

143:                                              ; preds = %122
  %144 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %145 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %144, i32 0, i32 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  store i32 0, i32* %146, align 8
  br label %147

147:                                              ; preds = %143, %122
  %148 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %149 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %148, i32 0, i32 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  store i32 0, i32* %150, align 4
  %151 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %152 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %151, i32 0, i32 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 5
  store i64 0, i64* %153, align 8
  %154 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %155 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %154, i32 0, i32 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 4
  store i64 0, i64* %156, align 8
  %157 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %158 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %157, i32 0, i32 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 3
  store i64 0, i64* %159, align 8
  %160 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %161 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %164 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = add nsw i32 %162, %165
  %167 = sdiv i32 %166, 2
  %168 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %169 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %168, i32 0, i32 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 2
  store i32 %167, i32* %170, align 8
  %171 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %172 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @VRR_STATE_UNSUPPORTED, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %191

176:                                              ; preds = %147
  %177 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %178 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %182 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %181, i32 0, i32 6
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 1
  store i8* %180, i8** %183, align 8
  %184 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %185 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %189 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %188, i32 0, i32 6
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  store i8* %187, i8** %190, align 8
  br label %331

191:                                              ; preds = %147
  %192 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %193 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @VRR_STATE_DISABLED, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %212

197:                                              ; preds = %191
  %198 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %199 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %203 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %202, i32 0, i32 6
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 1
  store i8* %201, i8** %204, align 8
  %205 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %206 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load i8*, i8** %207, align 8
  %209 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %210 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %209, i32 0, i32 6
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  store i8* %208, i8** %211, align 8
  br label %330

212:                                              ; preds = %191
  %213 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %214 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @VRR_STATE_INACTIVE, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %233

218:                                              ; preds = %212
  %219 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %220 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %224 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %223, i32 0, i32 6
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 1
  store i8* %222, i8** %225, align 8
  %226 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %227 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  %229 = load i8*, i8** %228, align 8
  %230 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %231 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %230, i32 0, i32 6
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  store i8* %229, i8** %232, align 8
  br label %329

233:                                              ; preds = %212
  %234 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %235 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @VRR_STATE_ACTIVE_VARIABLE, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %260

239:                                              ; preds = %233
  %240 = load i32, i32* %11, align 4
  %241 = load i32, i32* @MIN_REFRESH_RANGE_IN_US, align 4
  %242 = icmp uge i32 %240, %241
  br i1 %242, label %243, label %260

243:                                              ; preds = %239
  %244 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %245 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %246 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 4
  %248 = call i8* @calc_v_total_from_refresh(%struct.dc_stream_state* %244, i32 %247)
  %249 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %250 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %249, i32 0, i32 6
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 1
  store i8* %248, i8** %251, align 8
  %252 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %253 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %254 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = call i8* @calc_v_total_from_refresh(%struct.dc_stream_state* %252, i32 %255)
  %257 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %258 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %257, i32 0, i32 6
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 0
  store i8* %256, i8** %259, align 8
  br label %328

260:                                              ; preds = %239, %233
  %261 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %262 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @VRR_STATE_ACTIVE_FIXED, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %309

266:                                              ; preds = %260
  %267 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %268 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %271 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %270, i32 0, i32 7
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 0
  store i32 %269, i32* %272, align 8
  %273 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %274 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %273, i32 0, i32 7
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 2
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %288

278:                                              ; preds = %266
  %279 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %280 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %279, i32 0, i32 7
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %278
  %285 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %286 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %285, i32 0, i32 7
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 1
  store i32 1, i32* %287, align 4
  br label %308

288:                                              ; preds = %278, %266
  %289 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %290 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %289, i32 0, i32 7
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 1
  store i32 1, i32* %291, align 4
  %292 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %293 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %294 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %293, i32 0, i32 7
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = call i8* @calc_v_total_from_refresh(%struct.dc_stream_state* %292, i32 %296)
  %298 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %299 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %298, i32 0, i32 6
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 1
  store i8* %297, i8** %300, align 8
  %301 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %302 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %301, i32 0, i32 6
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 1
  %304 = load i8*, i8** %303, align 8
  %305 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %306 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %305, i32 0, i32 6
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 0
  store i8* %304, i8** %307, align 8
  br label %308

308:                                              ; preds = %288, %284
  br label %327

309:                                              ; preds = %260
  %310 = load i64, i64* @VRR_STATE_INACTIVE, align 8
  %311 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %312 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %311, i32 0, i32 0
  store i64 %310, i64* %312, align 8
  %313 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %314 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 0
  %316 = load i8*, i8** %315, align 8
  %317 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %318 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %317, i32 0, i32 6
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %318, i32 0, i32 1
  store i8* %316, i8** %319, align 8
  %320 = load %struct.dc_stream_state*, %struct.dc_stream_state** %6, align 8
  %321 = getelementptr inbounds %struct.dc_stream_state, %struct.dc_stream_state* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 0
  %323 = load i8*, i8** %322, align 8
  %324 = load %struct.mod_vrr_params*, %struct.mod_vrr_params** %8, align 8
  %325 = getelementptr inbounds %struct.mod_vrr_params, %struct.mod_vrr_params* %324, i32 0, i32 6
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 0
  store i8* %323, i8** %326, align 8
  br label %327

327:                                              ; preds = %309, %308
  br label %328

328:                                              ; preds = %327, %243
  br label %329

329:                                              ; preds = %328, %218
  br label %330

330:                                              ; preds = %329, %197
  br label %331

331:                                              ; preds = %16, %55, %72, %330, %176
  ret void
}

declare dso_local %struct.core_freesync* @MOD_FREESYNC_TO_CORE(%struct.mod_freesync*) #1

declare dso_local i64 @mod_freesync_calc_nominal_field_rate(%struct.dc_stream_state*) #1

declare dso_local i32 @vrr_settings_require_update(%struct.core_freesync*, %struct.mod_freesync_config*, i32, i32, %struct.mod_vrr_params*) #1

declare dso_local i8* @calc_duration_in_us_from_refresh_in_uhz(i32) #1

declare dso_local i8* @calc_v_total_from_refresh(%struct.dc_stream_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
