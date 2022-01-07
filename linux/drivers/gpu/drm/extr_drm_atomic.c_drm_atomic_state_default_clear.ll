; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic.c_drm_atomic_state_default_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic.c_drm_atomic_state_default_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_atomic_state = type { i32, i32, i32*, %struct.TYPE_16__*, %struct.TYPE_14__*, %struct.TYPE_12__*, %struct.TYPE_10__*, %struct.drm_device* }
%struct.TYPE_16__ = type { i32*, i32*, i32*, %struct.drm_private_obj* }
%struct.drm_private_obj = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.drm_private_obj*, i32*)* }
%struct.TYPE_14__ = type { i32*, i32*, i32*, %struct.drm_plane* }
%struct.drm_plane = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.drm_plane*, i32*)* }
%struct.TYPE_12__ = type { i32*, i32*, i32*, i32*, %struct.drm_crtc* }
%struct.drm_crtc = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.drm_crtc*, i32*)* }
%struct.TYPE_10__ = type { i32*, i32*, i32*, %struct.drm_connector* }
%struct.drm_connector = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.drm_connector*, i32*)* }
%struct.drm_device = type { %struct.drm_mode_config }
%struct.drm_mode_config = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Clearing atomic state %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_atomic_state_default_clear(%struct.drm_atomic_state* %0) #0 {
  %2 = alloca %struct.drm_atomic_state*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_mode_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_plane*, align 8
  %9 = alloca %struct.drm_private_obj*, align 8
  store %struct.drm_atomic_state* %0, %struct.drm_atomic_state** %2, align 8
  %10 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %11 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %10, i32 0, i32 7
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %3, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  store %struct.drm_mode_config* %14, %struct.drm_mode_config** %4, align 8
  %15 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %16 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.drm_atomic_state* %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %81, %1
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %20 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %84

23:                                               ; preds = %17
  %24 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %25 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %24, i32 0, i32 6
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  %31 = load %struct.drm_connector*, %struct.drm_connector** %30, align 8
  store %struct.drm_connector* %31, %struct.drm_connector** %6, align 8
  %32 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %33 = icmp ne %struct.drm_connector* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %23
  br label %81

35:                                               ; preds = %23
  %36 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %37 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %36, i32 0, i32 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32 (%struct.drm_connector*, i32*)*, i32 (%struct.drm_connector*, i32*)** %39, align 8
  %41 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %42 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %43 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %42, i32 0, i32 6
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 %40(%struct.drm_connector* %41, i32* %49)
  %51 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %52 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %51, i32 0, i32 6
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 3
  store %struct.drm_connector* null, %struct.drm_connector** %57, align 8
  %58 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %59 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %58, i32 0, i32 6
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  store i32* null, i32** %64, align 8
  %65 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %66 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %65, i32 0, i32 6
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  store i32* null, i32** %71, align 8
  %72 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %73 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %72, i32 0, i32 6
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  store i32* null, i32** %78, align 8
  %79 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %80 = call i32 @drm_connector_put(%struct.drm_connector* %79)
  br label %81

81:                                               ; preds = %35, %34
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %17

84:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %174, %84
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.drm_mode_config*, %struct.drm_mode_config** %4, align 8
  %88 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %177

91:                                               ; preds = %85
  %92 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %93 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %92, i32 0, i32 5
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 4
  %99 = load %struct.drm_crtc*, %struct.drm_crtc** %98, align 8
  store %struct.drm_crtc* %99, %struct.drm_crtc** %7, align 8
  %100 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %101 = icmp ne %struct.drm_crtc* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %91
  br label %174

103:                                              ; preds = %91
  %104 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %105 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %104, i32 0, i32 0
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32 (%struct.drm_crtc*, i32*)*, i32 (%struct.drm_crtc*, i32*)** %107, align 8
  %109 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %110 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %111 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %110, i32 0, i32 5
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 %108(%struct.drm_crtc* %109, i32* %117)
  %119 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %120 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %119, i32 0, i32 5
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 4
  store %struct.drm_crtc* null, %struct.drm_crtc** %125, align 8
  %126 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %127 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %126, i32 0, i32 5
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 3
  store i32* null, i32** %132, align 8
  %133 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %134 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %133, i32 0, i32 5
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 2
  store i32* null, i32** %139, align 8
  %140 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %141 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %140, i32 0, i32 5
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 1
  store i32* null, i32** %146, align 8
  %147 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %148 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %147, i32 0, i32 5
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %173

156:                                              ; preds = %103
  %157 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %158 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %157, i32 0, i32 5
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @drm_crtc_commit_put(i32* %164)
  %166 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %167 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %166, i32 0, i32 5
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  store i32* null, i32** %172, align 8
  br label %173

173:                                              ; preds = %156, %103
  br label %174

174:                                              ; preds = %173, %102
  %175 = load i32, i32* %5, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %5, align 4
  br label %85

177:                                              ; preds = %85
  store i32 0, i32* %5, align 4
  br label %178

178:                                              ; preds = %240, %177
  %179 = load i32, i32* %5, align 4
  %180 = load %struct.drm_mode_config*, %struct.drm_mode_config** %4, align 8
  %181 = getelementptr inbounds %struct.drm_mode_config, %struct.drm_mode_config* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = icmp slt i32 %179, %182
  br i1 %183, label %184, label %243

