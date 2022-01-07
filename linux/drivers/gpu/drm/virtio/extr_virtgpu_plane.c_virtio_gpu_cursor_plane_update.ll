; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_plane.c_virtio_gpu_cursor_plane_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/virtio/extr_virtgpu_plane.c_virtio_gpu_cursor_plane_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_16__*, %struct.drm_device* }
%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_18__*, i64, i64, i64 }
%struct.TYPE_18__ = type { i64, i64 }
%struct.drm_device = type { %struct.virtio_gpu_device* }
%struct.virtio_gpu_device = type { i32 }
%struct.drm_plane_state = type { %struct.TYPE_18__*, i64 }
%struct.virtio_gpu_output = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__, i8*, i8*, i8* }
%struct.TYPE_14__ = type { i8*, i8* }
%struct.TYPE_13__ = type { i8* }
%struct.virtio_gpu_framebuffer = type { %struct.TYPE_17__*, %struct.TYPE_10__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_10__ = type { i32* }
%struct.virtio_gpu_object = type { %struct.TYPE_12__, i64, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"update, handle %d, pos +%d+%d, hot %d,%d\0A\00", align 1
@VIRTIO_GPU_CMD_UPDATE_CURSOR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"move +%d+%d\0A\00", align 1
@VIRTIO_GPU_CMD_MOVE_CURSOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @virtio_gpu_cursor_plane_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtio_gpu_cursor_plane_update(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.virtio_gpu_device*, align 8
  %7 = alloca %struct.virtio_gpu_output*, align 8
  %8 = alloca %struct.virtio_gpu_framebuffer*, align 8
  %9 = alloca %struct.virtio_gpu_object*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %12 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %13 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %12, i32 0, i32 1
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %5, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %16, align 8
  store %struct.virtio_gpu_device* %17, %struct.virtio_gpu_device** %6, align 8
  store %struct.virtio_gpu_output* null, %struct.virtio_gpu_output** %7, align 8
  store %struct.virtio_gpu_object* null, %struct.virtio_gpu_object** %9, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %19 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %18, i32 0, i32 0
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %26 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %25, i32 0, i32 0
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.virtio_gpu_output* @drm_crtc_to_virtio_gpu_output(i64 %29)
  store %struct.virtio_gpu_output* %30, %struct.virtio_gpu_output** %7, align 8
  br label %31

31:                                               ; preds = %24, %2
  %32 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %33 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %38 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call %struct.virtio_gpu_output* @drm_crtc_to_virtio_gpu_output(i64 %39)
  store %struct.virtio_gpu_output* %40, %struct.virtio_gpu_output** %7, align 8
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.virtio_gpu_output*, %struct.virtio_gpu_output** %7, align 8
  %43 = icmp ne %struct.virtio_gpu_output* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @WARN_ON(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %287

49:                                               ; preds = %41
  %50 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %51 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %50, i32 0, i32 0
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %53, align 8
  %55 = icmp ne %struct.TYPE_18__* %54, null
  br i1 %55, label %56, label %73

56:                                               ; preds = %49
  %57 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %58 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %57, i32 0, i32 0
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %60, align 8
  %62 = call %struct.virtio_gpu_framebuffer* @to_virtio_gpu_framebuffer(%struct.TYPE_18__* %61)
  store %struct.virtio_gpu_framebuffer* %62, %struct.virtio_gpu_framebuffer** %8, align 8
  %63 = load %struct.virtio_gpu_framebuffer*, %struct.virtio_gpu_framebuffer** %8, align 8
  %64 = getelementptr inbounds %struct.virtio_gpu_framebuffer, %struct.virtio_gpu_framebuffer* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.virtio_gpu_object* @gem_to_virtio_gpu_obj(i32 %68)
  store %struct.virtio_gpu_object* %69, %struct.virtio_gpu_object** %9, align 8
  %70 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %9, align 8
  %71 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %10, align 8
  br label %74

73:                                               ; preds = %49
  store i64 0, i64* %10, align 8
  br label %74

74:                                               ; preds = %73, %56
  %75 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %9, align 8
  %76 = icmp ne %struct.virtio_gpu_object* %75, null
  br i1 %76, label %77, label %138

77:                                               ; preds = %74
  %78 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %9, align 8
  %79 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %138

82:                                               ; preds = %77
  %83 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %84 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %83, i32 0, i32 0
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %86, align 8
  %88 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %89 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %88, i32 0, i32 0
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %89, align 8
  %91 = icmp ne %struct.TYPE_18__* %87, %90
  br i1 %91, label %92, label %138

92:                                               ; preds = %82
  %93 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %6, align 8
  %94 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %9, align 8
  %95 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %96 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %95, i32 0, i32 0
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = call i8* @cpu_to_le32(i64 %99)
  %101 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %102 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %101, i32 0, i32 0
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = call i8* @cpu_to_le32(i64 %105)
  %107 = load %struct.virtio_gpu_framebuffer*, %struct.virtio_gpu_framebuffer** %8, align 8
  %108 = getelementptr inbounds %struct.virtio_gpu_framebuffer, %struct.virtio_gpu_framebuffer* %107, i32 0, i32 0
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %108, align 8
  %110 = call i32 @virtio_gpu_cmd_transfer_to_host_2d(%struct.virtio_gpu_device* %93, %struct.virtio_gpu_object* %94, i32 0, i8* %100, i8* %106, i32 0, i32 0, %struct.TYPE_17__* %109)
  %111 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %9, align 8
  %112 = call i32 @virtio_gpu_object_reserve(%struct.virtio_gpu_object* %111, i32 0)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %137, label %115

115:                                              ; preds = %92
  %116 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %9, align 8
  %117 = getelementptr inbounds %struct.virtio_gpu_object, %struct.virtio_gpu_object* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.virtio_gpu_framebuffer*, %struct.virtio_gpu_framebuffer** %8, align 8
  %122 = getelementptr inbounds %struct.virtio_gpu_framebuffer, %struct.virtio_gpu_framebuffer* %121, i32 0, i32 0
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 0
  %125 = call i32 @dma_resv_add_excl_fence(i32 %120, i32* %124)
  %126 = load %struct.virtio_gpu_framebuffer*, %struct.virtio_gpu_framebuffer** %8, align 8
  %127 = getelementptr inbounds %struct.virtio_gpu_framebuffer, %struct.virtio_gpu_framebuffer* %126, i32 0, i32 0
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = call i32 @dma_fence_put(i32* %129)
  %131 = load %struct.virtio_gpu_framebuffer*, %struct.virtio_gpu_framebuffer** %8, align 8
  %132 = getelementptr inbounds %struct.virtio_gpu_framebuffer, %struct.virtio_gpu_framebuffer* %131, i32 0, i32 0
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %132, align 8
  %133 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %9, align 8
  %134 = call i32 @virtio_gpu_object_unreserve(%struct.virtio_gpu_object* %133)
  %135 = load %struct.virtio_gpu_object*, %struct.virtio_gpu_object** %9, align 8
  %136 = call i32 @virtio_gpu_object_wait(%struct.virtio_gpu_object* %135, i32 0)
  br label %137

137:                                              ; preds = %115, %92
  br label %138

138:                                              ; preds = %137, %82, %77, %74
  %139 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %140 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %139, i32 0, i32 0
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %142, align 8
  %144 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %145 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %144, i32 0, i32 0
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %145, align 8
  %147 = icmp ne %struct.TYPE_18__* %143, %146
  br i1 %147, label %148, label %245

148:                                              ; preds = %138
  %149 = load i64, i64* %10, align 8
  %150 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %151 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %150, i32 0, i32 0
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %156 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %155, i32 0, i32 0
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %161 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %160, i32 0, i32 0
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %163, align 8
  %165 = icmp ne %struct.TYPE_18__* %164, null
  br i1 %165, label %166, label %174

166:                                              ; preds = %148
  %167 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %168 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %167, i32 0, i32 0
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  br label %175

174:                                              ; preds = %148
  br label %175

175:                                              ; preds = %174, %166
  %176 = phi i64 [ %173, %166 ], [ 0, %174 ]
  %177 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %178 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %177, i32 0, i32 0
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %180, align 8
  %182 = icmp ne %struct.TYPE_18__* %181, null
  br i1 %182, label %183, label %191

183:                                              ; preds = %175
  %184 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %185 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %184, i32 0, i32 0
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  br label %192

191:                                              ; preds = %175
  br label %192

192:                                              ; preds = %191, %183
  %193 = phi i64 [ %190, %183 ], [ 0, %191 ]
  %194 = call i32 (i8*, i64, i64, ...) @DRM_DEBUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %149, i64 %154, i64 %159, i64 %176, i64 %193)
  %195 = load i64, i64* @VIRTIO_GPU_CMD_UPDATE_CURSOR, align 8
  %196 = call i8* @cpu_to_le32(i64 %195)
  %197 = load %struct.virtio_gpu_output*, %struct.virtio_gpu_output** %7, align 8
  %198 = getelementptr inbounds %struct.virtio_gpu_output, %struct.virtio_gpu_output* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 0
  store i8* %196, i8** %200, align 8
  %201 = load i64, i64* %10, align 8
  %202 = call i8* @cpu_to_le32(i64 %201)
  %203 = load %struct.virtio_gpu_output*, %struct.virtio_gpu_output** %7, align 8
  %204 = getelementptr inbounds %struct.virtio_gpu_output, %struct.virtio_gpu_output* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 4
  store i8* %202, i8** %205, align 8
  %206 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %207 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %206, i32 0, i32 0
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 2
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %209, align 8
  %211 = icmp ne %struct.TYPE_18__* %210, null
  br i1 %211, label %212, label %235

212:                                              ; preds = %192
  %213 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %214 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %213, i32 0, i32 0
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 2
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = call i8* @cpu_to_le32(i64 %219)
  %221 = load %struct.virtio_gpu_output*, %struct.virtio_gpu_output** %7, align 8
  %222 = getelementptr inbounds %struct.virtio_gpu_output, %struct.virtio_gpu_output* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 3
  store i8* %220, i8** %223, align 8
  %224 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %225 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %224, i32 0, i32 0
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 2
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = call i8* @cpu_to_le32(i64 %230)
  %232 = load %struct.virtio_gpu_output*, %struct.virtio_gpu_output** %7, align 8
  %233 = getelementptr inbounds %struct.virtio_gpu_output, %struct.virtio_gpu_output* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 2
  store i8* %231, i8** %234, align 8
  br label %244

235:                                              ; preds = %192
  %236 = call i8* @cpu_to_le32(i64 0)
  %237 = load %struct.virtio_gpu_output*, %struct.virtio_gpu_output** %7, align 8
  %238 = getelementptr inbounds %struct.virtio_gpu_output, %struct.virtio_gpu_output* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 3
  store i8* %236, i8** %239, align 8
  %240 = call i8* @cpu_to_le32(i64 0)
  %241 = load %struct.virtio_gpu_output*, %struct.virtio_gpu_output** %7, align 8
  %242 = getelementptr inbounds %struct.virtio_gpu_output, %struct.virtio_gpu_output* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 2
  store i8* %240, i8** %243, align 8
  br label %244

244:                                              ; preds = %235, %212
  br label %263

245:                                              ; preds = %138
  %246 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %247 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %246, i32 0, i32 0
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %252 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %251, i32 0, i32 0
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = call i32 (i8*, i64, i64, ...) @DRM_DEBUG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64 %250, i64 %255)
  %257 = load i64, i64* @VIRTIO_GPU_CMD_MOVE_CURSOR, align 8
  %258 = call i8* @cpu_to_le32(i64 %257)
  %259 = load %struct.virtio_gpu_output*, %struct.virtio_gpu_output** %7, align 8
  %260 = getelementptr inbounds %struct.virtio_gpu_output, %struct.virtio_gpu_output* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 0
  store i8* %258, i8** %262, align 8
  br label %263

263:                                              ; preds = %245, %244
  %264 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %265 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %264, i32 0, i32 0
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = call i8* @cpu_to_le32(i64 %268)
  %270 = load %struct.virtio_gpu_output*, %struct.virtio_gpu_output** %7, align 8
  %271 = getelementptr inbounds %struct.virtio_gpu_output, %struct.virtio_gpu_output* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 1
  store i8* %269, i8** %273, align 8
  %274 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %275 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %274, i32 0, i32 0
  %276 = load %struct.TYPE_16__*, %struct.TYPE_16__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = call i8* @cpu_to_le32(i64 %278)
  %280 = load %struct.virtio_gpu_output*, %struct.virtio_gpu_output** %7, align 8
  %281 = getelementptr inbounds %struct.virtio_gpu_output, %struct.virtio_gpu_output* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 0
  store i8* %279, i8** %283, align 8
  %284 = load %struct.virtio_gpu_device*, %struct.virtio_gpu_device** %6, align 8
  %285 = load %struct.virtio_gpu_output*, %struct.virtio_gpu_output** %7, align 8
  %286 = call i32 @virtio_gpu_cursor_ping(%struct.virtio_gpu_device* %284, %struct.virtio_gpu_output* %285)
  br label %287

287:                                              ; preds = %263, %48
  ret void
}

declare dso_local %struct.virtio_gpu_output* @drm_crtc_to_virtio_gpu_output(i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.virtio_gpu_framebuffer* @to_virtio_gpu_framebuffer(%struct.TYPE_18__*) #1

declare dso_local %struct.virtio_gpu_object* @gem_to_virtio_gpu_obj(i32) #1

declare dso_local i32 @virtio_gpu_cmd_transfer_to_host_2d(%struct.virtio_gpu_device*, %struct.virtio_gpu_object*, i32, i8*, i8*, i32, i32, %struct.TYPE_17__*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @virtio_gpu_object_reserve(%struct.virtio_gpu_object*, i32) #1

declare dso_local i32 @dma_resv_add_excl_fence(i32, i32*) #1

declare dso_local i32 @dma_fence_put(i32*) #1

declare dso_local i32 @virtio_gpu_object_unreserve(%struct.virtio_gpu_object*) #1

declare dso_local i32 @virtio_gpu_object_wait(%struct.virtio_gpu_object*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i64, i64, ...) #1

declare dso_local i32 @virtio_gpu_cursor_ping(%struct.virtio_gpu_device*, %struct.virtio_gpu_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
