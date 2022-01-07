; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_update_plane_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_update_plane_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32 }
%struct.drm_atomic_state = type { i32 }
%struct.drm_plane = type { i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.drm_plane_state = type { %struct.drm_crtc* }
%struct.drm_crtc = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.dm_atomic_state = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.dm_crtc_state = type { i32 }
%struct.dm_plane_state = type { %struct.dc_plane_state* }
%struct.dc_plane_state = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@DRM_PLANE_TYPE_CURSOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Disabling DRM plane: %d on DRM crtc %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Enabling DRM plane: %d on DRM crtc %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc*, %struct.drm_atomic_state*, %struct.drm_plane*, %struct.drm_plane_state*, %struct.drm_plane_state*, i32, i32*)* @dm_update_plane_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_update_plane_state(%struct.dc* %0, %struct.drm_atomic_state* %1, %struct.drm_plane* %2, %struct.drm_plane_state* %3, %struct.drm_plane_state* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.dc*, align 8
  %10 = alloca %struct.drm_atomic_state*, align 8
  %11 = alloca %struct.drm_plane*, align 8
  %12 = alloca %struct.drm_plane_state*, align 8
  %13 = alloca %struct.drm_plane_state*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.dm_atomic_state*, align 8
  %17 = alloca %struct.drm_crtc*, align 8
  %18 = alloca %struct.drm_crtc*, align 8
  %19 = alloca %struct.drm_crtc_state*, align 8
  %20 = alloca %struct.drm_crtc_state*, align 8
  %21 = alloca %struct.dm_crtc_state*, align 8
  %22 = alloca %struct.dm_crtc_state*, align 8
  %23 = alloca %struct.dm_plane_state*, align 8
  %24 = alloca %struct.dm_plane_state*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.dc_plane_state*, align 8
  store %struct.dc* %0, %struct.dc** %9, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %10, align 8
  store %struct.drm_plane* %2, %struct.drm_plane** %11, align 8
  store %struct.drm_plane_state* %3, %struct.drm_plane_state** %12, align 8
  store %struct.drm_plane_state* %4, %struct.drm_plane_state** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store %struct.dm_atomic_state* null, %struct.dm_atomic_state** %16, align 8
  store i32 0, i32* %26, align 4
  %28 = load %struct.drm_plane_state*, %struct.drm_plane_state** %13, align 8
  %29 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %28, i32 0, i32 0
  %30 = load %struct.drm_crtc*, %struct.drm_crtc** %29, align 8
  store %struct.drm_crtc* %30, %struct.drm_crtc** %17, align 8
  %31 = load %struct.drm_plane_state*, %struct.drm_plane_state** %12, align 8
  %32 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %31, i32 0, i32 0
  %33 = load %struct.drm_crtc*, %struct.drm_crtc** %32, align 8
  store %struct.drm_crtc* %33, %struct.drm_crtc** %18, align 8
  %34 = load %struct.drm_plane_state*, %struct.drm_plane_state** %13, align 8
  %35 = call %struct.dm_plane_state* @to_dm_plane_state(%struct.drm_plane_state* %34)
  store %struct.dm_plane_state* %35, %struct.dm_plane_state** %23, align 8
  %36 = load %struct.drm_plane_state*, %struct.drm_plane_state** %12, align 8
  %37 = call %struct.dm_plane_state* @to_dm_plane_state(%struct.drm_plane_state* %36)
  store %struct.dm_plane_state* %37, %struct.dm_plane_state** %24, align 8
  %38 = load %struct.drm_plane*, %struct.drm_plane** %11, align 8
  %39 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DRM_PLANE_TYPE_CURSOR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %213

44:                                               ; preds = %7
  %45 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %10, align 8
  %46 = load %struct.drm_plane*, %struct.drm_plane** %11, align 8
  %47 = load %struct.drm_plane_state*, %struct.drm_plane_state** %12, align 8
  %48 = load %struct.drm_plane_state*, %struct.drm_plane_state** %13, align 8
  %49 = call i32 @should_reset_plane(%struct.drm_atomic_state* %45, %struct.drm_plane* %46, %struct.drm_plane_state* %47, %struct.drm_plane_state* %48)
  store i32 %49, i32* %25, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %111, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %25, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  store i32 0, i32* %8, align 4
  br label %213

56:                                               ; preds = %52
  %57 = load %struct.drm_crtc*, %struct.drm_crtc** %18, align 8
  %58 = icmp ne %struct.drm_crtc* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  store i32 0, i32* %8, align 4
  br label %213

60:                                               ; preds = %56
  %61 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %10, align 8
  %62 = load %struct.drm_crtc*, %struct.drm_crtc** %18, align 8
  %63 = call %struct.drm_crtc_state* @drm_atomic_get_old_crtc_state(%struct.drm_atomic_state* %61, %struct.drm_crtc* %62)
  store %struct.drm_crtc_state* %63, %struct.drm_crtc_state** %19, align 8
  %64 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %19, align 8
  %65 = call %struct.dm_crtc_state* @to_dm_crtc_state(%struct.drm_crtc_state* %64)
  store %struct.dm_crtc_state* %65, %struct.dm_crtc_state** %22, align 8
  %66 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %22, align 8
  %67 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %60
  store i32 0, i32* %8, align 4
  br label %213

71:                                               ; preds = %60
  %72 = load %struct.drm_plane*, %struct.drm_plane** %11, align 8
  %73 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.drm_crtc*, %struct.drm_crtc** %18, align 8
  %77 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %79)
  %81 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %10, align 8
  %82 = call i32 @dm_atomic_get_state(%struct.drm_atomic_state* %81, %struct.dm_atomic_state** %16)
  store i32 %82, i32* %26, align 4
  %83 = load i32, i32* %26, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %71
  %86 = load i32, i32* %26, align 4
  store i32 %86, i32* %8, align 4
  br label %213