184:                                              ; preds = %178
  %185 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %186 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %185, i32 0, i32 4
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %186, align 8
  %188 = load i32, i32* %5, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 3
  %192 = load %struct.drm_plane*, %struct.drm_plane** %191, align 8
  store %struct.drm_plane* %192, %struct.drm_plane** %8, align 8
  %193 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %194 = icmp ne %struct.drm_plane* %193, null
  br i1 %194, label %196, label %195

195:                                              ; preds = %184
  br label %240

196:                                              ; preds = %184
  %197 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %198 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %197, i32 0, i32 0
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 0
  %201 = load i32 (%struct.drm_plane*, i32*)*, i32 (%struct.drm_plane*, i32*)** %200, align 8
  %202 = load %struct.drm_plane*, %struct.drm_plane** %8, align 8
  %203 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %204 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %203, i32 0, i32 4
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %204, align 8
  %206 = load i32, i32* %5, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 2
  %210 = load i32*, i32** %209, align 8
  %211 = call i32 %201(%struct.drm_plane* %202, i32* %210)
  %212 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %213 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %212, i32 0, i32 4
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %213, align 8
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 3
  store %struct.drm_plane* null, %struct.drm_plane** %218, align 8
  %219 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %220 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %219, i32 0, i32 4
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %220, align 8
  %222 = load i32, i32* %5, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 2
  store i32* null, i32** %225, align 8
  %226 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %227 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %226, i32 0, i32 4
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %227, align 8
  %229 = load i32, i32* %5, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 1
  store i32* null, i32** %232, align 8
  %233 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %234 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %233, i32 0, i32 4
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %234, align 8
  %236 = load i32, i32* %5, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 0
  store i32* null, i32** %239, align 8
  br label %240

240:                                              ; preds = %196, %195
  %241 = load i32, i32* %5, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %5, align 4
  br label %178

243:                                              ; preds = %178
  store i32 0, i32* %5, align 4
  br label %244

244:                                              ; preds = %302, %243
  %245 = load i32, i32* %5, align 4
  %246 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %247 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = icmp slt i32 %245, %248
  br i1 %249, label %250, label %305

250:                                              ; preds = %244
  %251 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %252 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %251, i32 0, i32 3
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %252, align 8
  %254 = load i32, i32* %5, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i32 0, i32 3
  %258 = load %struct.drm_private_obj*, %struct.drm_private_obj** %257, align 8
  store %struct.drm_private_obj* %258, %struct.drm_private_obj** %9, align 8
  %259 = load %struct.drm_private_obj*, %struct.drm_private_obj** %9, align 8
  %260 = getelementptr inbounds %struct.drm_private_obj, %struct.drm_private_obj* %259, i32 0, i32 0
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 0
  %263 = load i32 (%struct.drm_private_obj*, i32*)*, i32 (%struct.drm_private_obj*, i32*)** %262, align 8
  %264 = load %struct.drm_private_obj*, %struct.drm_private_obj** %9, align 8
  %265 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %266 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %265, i32 0, i32 3
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %266, align 8
  %268 = load i32, i32* %5, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 2
  %272 = load i32*, i32** %271, align 8
  %273 = call i32 %263(%struct.drm_private_obj* %264, i32* %272)
  %274 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %275 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %274, i32 0, i32 3
  %276 = load %struct.TYPE_16__*, %struct.TYPE_16__** %275, align 8
  %277 = load i32, i32* %5, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 3
  store %struct.drm_private_obj* null, %struct.drm_private_obj** %280, align 8
  %281 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %282 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %281, i32 0, i32 3
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %282, align 8
  %284 = load i32, i32* %5, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i32 0, i32 2
  store i32* null, i32** %287, align 8
  %288 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %289 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %288, i32 0, i32 3
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %289, align 8
  %291 = load i32, i32* %5, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %293, i32 0, i32 1
  store i32* null, i32** %294, align 8
  %295 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %296 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %295, i32 0, i32 3
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %296, align 8
  %298 = load i32, i32* %5, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 0
  store i32* null, i32** %301, align 8
  br label %302

302:                                              ; preds = %250
  %303 = load i32, i32* %5, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %5, align 4
  br label %244

305:                                              ; preds = %244
  %306 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %307 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %306, i32 0, i32 1
  store i32 0, i32* %307, align 4
  %308 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %309 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %308, i32 0, i32 2
  %310 = load i32*, i32** %309, align 8
  %311 = icmp ne i32* %310, null
  br i1 %311, label %312, label %319

312:                                              ; preds = %305
  %313 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %314 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %313, i32 0, i32 2
  %315 = load i32*, i32** %314, align 8
  %316 = call i32 @drm_crtc_commit_put(i32* %315)
  %317 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %2, align 8
  %318 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %317, i32 0, i32 2
  store i32* null, i32** %318, align 8
  br label %319

319:                                              ; preds = %312, %305
  ret void
}

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_connector_put(%struct.drm_connector*) #1

declare dso_local i32 @drm_crtc_commit_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
