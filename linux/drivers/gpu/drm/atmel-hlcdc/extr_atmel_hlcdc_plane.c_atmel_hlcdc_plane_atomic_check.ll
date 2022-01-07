; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_plane.c_atmel_hlcdc_plane_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_plane.c_atmel_hlcdc_plane_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_plane_state = type { %struct.TYPE_11__, %struct.TYPE_11__, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.atmel_hlcdc_plane = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.atmel_hlcdc_layer_desc* }
%struct.atmel_hlcdc_layer_desc = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.atmel_hlcdc_plane_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, %struct.TYPE_9__, i64* }
%struct.TYPE_9__ = type { i32, %struct.drm_framebuffer*, i32 }
%struct.drm_framebuffer = type { i32*, %struct.TYPE_10__*, i64* }
%struct.TYPE_10__ = type { i32, i32, i32, i32*, i64 }
%struct.drm_display_mode = type { i32, i32 }
%struct.drm_crtc_state = type { %struct.drm_display_mode }

@INT_MAX = common dso_local global i32 0, align 4
@SUBPIXEL_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ATMEL_HLCDC_LAYER_MAX_PLANES = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @atmel_hlcdc_plane_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_hlcdc_plane_atomic_check(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.atmel_hlcdc_plane*, align 8
  %7 = alloca %struct.atmel_hlcdc_plane_state*, align 8
  %8 = alloca %struct.atmel_hlcdc_layer_desc*, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca %struct.drm_display_mode*, align 8
  %11 = alloca %struct.drm_crtc_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %18 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %19 = call %struct.atmel_hlcdc_plane* @drm_plane_to_atmel_hlcdc_plane(%struct.drm_plane* %18)
  store %struct.atmel_hlcdc_plane* %19, %struct.atmel_hlcdc_plane** %6, align 8
  %20 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %21 = call %struct.atmel_hlcdc_plane_state* @drm_plane_state_to_atmel_hlcdc_plane_state(%struct.drm_plane_state* %20)
  store %struct.atmel_hlcdc_plane_state* %21, %struct.atmel_hlcdc_plane_state** %7, align 8
  %22 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %6, align 8
  %23 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %24, align 8
  store %struct.atmel_hlcdc_layer_desc* %25, %struct.atmel_hlcdc_layer_desc** %8, align 8
  %26 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %27 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %26, i32 0, i32 12
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %28, align 8
  store %struct.drm_framebuffer* %29, %struct.drm_framebuffer** %9, align 8
  %30 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %31 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %30, i32 0, i32 12
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %37 = icmp ne %struct.drm_framebuffer* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35, %2
  store i32 0, i32* %3, align 4
  br label %633

39:                                               ; preds = %35
  %40 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %41 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %44 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.drm_crtc_state* @drm_atomic_get_existing_crtc_state(i32 %42, i32 %45)
  store %struct.drm_crtc_state* %46, %struct.drm_crtc_state** %11, align 8
  %47 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %11, align 8
  %48 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %47, i32 0, i32 0
  store %struct.drm_display_mode* %48, %struct.drm_display_mode** %10, align 8
  %49 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %50 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %11, align 8
  %51 = load i32, i32* @INT_MAX, align 4
  %52 = call i32 @drm_atomic_helper_check_plane_state(%struct.drm_plane_state* %49, %struct.drm_crtc_state* %50, i32 32, i32 %51, i32 1, i32 1)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %39
  %56 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %57 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %55, %39
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %3, align 4
  br label %633

62:                                               ; preds = %55
  %63 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %64 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %68 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %70 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %74 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %76 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %75, i32 0, i32 1
  %77 = call i8* @drm_rect_width(%struct.TYPE_11__* %76)
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %80 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %82 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %81, i32 0, i32 1
  %83 = call i8* @drm_rect_height(%struct.TYPE_11__* %82)
  %84 = ptrtoint i8* %83 to i32
  %85 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %86 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %88 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %92 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  %93 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %94 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %98 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 4
  %99 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %100 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %99, i32 0, i32 0
  %101 = call i8* @drm_rect_width(%struct.TYPE_11__* %100)
  %102 = ptrtoint i8* %101 to i32
  %103 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %104 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %103, i32 0, i32 6
  store i32 %102, i32* %104, align 8
  %105 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %106 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %105, i32 0, i32 0
  %107 = call i8* @drm_rect_height(%struct.TYPE_11__* %106)
  %108 = ptrtoint i8* %107 to i32
  %109 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %110 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %109, i32 0, i32 7
  store i32 %108, i32* %110, align 4
  %111 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %112 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %115 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %113, %116
  %118 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %119 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %117, %120
  %122 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %123 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %121, %124
  %126 = load i32, i32* @SUBPIXEL_MASK, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %62
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %3, align 4
  br label %633

132:                                              ; preds = %62
  %133 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %134 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = ashr i32 %135, 16
  store i32 %136, i32* %134, align 8
  %137 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %138 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = ashr i32 %139, 16
  store i32 %140, i32* %138, align 4
  %141 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %142 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = ashr i32 %143, 16
  store i32 %144, i32* %142, align 8
  %145 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %146 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = ashr i32 %147, 16
  store i32 %148, i32* %146, align 4
  %149 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %150 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %149, i32 0, i32 1
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %155 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %154, i32 0, i32 8
  store i32 %153, i32* %155, align 8
  %156 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %157 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %156, i32 0, i32 8
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @ATMEL_HLCDC_LAYER_MAX_PLANES, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %132
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %3, align 4
  br label %633

164:                                              ; preds = %132
  store i32 0, i32* %14, align 4
  br label %165

165:                                              ; preds = %550, %164
  %166 = load i32, i32* %14, align 4
  %167 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %168 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %167, i32 0, i32 8
  %169 = load i32, i32* %168, align 8
  %170 = icmp slt i32 %166, %169
  br i1 %170, label %171, label %553

171:                                              ; preds = %165
  store i32 0, i32* %15, align 4
  %172 = load i32, i32* %14, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %171
  %175 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %176 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %175, i32 0, i32 1
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  br label %181

180:                                              ; preds = %171
  br label %181

181:                                              ; preds = %180, %174
  %182 = phi i32 [ %179, %174 ], [ 1, %180 ]
  store i32 %182, i32* %16, align 4
  %183 = load i32, i32* %14, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %181
  %186 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %187 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %186, i32 0, i32 1
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  br label %192

191:                                              ; preds = %181
  br label %192

192:                                              ; preds = %191, %185
  %193 = phi i32 [ %190, %185 ], [ 1, %191 ]
  store i32 %193, i32* %17, align 4
  %194 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %195 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %194, i32 0, i32 1
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 3
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %14, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %204 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %203, i32 0, i32 9
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %14, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32 %202, i32* %208, align 4
  %209 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %210 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %209, i32 0, i32 9
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %14, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %192
  %218 = load i32, i32* @EINVAL, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %3, align 4
  br label %633

220:                                              ; preds = %192
  %221 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %222 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %221, i32 0, i32 12
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @DRM_MODE_ROTATE_MASK, align 4
  %226 = and i32 %224, %225
  switch i32 %226, label %471 [
    i32 128, label %227
    i32 130, label %312
    i32 129, label %394
    i32 131, label %470
  ]

227:                                              ; preds = %220
  %228 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %229 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %17, align 4
  %232 = sdiv i32 %230, %231
  %233 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %234 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %14, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = mul nsw i32 %232, %239
  store i32 %240, i32* %15, align 4
  %241 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %242 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %245 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = add nsw i32 %243, %246
  %248 = sub nsw i32 %247, 1
  %249 = load i32, i32* %16, align 4
  %250 = sdiv i32 %248, %249
  %251 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %252 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %251, i32 0, i32 9
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %14, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = mul nsw i32 %250, %257
  %259 = load i32, i32* %15, align 4
  %260 = add i32 %259, %258
  store i32 %260, i32* %15, align 4
  %261 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %262 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = sub nsw i32 %263, 1
  %265 = load i32, i32* %17, align 4
  %266 = sdiv i32 %264, %265
  %267 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %268 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %267, i32 0, i32 0
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %14, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = mul nsw i32 %266, %273
  %275 = sub nsw i32 0, %274
  %276 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %277 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %276, i32 0, i32 9
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %14, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = mul nsw i32 2, %282
  %284 = sub nsw i32 %275, %283
  %285 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %286 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %285, i32 0, i32 10
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* %14, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  store i32 %284, i32* %290, align 4
  %291 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %292 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %291, i32 0, i32 0
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %14, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %299 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %298, i32 0, i32 9
  %300 = load i32*, i32** %299, align 8
  %301 = load i32, i32* %14, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32, i32* %300, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = sub nsw i32 %297, %304
  %306 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %307 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %306, i32 0, i32 11
  %308 = load i32*, i32** %307, align 8
  %309 = load i32, i32* %14, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  store i32 %305, i32* %311, align 4
  br label %533

312:                                              ; preds = %220
  %313 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %314 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %317 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 4
  %319 = add nsw i32 %315, %318
  %320 = sub nsw i32 %319, 1
  %321 = load i32, i32* %17, align 4
  %322 = sdiv i32 %320, %321
  %323 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %324 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %323, i32 0, i32 0
  %325 = load i32*, i32** %324, align 8
  %326 = load i32, i32* %14, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = mul nsw i32 %322, %329
  store i32 %330, i32* %15, align 4
  %331 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %332 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %335 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %334, i32 0, i32 2
  %336 = load i32, i32* %335, align 8
  %337 = add nsw i32 %333, %336
  %338 = sub nsw i32 %337, 1
  %339 = load i32, i32* %16, align 4
  %340 = sdiv i32 %338, %339
  %341 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %342 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %341, i32 0, i32 9
  %343 = load i32*, i32** %342, align 8
  %344 = load i32, i32* %14, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = mul nsw i32 %340, %347
  %349 = load i32, i32* %15, align 4
  %350 = add i32 %349, %348
  store i32 %350, i32* %15, align 4
  %351 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %352 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 8
  %354 = sub nsw i32 %353, 1
  %355 = load i32, i32* %16, align 4
  %356 = sdiv i32 %354, %355
  %357 = sub nsw i32 %356, 1
  %358 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %359 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %358, i32 0, i32 9
  %360 = load i32*, i32** %359, align 8
  %361 = load i32, i32* %14, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %360, i64 %362
  %364 = load i32, i32* %363, align 4
  %365 = mul nsw i32 %357, %364
  %366 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %367 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %366, i32 0, i32 0
  %368 = load i32*, i32** %367, align 8
  %369 = load i32, i32* %14, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %368, i64 %370
  %372 = load i32, i32* %371, align 4
  %373 = sub nsw i32 %365, %372
  %374 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %375 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %374, i32 0, i32 10
  %376 = load i32*, i32** %375, align 8
  %377 = load i32, i32* %14, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %376, i64 %378
  store i32 %373, i32* %379, align 4
  %380 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %381 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %380, i32 0, i32 9
  %382 = load i32*, i32** %381, align 8
  %383 = load i32, i32* %14, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %382, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = mul nsw i32 -2, %386
  %388 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %389 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %388, i32 0, i32 11
  %390 = load i32*, i32** %389, align 8
  %391 = load i32, i32* %14, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  store i32 %387, i32* %393, align 4
  br label %533

394:                                              ; preds = %220
  %395 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %396 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %399 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %398, i32 0, i32 3
  %400 = load i32, i32* %399, align 4
  %401 = add nsw i32 %397, %400
  %402 = sub nsw i32 %401, 1
  %403 = load i32, i32* %17, align 4
  %404 = sdiv i32 %402, %403
  %405 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %406 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %405, i32 0, i32 0
  %407 = load i32*, i32** %406, align 8
  %408 = load i32, i32* %14, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %407, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = mul nsw i32 %404, %411
  store i32 %412, i32* %15, align 4
  %413 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %414 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = load i32, i32* %16, align 4
  %417 = sdiv i32 %415, %416
  %418 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %419 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %418, i32 0, i32 9
  %420 = load i32*, i32** %419, align 8
  %421 = load i32, i32* %14, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds i32, i32* %420, i64 %422
  %424 = load i32, i32* %423, align 4
  %425 = mul nsw i32 %417, %424
  %426 = load i32, i32* %15, align 4
  %427 = add i32 %426, %425
  store i32 %427, i32* %15, align 4
  %428 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %429 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %428, i32 0, i32 3
  %430 = load i32, i32* %429, align 4
  %431 = sub nsw i32 %430, 1
  %432 = load i32, i32* %17, align 4
  %433 = sdiv i32 %431, %432
  %434 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %435 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %434, i32 0, i32 0
  %436 = load i32*, i32** %435, align 8
  %437 = load i32, i32* %14, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %436, i64 %438
  %440 = load i32, i32* %439, align 4
  %441 = mul nsw i32 %433, %440
  %442 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %443 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %442, i32 0, i32 10
  %444 = load i32*, i32** %443, align 8
  %445 = load i32, i32* %14, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds i32, i32* %444, i64 %446
  store i32 %441, i32* %447, align 4
  %448 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %449 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %448, i32 0, i32 0
  %450 = load i32*, i32** %449, align 8
  %451 = load i32, i32* %14, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i32, i32* %450, i64 %452
  %454 = load i32, i32* %453, align 4
  %455 = sub nsw i32 0, %454
  %456 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %457 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %456, i32 0, i32 9
  %458 = load i32*, i32** %457, align 8
  %459 = load i32, i32* %14, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32, i32* %458, i64 %460
  %462 = load i32, i32* %461, align 4
  %463 = sub nsw i32 %455, %462
  %464 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %465 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %464, i32 0, i32 11
  %466 = load i32*, i32** %465, align 8
  %467 = load i32, i32* %14, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds i32, i32* %466, i64 %468
  store i32 %463, i32* %469, align 4
  br label %533

470:                                              ; preds = %220
  br label %471

471:                                              ; preds = %220, %470
  %472 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %473 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %472, i32 0, i32 1
  %474 = load i32, i32* %473, align 4
  %475 = load i32, i32* %17, align 4
  %476 = sdiv i32 %474, %475
  %477 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %478 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %477, i32 0, i32 0
  %479 = load i32*, i32** %478, align 8
  %480 = load i32, i32* %14, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i32, i32* %479, i64 %481
  %483 = load i32, i32* %482, align 4
  %484 = mul nsw i32 %476, %483
  store i32 %484, i32* %15, align 4
  %485 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %486 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  %488 = load i32, i32* %16, align 4
  %489 = sdiv i32 %487, %488
  %490 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %491 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %490, i32 0, i32 9
  %492 = load i32*, i32** %491, align 8
  %493 = load i32, i32* %14, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds i32, i32* %492, i64 %494
  %496 = load i32, i32* %495, align 4
  %497 = mul nsw i32 %489, %496
  %498 = load i32, i32* %15, align 4
  %499 = add i32 %498, %497
  store i32 %499, i32* %15, align 4
  %500 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %501 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %500, i32 0, i32 0
  %502 = load i32*, i32** %501, align 8
  %503 = load i32, i32* %14, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i32, i32* %502, i64 %504
  %506 = load i32, i32* %505, align 4
  %507 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %508 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %507, i32 0, i32 2
  %509 = load i32, i32* %508, align 8
  %510 = load i32, i32* %16, align 4
  %511 = sdiv i32 %509, %510
  %512 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %513 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %512, i32 0, i32 9
  %514 = load i32*, i32** %513, align 8
  %515 = load i32, i32* %14, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds i32, i32* %514, i64 %516
  %518 = load i32, i32* %517, align 4
  %519 = mul nsw i32 %511, %518
  %520 = sub nsw i32 %506, %519
  %521 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %522 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %521, i32 0, i32 10
  %523 = load i32*, i32** %522, align 8
  %524 = load i32, i32* %14, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i32, i32* %523, i64 %525
  store i32 %520, i32* %526, align 4
  %527 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %528 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %527, i32 0, i32 11
  %529 = load i32*, i32** %528, align 8
  %530 = load i32, i32* %14, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds i32, i32* %529, i64 %531
  store i32 0, i32* %532, align 4
  br label %533

533:                                              ; preds = %471, %394, %312, %227
  %534 = load i32, i32* %15, align 4
  %535 = zext i32 %534 to i64
  %536 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %537 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %536, i32 0, i32 2
  %538 = load i64*, i64** %537, align 8
  %539 = load i32, i32* %14, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds i64, i64* %538, i64 %540
  %542 = load i64, i64* %541, align 8
  %543 = add nsw i64 %535, %542
  %544 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %545 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %544, i32 0, i32 13
  %546 = load i64*, i64** %545, align 8
  %547 = load i32, i32* %14, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds i64, i64* %546, i64 %548
  store i64 %543, i64* %549, align 8
  br label %550

550:                                              ; preds = %533
  %551 = load i32, i32* %14, align 4
  %552 = add nsw i32 %551, 1
  store i32 %552, i32* %14, align 4
  br label %165

553:                                              ; preds = %165
  %554 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %555 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %554, i32 0, i32 12
  %556 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %555, i32 0, i32 0
  %557 = load i32, i32* %556, align 8
  %558 = call i64 @drm_rotation_90_or_270(i32 %557)
  %559 = icmp ne i64 %558, 0
  br i1 %559, label %560, label %572

560:                                              ; preds = %553
  %561 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %562 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %561, i32 0, i32 2
  %563 = load i32, i32* %562, align 8
  store i32 %563, i32* %12, align 4
  %564 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %565 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %564, i32 0, i32 3
  %566 = load i32, i32* %565, align 4
  %567 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %568 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %567, i32 0, i32 2
  store i32 %566, i32* %568, align 8
  %569 = load i32, i32* %12, align 4
  %570 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %571 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %570, i32 0, i32 3
  store i32 %569, i32* %571, align 4
  br label %572

572:                                              ; preds = %560, %553
  %573 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %8, align 8
  %574 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, %struct.atmel_hlcdc_layer_desc* %573, i32 0, i32 0
  %575 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %574, i32 0, i32 1
  %576 = load i32, i32* %575, align 4
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %597, label %578

578:                                              ; preds = %572
  %579 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %580 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %579, i32 0, i32 0
  %581 = load i32, i32* %580, align 4
  %582 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %583 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %582, i32 0, i32 6
  %584 = load i32, i32* %583, align 8
  %585 = icmp ne i32 %581, %584
  br i1 %585, label %594, label %586

586:                                              ; preds = %578
  %587 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %588 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %587, i32 0, i32 1
  %589 = load i32, i32* %588, align 4
  %590 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %591 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %590, i32 0, i32 7
  %592 = load i32, i32* %591, align 4
  %593 = icmp ne i32 %589, %592
  br i1 %593, label %594, label %597

594:                                              ; preds = %586, %578
  %595 = load i32, i32* @EINVAL, align 4
  %596 = sub nsw i32 0, %595
  store i32 %596, i32* %3, align 4
  br label %633

597:                                              ; preds = %586, %572
  %598 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %599 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %598, i32 0, i32 7
  %600 = load i32, i32* %599, align 4
  %601 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %602 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %601, i32 0, i32 3
  %603 = load i32, i32* %602, align 4
  %604 = icmp ne i32 %600, %603
  br i1 %604, label %613, label %605

605:                                              ; preds = %597
  %606 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %607 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %606, i32 0, i32 6
  %608 = load i32, i32* %607, align 8
  %609 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %610 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %609, i32 0, i32 2
  %611 = load i32, i32* %610, align 8
  %612 = icmp ne i32 %608, %611
  br i1 %612, label %613, label %632

613:                                              ; preds = %605, %597
  %614 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %8, align 8
  %615 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, %struct.atmel_hlcdc_layer_desc* %614, i32 0, i32 0
  %616 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %615, i32 0, i32 0
  %617 = load i32, i32* %616, align 4
  %618 = icmp ne i32 %617, 0
  br i1 %618, label %619, label %629

619:                                              ; preds = %613
  %620 = load %struct.atmel_hlcdc_plane_state*, %struct.atmel_hlcdc_plane_state** %7, align 8
  %621 = getelementptr inbounds %struct.atmel_hlcdc_plane_state, %struct.atmel_hlcdc_plane_state* %620, i32 0, i32 12
  %622 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %621, i32 0, i32 1
  %623 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %622, align 8
  %624 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %623, i32 0, i32 1
  %625 = load %struct.TYPE_10__*, %struct.TYPE_10__** %624, align 8
  %626 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %625, i32 0, i32 4
  %627 = load i64, i64* %626, align 8
  %628 = icmp ne i64 %627, 0
  br i1 %628, label %629, label %632

629:                                              ; preds = %619, %613
  %630 = load i32, i32* @EINVAL, align 4
  %631 = sub nsw i32 0, %630
  store i32 %631, i32* %3, align 4
  br label %633

632:                                              ; preds = %619, %605
  store i32 0, i32* %3, align 4
  br label %633

633:                                              ; preds = %632, %629, %594, %217, %161, %129, %60, %38
  %634 = load i32, i32* %3, align 4
  ret i32 %634
}

declare dso_local %struct.atmel_hlcdc_plane* @drm_plane_to_atmel_hlcdc_plane(%struct.drm_plane*) #1

declare dso_local %struct.atmel_hlcdc_plane_state* @drm_plane_state_to_atmel_hlcdc_plane_state(%struct.drm_plane_state*) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_existing_crtc_state(i32, i32) #1

declare dso_local i32 @drm_atomic_helper_check_plane_state(%struct.drm_plane_state*, %struct.drm_crtc_state*, i32, i32, i32, i32) #1

declare dso_local i8* @drm_rect_width(%struct.TYPE_11__*) #1

declare dso_local i8* @drm_rect_height(%struct.TYPE_11__*) #1

declare dso_local i64 @drm_rotation_90_or_270(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