87:                                               ; preds = %71
  %88 = load %struct.dc*, %struct.dc** %9, align 8
  %89 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %22, align 8
  %90 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.dm_plane_state*, %struct.dm_plane_state** %24, align 8
  %93 = getelementptr inbounds %struct.dm_plane_state, %struct.dm_plane_state* %92, i32 0, i32 0
  %94 = load %struct.dc_plane_state*, %struct.dc_plane_state** %93, align 8
  %95 = load %struct.dm_atomic_state*, %struct.dm_atomic_state** %16, align 8
  %96 = getelementptr inbounds %struct.dm_atomic_state, %struct.dm_atomic_state* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @dc_remove_plane_from_context(%struct.dc* %88, i32 %91, %struct.dc_plane_state* %94, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %87
  %101 = load i32, i32* @EINVAL, align 4
  store i32 %101, i32* %26, align 4
  %102 = load i32, i32* %26, align 4
  store i32 %102, i32* %8, align 4
  br label %213

103:                                              ; preds = %87
  %104 = load %struct.dm_plane_state*, %struct.dm_plane_state** %24, align 8
  %105 = getelementptr inbounds %struct.dm_plane_state, %struct.dm_plane_state* %104, i32 0, i32 0
  %106 = load %struct.dc_plane_state*, %struct.dc_plane_state** %105, align 8
  %107 = call i32 @dc_plane_state_release(%struct.dc_plane_state* %106)
  %108 = load %struct.dm_plane_state*, %struct.dm_plane_state** %23, align 8
  %109 = getelementptr inbounds %struct.dm_plane_state, %struct.dm_plane_state* %108, i32 0, i32 0
  store %struct.dc_plane_state* null, %struct.dc_plane_state** %109, align 8
  %110 = load i32*, i32** %15, align 8
  store i32 1, i32* %110, align 4
  br label %211

111:                                              ; preds = %44
  %112 = load %struct.drm_plane*, %struct.drm_plane** %11, align 8
  %113 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.drm_plane_state*, %struct.drm_plane_state** %13, align 8
  %116 = call i64 @drm_atomic_plane_disabling(i32 %114, %struct.drm_plane_state* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  store i32 0, i32* %8, align 4
  br label %213

119:                                              ; preds = %111
  %120 = load %struct.drm_crtc*, %struct.drm_crtc** %17, align 8
  %121 = icmp ne %struct.drm_crtc* %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %119
  store i32 0, i32* %8, align 4
  br label %213

123:                                              ; preds = %119
  %124 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %10, align 8
  %125 = load %struct.drm_crtc*, %struct.drm_crtc** %17, align 8
  %126 = call %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state* %124, %struct.drm_crtc* %125)
  store %struct.drm_crtc_state* %126, %struct.drm_crtc_state** %20, align 8
  %127 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %20, align 8
  %128 = call %struct.dm_crtc_state* @to_dm_crtc_state(%struct.drm_crtc_state* %127)
  store %struct.dm_crtc_state* %128, %struct.dm_crtc_state** %21, align 8
  %129 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %21, align 8
  %130 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %123
  store i32 0, i32* %8, align 4
  br label %213

134:                                              ; preds = %123
  %135 = load i32, i32* %25, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %134
  store i32 0, i32* %8, align 4
  br label %213

138:                                              ; preds = %134
  %139 = load %struct.dm_plane_state*, %struct.dm_plane_state** %23, align 8
  %140 = getelementptr inbounds %struct.dm_plane_state, %struct.dm_plane_state* %139, i32 0, i32 0
  %141 = load %struct.dc_plane_state*, %struct.dc_plane_state** %140, align 8
  %142 = call i32 @WARN_ON(%struct.dc_plane_state* %141)
  %143 = load %struct.dc*, %struct.dc** %9, align 8
  %144 = call %struct.dc_plane_state* @dc_create_plane_state(%struct.dc* %143)
  store %struct.dc_plane_state* %144, %struct.dc_plane_state** %27, align 8
  %145 = load %struct.dc_plane_state*, %struct.dc_plane_state** %27, align 8
  %146 = icmp ne %struct.dc_plane_state* %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %138
  %148 = load i32, i32* @ENOMEM, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %8, align 4
  br label %213

150:                                              ; preds = %138
  %151 = load %struct.drm_plane*, %struct.drm_plane** %11, align 8
  %152 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.drm_crtc*, %struct.drm_crtc** %17, align 8
  %156 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %154, i32 %158)
  %160 = load %struct.drm_crtc*, %struct.drm_crtc** %17, align 8
  %161 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %160, i32 0, i32 0
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.dc_plane_state*, %struct.dc_plane_state** %27, align 8
  %166 = load %struct.drm_plane_state*, %struct.drm_plane_state** %13, align 8
  %167 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %20, align 8
  %168 = call i32 @fill_dc_plane_attributes(i32 %164, %struct.dc_plane_state* %165, %struct.drm_plane_state* %166, %struct.drm_crtc_state* %167)
  store i32 %168, i32* %26, align 4
  %169 = load i32, i32* %26, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %150
  %172 = load %struct.dc_plane_state*, %struct.dc_plane_state** %27, align 8
  %173 = call i32 @dc_plane_state_release(%struct.dc_plane_state* %172)
  %174 = load i32, i32* %26, align 4
  store i32 %174, i32* %8, align 4
  br label %213

