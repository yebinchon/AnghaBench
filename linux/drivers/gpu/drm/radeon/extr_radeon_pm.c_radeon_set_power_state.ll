; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_pm.c_radeon_set_power_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_pm.c_radeon_set_power_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_9__*, %struct.TYPE_7__*, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@PM_METHOD_PROFILE = common dso_local global i64 0, align 8
@CHIP_BARTS = common dso_local global i64 0, align 8
@PM_PROFILE_MID_MH_IDX = common dso_local global i64 0, align 8
@PM_PROFILE_LOW_MH_IDX = common dso_local global i64 0, align 8
@PM_PROFILE_HIGH_MH_IDX = common dso_local global i64 0, align 8
@PM_METHOD_DYNPM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"Setting: e: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Setting: m: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"pm: GUI not idle!!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @radeon_set_power_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_set_power_state(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %9, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %19, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %253

26:                                               ; preds = %15, %1
  %27 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %28 = call i64 @radeon_gui_idle(%struct.radeon_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %251

30:                                               ; preds = %26
  %31 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %32 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 10
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %43 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %3, align 8
  %49 = load i64, i64* %3, align 8
  %50 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %51 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %49, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %30
  %56 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %57 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %3, align 8
  br label %60

60:                                               ; preds = %55, %30
  %61 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %62 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @PM_METHOD_PROFILE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %116

67:                                               ; preds = %60
  %68 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %69 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CHIP_BARTS, align 8
  %72 = icmp sge i64 %70, %71
  br i1 %72, label %73, label %116

73:                                               ; preds = %67
  %74 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %75 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 12
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %116

79:                                               ; preds = %73
  %80 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %81 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 6
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @PM_PROFILE_MID_MH_IDX, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %93, label %86

86:                                               ; preds = %79
  %87 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %88 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 6
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @PM_PROFILE_LOW_MH_IDX, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %116

93:                                               ; preds = %86, %79
  %94 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %95 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 10
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %99 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %106 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 11
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = load i64, i64* @PM_PROFILE_HIGH_MH_IDX, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %4, align 8
  br label %135

116:                                              ; preds = %86, %73, %67, %60
  %117 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %118 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 10
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %122 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %129 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %4, align 8
  br label %135

135:                                              ; preds = %116, %93
  %136 = load i64, i64* %4, align 8
  %137 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %138 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 7
  %140 = load i64, i64* %139, align 8
  %141 = icmp sgt i64 %136, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %135
  %143 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %144 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 7
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %4, align 8
  br label %147

147:                                              ; preds = %142, %135
  %148 = load i64, i64* %3, align 8
  %149 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %150 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 8
  %152 = load i64, i64* %151, align 8
  %153 = icmp slt i64 %148, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %147
  store i32 1, i32* %5, align 4
  br label %155

155:                                              ; preds = %154, %147
  %156 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %157 = call i32 @radeon_sync_with_vblank(%struct.radeon_device* %156)
  %158 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %159 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @PM_METHOD_DYNPM, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %155
  %165 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %166 = call i32 @radeon_pm_in_vbl(%struct.radeon_device* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %164
  br label %253

169:                                              ; preds = %164
  br label %170

170:                                              ; preds = %169, %155
  %171 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %172 = call i32 @radeon_pm_prepare(%struct.radeon_device* %171)
  %173 = load i32, i32* %5, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %170
  %176 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %177 = call i32 @radeon_pm_misc(%struct.radeon_device* %176)
  br label %178

178:                                              ; preds = %175, %170
  %179 = load i64, i64* %3, align 8
  %180 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %181 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 8
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %179, %183
  br i1 %184, label %185, label %199

185:                                              ; preds = %178
  %186 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %187 = call i32 @radeon_pm_debug_check_in_vbl(%struct.radeon_device* %186, i32 0)
  %188 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %189 = load i64, i64* %3, align 8
  %190 = call i32 @radeon_set_engine_clock(%struct.radeon_device* %188, i64 %189)
  %191 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %192 = call i32 @radeon_pm_debug_check_in_vbl(%struct.radeon_device* %191, i32 1)
  %193 = load i64, i64* %3, align 8
  %194 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %195 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 8
  store i64 %193, i64* %196, align 8
  %197 = load i64, i64* %3, align 8
  %198 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %197)
  br label %199

199:                                              ; preds = %185, %178
  %200 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %201 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %200, i32 0, i32 2
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %228

207:                                              ; preds = %199
  %208 = load i64, i64* %4, align 8
  %209 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %210 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 9
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %208, %212
  br i1 %213, label %214, label %228

214:                                              ; preds = %207
  %215 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %216 = call i32 @radeon_pm_debug_check_in_vbl(%struct.radeon_device* %215, i32 0)
  %217 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %218 = load i64, i64* %4, align 8
  %219 = call i32 @radeon_set_memory_clock(%struct.radeon_device* %217, i64 %218)
  %220 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %221 = call i32 @radeon_pm_debug_check_in_vbl(%struct.radeon_device* %220, i32 1)
  %222 = load i64, i64* %4, align 8
  %223 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %224 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 9
  store i64 %222, i64* %225, align 8
  %226 = load i64, i64* %4, align 8
  %227 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %226)
  br label %228

228:                                              ; preds = %214, %207, %199
  %229 = load i32, i32* %5, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %228
  %232 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %233 = call i32 @radeon_pm_misc(%struct.radeon_device* %232)
  br label %234

234:                                              ; preds = %231, %228
  %235 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %236 = call i32 @radeon_pm_finish(%struct.radeon_device* %235)
  %237 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %238 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %242 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 3
  store i64 %240, i64* %243, align 8
  %244 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %245 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %249 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 1
  store i64 %247, i64* %250, align 8
  br label %253

251:                                              ; preds = %26
  %252 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %253

253:                                              ; preds = %25, %168, %251, %234
  ret void
}

declare dso_local i64 @radeon_gui_idle(%struct.radeon_device*) #1

declare dso_local i32 @radeon_sync_with_vblank(%struct.radeon_device*) #1

declare dso_local i32 @radeon_pm_in_vbl(%struct.radeon_device*) #1

declare dso_local i32 @radeon_pm_prepare(%struct.radeon_device*) #1

declare dso_local i32 @radeon_pm_misc(%struct.radeon_device*) #1

declare dso_local i32 @radeon_pm_debug_check_in_vbl(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_set_engine_clock(%struct.radeon_device*, i64) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, ...) #1

declare dso_local i32 @radeon_set_memory_clock(%struct.radeon_device*, i64) #1

declare dso_local i32 @radeon_pm_finish(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
