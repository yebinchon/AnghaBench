; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_cursor_atomic_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_cursor_atomic_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_12__*, %struct.drm_device* }
%struct.TYPE_12__ = type { i64, i64, i32, %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i64, i64, %struct.drm_gem_object** }
%struct.drm_gem_object = type { i32 }
%struct.drm_device = type { %struct.qxl_device* }
%struct.qxl_device = type { i32 }
%struct.drm_plane_state = type { %struct.drm_framebuffer* }
%struct.qxl_crtc = type { %struct.qxl_bo* }
%struct.qxl_bo = type { i32 }
%struct.qxl_release = type { i32 }
%struct.qxl_cursor_cmd = type { i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.qxl_cursor = type { i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i64, i64 }
%struct.TYPE_7__ = type { i32, i32, i64, i64, i32, i64 }

@QXL_RELEASE_CURSOR_CMD = common dso_local global i32 0, align 4
@SPICE_CURSOR_TYPE_ALPHA = common dso_local global i32 0, align 4
@QXL_CURSOR_SET = common dso_local global i32 0, align 4
@QXL_CURSOR_MOVE = common dso_local global i32 0, align 4
@QXL_CMD_CURSOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @qxl_cursor_atomic_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qxl_cursor_atomic_update(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.qxl_device*, align 8
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca %struct.qxl_crtc*, align 8
  %9 = alloca %struct.qxl_release*, align 8
  %10 = alloca %struct.qxl_cursor_cmd*, align 8
  %11 = alloca %struct.qxl_cursor*, align 8
  %12 = alloca %struct.drm_gem_object*, align 8
  %13 = alloca %struct.qxl_bo*, align 8
  %14 = alloca %struct.qxl_bo*, align 8
  %15 = alloca %struct.qxl_bo*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %19 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %20 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %19, i32 0, i32 1
  %21 = load %struct.drm_device*, %struct.drm_device** %20, align 8
  store %struct.drm_device* %21, %struct.drm_device** %5, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  %24 = load %struct.qxl_device*, %struct.qxl_device** %23, align 8
  store %struct.qxl_device* %24, %struct.qxl_device** %6, align 8
  %25 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %26 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %25, i32 0, i32 0
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 3
  %29 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %28, align 8
  store %struct.drm_framebuffer* %29, %struct.drm_framebuffer** %7, align 8
  %30 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %31 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %30, i32 0, i32 0
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.qxl_crtc* @to_qxl_crtc(i32 %34)
  store %struct.qxl_crtc* %35, %struct.qxl_crtc** %8, align 8
  store %struct.qxl_bo* null, %struct.qxl_bo** %13, align 8
  store %struct.qxl_bo* null, %struct.qxl_bo** %14, align 8
  store %struct.qxl_bo* null, %struct.qxl_bo** %15, align 8
  store i32 16384, i32* %18, align 4
  %36 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %37 = load i32, i32* @QXL_RELEASE_CURSOR_CMD, align 4
  %38 = call i32 @qxl_alloc_release_reserved(%struct.qxl_device* %36, i32 40, i32 %37, %struct.qxl_release** %9, i32* null)
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %16, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  br label %240

42:                                               ; preds = %2
  %43 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %44 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %45 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %44, i32 0, i32 0
  %46 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %45, align 8
  %47 = icmp ne %struct.drm_framebuffer* %43, %46
  br i1 %47, label %48, label %165

48:                                               ; preds = %42
  %49 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %50 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %49, i32 0, i32 2
  %51 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %50, align 8
  %52 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %51, i64 0
  %53 = load %struct.drm_gem_object*, %struct.drm_gem_object** %52, align 8
  store %struct.drm_gem_object* %53, %struct.drm_gem_object** %12, align 8
  %54 = load %struct.drm_gem_object*, %struct.drm_gem_object** %12, align 8
  %55 = call %struct.qxl_bo* @gem_to_qxl_bo(%struct.drm_gem_object* %54)
  store %struct.qxl_bo* %55, %struct.qxl_bo** %14, align 8
  %56 = load %struct.qxl_bo*, %struct.qxl_bo** %14, align 8
  %57 = call i32 @qxl_bo_kmap(%struct.qxl_bo* %56, i8** %17)
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  br label %236

61:                                               ; preds = %48
  %62 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %63 = load %struct.qxl_release*, %struct.qxl_release** %9, align 8
  %64 = load i32, i32* %18, align 4
  %65 = sext i32 %64 to i64
  %66 = add i64 72, %65
  %67 = trunc i64 %66 to i32
  %68 = call i32 @qxl_alloc_bo_reserved(%struct.qxl_device* %62, %struct.qxl_release* %63, i32 %67, %struct.qxl_bo** %13)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  br label %233

72:                                               ; preds = %61
  %73 = load %struct.qxl_bo*, %struct.qxl_bo** %13, align 8
  %74 = call i32 @qxl_bo_pin(%struct.qxl_bo* %73)
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %16, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %231

78:                                               ; preds = %72
  %79 = load %struct.qxl_release*, %struct.qxl_release** %9, align 8
  %80 = call i32 @qxl_release_reserve_list(%struct.qxl_release* %79, i32 1)
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %16, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %228

84:                                               ; preds = %78
  %85 = load %struct.qxl_bo*, %struct.qxl_bo** %13, align 8
  %86 = bitcast %struct.qxl_cursor** %11 to i8**
  %87 = call i32 @qxl_bo_kmap(%struct.qxl_bo* %85, i8** %86)
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %225

91:                                               ; preds = %84
  %92 = load %struct.qxl_cursor*, %struct.qxl_cursor** %11, align 8
  %93 = getelementptr inbounds %struct.qxl_cursor, %struct.qxl_cursor* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 5
  store i64 0, i64* %94, align 8
  %95 = load i32, i32* @SPICE_CURSOR_TYPE_ALPHA, align 4
  %96 = load %struct.qxl_cursor*, %struct.qxl_cursor** %11, align 8
  %97 = getelementptr inbounds %struct.qxl_cursor, %struct.qxl_cursor* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 4
  store i32 %95, i32* %98, align 8
  %99 = load %struct.qxl_cursor*, %struct.qxl_cursor** %11, align 8
  %100 = getelementptr inbounds %struct.qxl_cursor, %struct.qxl_cursor* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  store i32 64, i32* %101, align 8
  %102 = load %struct.qxl_cursor*, %struct.qxl_cursor** %11, align 8
  %103 = getelementptr inbounds %struct.qxl_cursor, %struct.qxl_cursor* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  store i32 64, i32* %104, align 4
  %105 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %106 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.qxl_cursor*, %struct.qxl_cursor** %11, align 8
  %109 = getelementptr inbounds %struct.qxl_cursor, %struct.qxl_cursor* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 3
  store i64 %107, i64* %110, align 8
  %111 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %112 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.qxl_cursor*, %struct.qxl_cursor** %11, align 8
  %115 = getelementptr inbounds %struct.qxl_cursor, %struct.qxl_cursor* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  store i64 %113, i64* %116, align 8
  %117 = load i32, i32* %18, align 4
  %118 = load %struct.qxl_cursor*, %struct.qxl_cursor** %11, align 8
  %119 = getelementptr inbounds %struct.qxl_cursor, %struct.qxl_cursor* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load %struct.qxl_cursor*, %struct.qxl_cursor** %11, align 8
  %121 = getelementptr inbounds %struct.qxl_cursor, %struct.qxl_cursor* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 3
  store i64 0, i64* %122, align 8
  %123 = load %struct.qxl_cursor*, %struct.qxl_cursor** %11, align 8
  %124 = getelementptr inbounds %struct.qxl_cursor, %struct.qxl_cursor* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  store i64 0, i64* %125, align 8
  %126 = load i32, i32* %18, align 4
  %127 = load %struct.qxl_cursor*, %struct.qxl_cursor** %11, align 8
  %128 = getelementptr inbounds %struct.qxl_cursor, %struct.qxl_cursor* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 8
  %130 = load %struct.qxl_cursor*, %struct.qxl_cursor** %11, align 8
  %131 = getelementptr inbounds %struct.qxl_cursor, %struct.qxl_cursor* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i8*, i8** %17, align 8
  %135 = load i32, i32* %18, align 4
  %136 = call i32 @memcpy(i32 %133, i8* %134, i32 %135)
  %137 = load %struct.qxl_bo*, %struct.qxl_bo** %13, align 8
  %138 = call i32 @qxl_bo_kunmap(%struct.qxl_bo* %137)
  %139 = load %struct.qxl_bo*, %struct.qxl_bo** %14, align 8
  %140 = call i32 @qxl_bo_kunmap(%struct.qxl_bo* %139)
  %141 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %142 = load %struct.qxl_release*, %struct.qxl_release** %9, align 8
  %143 = call i64 @qxl_release_map(%struct.qxl_device* %141, %struct.qxl_release* %142)
  %144 = inttoptr i64 %143 to %struct.qxl_cursor_cmd*
  store %struct.qxl_cursor_cmd* %144, %struct.qxl_cursor_cmd** %10, align 8
  %145 = load %struct.qxl_cursor_cmd*, %struct.qxl_cursor_cmd** %10, align 8
  %146 = getelementptr inbounds %struct.qxl_cursor_cmd, %struct.qxl_cursor_cmd* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  store i32 1, i32* %148, align 8
  %149 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %150 = load %struct.qxl_bo*, %struct.qxl_bo** %13, align 8
  %151 = call i32 @qxl_bo_physical_address(%struct.qxl_device* %149, %struct.qxl_bo* %150, i32 0)
  %152 = load %struct.qxl_cursor_cmd*, %struct.qxl_cursor_cmd** %10, align 8
  %153 = getelementptr inbounds %struct.qxl_cursor_cmd, %struct.qxl_cursor_cmd* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  store i32 %151, i32* %155, align 4
  %156 = load i32, i32* @QXL_CURSOR_SET, align 4
  %157 = load %struct.qxl_cursor_cmd*, %struct.qxl_cursor_cmd** %10, align 8
  %158 = getelementptr inbounds %struct.qxl_cursor_cmd, %struct.qxl_cursor_cmd* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  %159 = load %struct.qxl_crtc*, %struct.qxl_crtc** %8, align 8
  %160 = getelementptr inbounds %struct.qxl_crtc, %struct.qxl_crtc* %159, i32 0, i32 0
  %161 = load %struct.qxl_bo*, %struct.qxl_bo** %160, align 8
  store %struct.qxl_bo* %161, %struct.qxl_bo** %15, align 8
  %162 = load %struct.qxl_bo*, %struct.qxl_bo** %13, align 8
  %163 = load %struct.qxl_crtc*, %struct.qxl_crtc** %8, align 8
  %164 = getelementptr inbounds %struct.qxl_crtc, %struct.qxl_crtc* %163, i32 0, i32 0
  store %struct.qxl_bo* %162, %struct.qxl_bo** %164, align 8
  store %struct.qxl_bo* null, %struct.qxl_bo** %13, align 8
  br label %179

165:                                              ; preds = %42
  %166 = load %struct.qxl_release*, %struct.qxl_release** %9, align 8
  %167 = call i32 @qxl_release_reserve_list(%struct.qxl_release* %166, i32 1)
  store i32 %167, i32* %16, align 4
  %168 = load i32, i32* %16, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  br label %236

171:                                              ; preds = %165
  %172 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %173 = load %struct.qxl_release*, %struct.qxl_release** %9, align 8
  %174 = call i64 @qxl_release_map(%struct.qxl_device* %172, %struct.qxl_release* %173)
  %175 = inttoptr i64 %174 to %struct.qxl_cursor_cmd*
  store %struct.qxl_cursor_cmd* %175, %struct.qxl_cursor_cmd** %10, align 8
  %176 = load i32, i32* @QXL_CURSOR_MOVE, align 4
  %177 = load %struct.qxl_cursor_cmd*, %struct.qxl_cursor_cmd** %10, align 8
  %178 = getelementptr inbounds %struct.qxl_cursor_cmd, %struct.qxl_cursor_cmd* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 8
  br label %179

179:                                              ; preds = %171, %91
  %180 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %181 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %180, i32 0, i32 0
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %186 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %184, %187
  %189 = load %struct.qxl_cursor_cmd*, %struct.qxl_cursor_cmd** %10, align 8
  %190 = getelementptr inbounds %struct.qxl_cursor_cmd, %struct.qxl_cursor_cmd* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 1
  store i64 %188, i64* %192, align 8
  %193 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %194 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %193, i32 0, i32 0
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %199 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = add nsw i64 %197, %200
  %202 = load %struct.qxl_cursor_cmd*, %struct.qxl_cursor_cmd** %10, align 8
  %203 = getelementptr inbounds %struct.qxl_cursor_cmd, %struct.qxl_cursor_cmd* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  store i64 %201, i64* %205, align 8
  %206 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %207 = load %struct.qxl_release*, %struct.qxl_release** %9, align 8
  %208 = load %struct.qxl_cursor_cmd*, %struct.qxl_cursor_cmd** %10, align 8
  %209 = getelementptr inbounds %struct.qxl_cursor_cmd, %struct.qxl_cursor_cmd* %208, i32 0, i32 0
  %210 = call i32 @qxl_release_unmap(%struct.qxl_device* %206, %struct.qxl_release* %207, i32* %209)
  %211 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %212 = load %struct.qxl_release*, %struct.qxl_release** %9, align 8
  %213 = load i32, i32* @QXL_CMD_CURSOR, align 4
  %214 = call i32 @qxl_push_cursor_ring_release(%struct.qxl_device* %211, %struct.qxl_release* %212, i32 %213, i32 0)
  %215 = load %struct.qxl_release*, %struct.qxl_release** %9, align 8
  %216 = call i32 @qxl_release_fence_buffer_objects(%struct.qxl_release* %215)
  %217 = load %struct.qxl_bo*, %struct.qxl_bo** %15, align 8
  %218 = icmp ne %struct.qxl_bo* %217, null
  br i1 %218, label %219, label %222

219:                                              ; preds = %179
  %220 = load %struct.qxl_bo*, %struct.qxl_bo** %15, align 8
  %221 = call i32 @qxl_bo_unpin(%struct.qxl_bo* %220)
  br label %222

222:                                              ; preds = %219, %179
  %223 = call i32 @qxl_bo_unref(%struct.qxl_bo** %15)
  %224 = call i32 @qxl_bo_unref(%struct.qxl_bo** %13)
  br label %240

225:                                              ; preds = %90
  %226 = load %struct.qxl_release*, %struct.qxl_release** %9, align 8
  %227 = call i32 @qxl_release_backoff_reserve_list(%struct.qxl_release* %226)
  br label %228

228:                                              ; preds = %225, %83
  %229 = load %struct.qxl_bo*, %struct.qxl_bo** %13, align 8
  %230 = call i32 @qxl_bo_unpin(%struct.qxl_bo* %229)
  br label %231

231:                                              ; preds = %228, %77
  %232 = call i32 @qxl_bo_unref(%struct.qxl_bo** %13)
  br label %233

233:                                              ; preds = %231, %71
  %234 = load %struct.qxl_bo*, %struct.qxl_bo** %14, align 8
  %235 = call i32 @qxl_bo_kunmap(%struct.qxl_bo* %234)
  br label %236

236:                                              ; preds = %233, %170, %60
  %237 = load %struct.qxl_device*, %struct.qxl_device** %6, align 8
  %238 = load %struct.qxl_release*, %struct.qxl_release** %9, align 8
  %239 = call i32 @qxl_release_free(%struct.qxl_device* %237, %struct.qxl_release* %238)
  br label %240

240:                                              ; preds = %236, %222, %41
  ret void
}

declare dso_local %struct.qxl_crtc* @to_qxl_crtc(i32) #1

declare dso_local i32 @qxl_alloc_release_reserved(%struct.qxl_device*, i32, i32, %struct.qxl_release**, i32*) #1

declare dso_local %struct.qxl_bo* @gem_to_qxl_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @qxl_bo_kmap(%struct.qxl_bo*, i8**) #1

declare dso_local i32 @qxl_alloc_bo_reserved(%struct.qxl_device*, %struct.qxl_release*, i32, %struct.qxl_bo**) #1

declare dso_local i32 @qxl_bo_pin(%struct.qxl_bo*) #1

declare dso_local i32 @qxl_release_reserve_list(%struct.qxl_release*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @qxl_bo_kunmap(%struct.qxl_bo*) #1

declare dso_local i64 @qxl_release_map(%struct.qxl_device*, %struct.qxl_release*) #1

declare dso_local i32 @qxl_bo_physical_address(%struct.qxl_device*, %struct.qxl_bo*, i32) #1

declare dso_local i32 @qxl_release_unmap(%struct.qxl_device*, %struct.qxl_release*, i32*) #1

declare dso_local i32 @qxl_push_cursor_ring_release(%struct.qxl_device*, %struct.qxl_release*, i32, i32) #1

declare dso_local i32 @qxl_release_fence_buffer_objects(%struct.qxl_release*) #1

declare dso_local i32 @qxl_bo_unpin(%struct.qxl_bo*) #1

declare dso_local i32 @qxl_bo_unref(%struct.qxl_bo**) #1

declare dso_local i32 @qxl_release_backoff_reserve_list(%struct.qxl_release*) #1

declare dso_local i32 @qxl_release_free(%struct.qxl_device*, %struct.qxl_release*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