175:                                              ; preds = %150
  %176 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %10, align 8
  %177 = call i32 @dm_atomic_get_state(%struct.drm_atomic_state* %176, %struct.dm_atomic_state** %16)
  store i32 %177, i32* %26, align 4
  %178 = load i32, i32* %26, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %175
  %181 = load %struct.dc_plane_state*, %struct.dc_plane_state** %27, align 8
  %182 = call i32 @dc_plane_state_release(%struct.dc_plane_state* %181)
  %183 = load i32, i32* %26, align 4
  store i32 %183, i32* %8, align 4
  br label %213

184:                                              ; preds = %175
  %185 = load %struct.dc*, %struct.dc** %9, align 8
  %186 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %21, align 8
  %187 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.dc_plane_state*, %struct.dc_plane_state** %27, align 8
  %190 = load %struct.dm_atomic_state*, %struct.dm_atomic_state** %16, align 8
  %191 = getelementptr inbounds %struct.dm_atomic_state, %struct.dm_atomic_state* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @dc_add_plane_to_context(%struct.dc* %185, i32 %188, %struct.dc_plane_state* %189, i32 %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %200, label %195

195:                                              ; preds = %184
  %196 = load %struct.dc_plane_state*, %struct.dc_plane_state** %27, align 8
  %197 = call i32 @dc_plane_state_release(%struct.dc_plane_state* %196)
  %198 = load i32, i32* @EINVAL, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %8, align 4
  br label %213

200:                                              ; preds = %184
  %201 = load %struct.dc_plane_state*, %struct.dc_plane_state** %27, align 8
  %202 = load %struct.dm_plane_state*, %struct.dm_plane_state** %23, align 8
  %203 = getelementptr inbounds %struct.dm_plane_state, %struct.dm_plane_state* %202, i32 0, i32 0
  store %struct.dc_plane_state* %201, %struct.dc_plane_state** %203, align 8
  %204 = load %struct.dm_plane_state*, %struct.dm_plane_state** %23, align 8
  %205 = getelementptr inbounds %struct.dm_plane_state, %struct.dm_plane_state* %204, i32 0, i32 0
  %206 = load %struct.dc_plane_state*, %struct.dc_plane_state** %205, align 8
  %207 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  store i32 1, i32* %209, align 4
  %210 = load i32*, i32** %15, align 8
  store i32 1, i32* %210, align 4
  br label %211

211:                                              ; preds = %200, %103
  %212 = load i32, i32* %26, align 4
  store i32 %212, i32* %8, align 4
  br label %213

213:                                              ; preds = %211, %195, %180, %171, %147, %137, %133, %122, %118, %100, %85, %70, %59, %55, %43
  %214 = load i32, i32* %8, align 4
  ret i32 %214
}

declare dso_local %struct.dm_plane_state* @to_dm_plane_state(%struct.drm_plane_state*) #1

declare dso_local i32 @should_reset_plane(%struct.drm_atomic_state*, %struct.drm_plane*, %struct.drm_plane_state*, %struct.drm_plane_state*) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_old_crtc_state(%struct.drm_atomic_state*, %struct.drm_crtc*) #1

declare dso_local %struct.dm_crtc_state* @to_dm_crtc_state(%struct.drm_crtc_state*) #1

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*, i32, i32) #1

declare dso_local i32 @dm_atomic_get_state(%struct.drm_atomic_state*, %struct.dm_atomic_state**) #1

declare dso_local i32 @dc_remove_plane_from_context(%struct.dc*, i32, %struct.dc_plane_state*, i32) #1

declare dso_local i32 @dc_plane_state_release(%struct.dc_plane_state*) #1

declare dso_local i64 @drm_atomic_plane_disabling(i32, %struct.drm_plane_state*) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_new_crtc_state(%struct.drm_atomic_state*, %struct.drm_crtc*) #1

declare dso_local i32 @WARN_ON(%struct.dc_plane_state*) #1

declare dso_local %struct.dc_plane_state* @dc_create_plane_state(%struct.dc*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32) #1

declare dso_local i32 @fill_dc_plane_attributes(i32, %struct.dc_plane_state*, %struct.drm_plane_state*, %struct.drm_crtc_state*) #1

declare dso_local i32 @dc_add_plane_to_context(%struct.dc*, i32, %struct.dc_plane_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
