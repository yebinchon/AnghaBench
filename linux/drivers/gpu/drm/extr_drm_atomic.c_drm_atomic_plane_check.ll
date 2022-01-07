; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic.c_drm_atomic_plane_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic.c_drm_atomic_plane_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_state = type { i32, i32, i32, i32, i64, i64, i64, i64, %struct.drm_framebuffer*, %struct.drm_crtc*, %struct.drm_plane* }
%struct.drm_framebuffer = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.drm_crtc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_plane = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.drm_mode_rect = type { i32, i32, i32, i32 }
%struct.drm_format_name_buf = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"[PLANE:%d:%s] CRTC set but no FB\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"[PLANE:%d:%s] FB set but no CRTC\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Invalid [CRTC:%d:%s] for [PLANE:%d:%s]\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"[PLANE:%d:%s] invalid pixel format %s, modifier 0x%llx\0A\00", align 1
@INT_MAX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [52 x i8] c"[PLANE:%d:%s] invalid CRTC coordinates %ux%u+%d+%d\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [85 x i8] c"[PLANE:%d:%s] invalid source coordinates %u.%06ux%u.%06u+%u.%06u+%u.%06u (fb %ux%u)\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"[PLANE:%d:%s] invalid damage clip %d %d %d %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"[PLANE:%d:%s] switching CRTC directly\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane_state*, %struct.drm_plane_state*)* @drm_atomic_plane_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_atomic_plane_check(%struct.drm_plane_state* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.drm_plane*, align 8
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_mode_rect*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.drm_format_name_buf, align 4
  store %struct.drm_plane_state* %0, %struct.drm_plane_state** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %15 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %16 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %15, i32 0, i32 10
  %17 = load %struct.drm_plane*, %struct.drm_plane** %16, align 8
  store %struct.drm_plane* %17, %struct.drm_plane** %6, align 8
  %18 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %19 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %18, i32 0, i32 9
  %20 = load %struct.drm_crtc*, %struct.drm_crtc** %19, align 8
  store %struct.drm_crtc* %20, %struct.drm_crtc** %7, align 8
  %21 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %22 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %21, i32 0, i32 8
  %23 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %22, align 8
  store %struct.drm_framebuffer* %23, %struct.drm_framebuffer** %8, align 8
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %25 = icmp ne %struct.drm_crtc* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %2
  %27 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %28 = icmp ne %struct.drm_framebuffer* %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %26
  %30 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %31 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %35 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %363

40:                                               ; preds = %26, %2
  %41 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %42 = icmp ne %struct.drm_framebuffer* %41, null
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %45 = icmp ne %struct.drm_crtc* %44, null
  br i1 %45, label %57, label %46

46:                                               ; preds = %43
  %47 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %48 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %52 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %363

57:                                               ; preds = %43, %40
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %60 = icmp ne %struct.drm_crtc* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %363

62:                                               ; preds = %58
  %63 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %64 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %67 = call i32 @drm_crtc_mask(%struct.drm_crtc* %66)
  %68 = and i32 %65, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %88, label %70

70:                                               ; preds = %62
  %71 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %72 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %76 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %79 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %83 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %77, i32 %81, i32 %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %363

88:                                               ; preds = %62
  %89 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %90 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %91 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %90, i32 0, i32 3
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %96 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @drm_plane_check_pixel_format(%struct.drm_plane* %89, i32 %94, i32 %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %120

101:                                              ; preds = %88
  %102 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %103 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %107 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %110 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %109, i32 0, i32 3
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @drm_get_format_name(i32 %113, %struct.drm_format_name_buf* %14)
  %115 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %116 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %105, i32 %108, i32 %114, i32 %117)
  %119 = load i32, i32* %13, align 4
  store i32 %119, i32* %3, align 4
  br label %363

120:                                              ; preds = %88
  %121 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %122 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %121, i32 0, i32 7
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @INT_MAX, align 8
  %125 = icmp sgt i64 %123, %124
  br i1 %125, label %152, label %126

126:                                              ; preds = %120
  %127 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %128 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %127, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @INT_MAX, align 8
  %131 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %132 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %131, i32 0, i32 7
  %133 = load i64, i64* %132, align 8
  %134 = sub nsw i64 %130, %133
  %135 = icmp sgt i64 %129, %134
  br i1 %135, label %152, label %136

136:                                              ; preds = %126
  %137 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %138 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %137, i32 0, i32 6
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @INT_MAX, align 8
  %141 = icmp sgt i64 %139, %140
  br i1 %141, label %152, label %142

142:                                              ; preds = %136
  %143 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %144 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %143, i32 0, i32 4
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @INT_MAX, align 8
  %147 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %148 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %147, i32 0, i32 6
  %149 = load i64, i64* %148, align 8
  %150 = sub nsw i64 %146, %149
  %151 = icmp sgt i64 %145, %150
  br i1 %151, label %152, label %175

152:                                              ; preds = %142, %136, %126, %120
  %153 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %154 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %158 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %161 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %160, i32 0, i32 7
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %164 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %163, i32 0, i32 6
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %167 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %166, i32 0, i32 5
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %170 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %169, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %156, i32 %159, i64 %162, i64 %165, i64 %168, i64 %171)
  %173 = load i32, i32* @ERANGE, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %3, align 4
  br label %363

175:                                              ; preds = %142
  %176 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %177 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = shl i32 %178, 16
  store i32 %179, i32* %9, align 4
  %180 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %181 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = shl i32 %182, 16
  store i32 %183, i32* %10, align 4
  %184 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %185 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* %9, align 4
  %188 = icmp ugt i32 %186, %187
  br i1 %188, label %215, label %189

189:                                              ; preds = %175
  %190 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %191 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %9, align 4
  %194 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %195 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = sub i32 %193, %196
  %198 = icmp ugt i32 %192, %197
  br i1 %198, label %215, label %199

199:                                              ; preds = %189
  %200 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %201 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* %10, align 4
  %204 = icmp ugt i32 %202, %203
  br i1 %204, label %215, label %205

205:                                              ; preds = %199
  %206 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %207 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %10, align 4
  %210 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %211 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = sub i32 %209, %212
  %214 = icmp ugt i32 %208, %213
  br i1 %214, label %215, label %272

215:                                              ; preds = %205, %199, %189, %175
  %216 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %217 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %221 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %224 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = lshr i32 %225, 16
  %227 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %228 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = and i32 %229, 65535
  %231 = mul i32 %230, 15625
  %232 = lshr i32 %231, 10
  %233 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %234 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = lshr i32 %235, 16
  %237 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %238 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = and i32 %239, 65535
  %241 = mul i32 %240, 15625
  %242 = lshr i32 %241, 10
  %243 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %244 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = lshr i32 %245, 16
  %247 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %248 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = and i32 %249, 65535
  %251 = mul i32 %250, 15625
  %252 = lshr i32 %251, 10
  %253 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %254 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = lshr i32 %255, 16
  %257 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %258 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = and i32 %259, 65535
  %261 = mul i32 %260, 15625
  %262 = lshr i32 %261, 10
  %263 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %264 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %267 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.5, i64 0, i64 0), i32 %219, i32 %222, i32 %226, i32 %232, i32 %236, i32 %242, i32 %246, i32 %252, i32 %256, i32 %262, i32 %265, i32 %268)
  %270 = load i32, i32* @ENOSPC, align 4
  %271 = sub nsw i32 0, %270
  store i32 %271, i32* %3, align 4
  br label %363

272:                                              ; preds = %205
  %273 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %274 = call %struct.drm_mode_rect* @drm_plane_get_damage_clips(%struct.drm_plane_state* %273)
  store %struct.drm_mode_rect* %274, %struct.drm_mode_rect** %11, align 8
  %275 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %276 = call i64 @drm_plane_get_damage_clips_count(%struct.drm_plane_state* %275)
  store i64 %276, i64* %12, align 8
  br label %277

277:                                              ; preds = %341, %272
  %278 = load i64, i64* %12, align 8
  %279 = icmp sgt i64 %278, 0
  br i1 %279, label %280, label %346

280:                                              ; preds = %277
  %281 = load %struct.drm_mode_rect*, %struct.drm_mode_rect** %11, align 8
  %282 = getelementptr inbounds %struct.drm_mode_rect, %struct.drm_mode_rect* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.drm_mode_rect*, %struct.drm_mode_rect** %11, align 8
  %285 = getelementptr inbounds %struct.drm_mode_rect, %struct.drm_mode_rect* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = icmp uge i32 %283, %286
  br i1 %287, label %318, label %288

288:                                              ; preds = %280
  %289 = load %struct.drm_mode_rect*, %struct.drm_mode_rect** %11, align 8
  %290 = getelementptr inbounds %struct.drm_mode_rect, %struct.drm_mode_rect* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.drm_mode_rect*, %struct.drm_mode_rect** %11, align 8
  %293 = getelementptr inbounds %struct.drm_mode_rect, %struct.drm_mode_rect* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 4
  %295 = icmp uge i32 %291, %294
  br i1 %295, label %318, label %296

296:                                              ; preds = %288
  %297 = load %struct.drm_mode_rect*, %struct.drm_mode_rect** %11, align 8
  %298 = getelementptr inbounds %struct.drm_mode_rect, %struct.drm_mode_rect* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = icmp ult i32 %299, 0
  br i1 %300, label %318, label %301

301:                                              ; preds = %296
  %302 = load %struct.drm_mode_rect*, %struct.drm_mode_rect** %11, align 8
  %303 = getelementptr inbounds %struct.drm_mode_rect, %struct.drm_mode_rect* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 4
  %305 = icmp ult i32 %304, 0
  br i1 %305, label %318, label %306

306:                                              ; preds = %301
  %307 = load %struct.drm_mode_rect*, %struct.drm_mode_rect** %11, align 8
  %308 = getelementptr inbounds %struct.drm_mode_rect, %struct.drm_mode_rect* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* %9, align 4
  %311 = icmp ugt i32 %309, %310
  br i1 %311, label %318, label %312

312:                                              ; preds = %306
  %313 = load %struct.drm_mode_rect*, %struct.drm_mode_rect** %11, align 8
  %314 = getelementptr inbounds %struct.drm_mode_rect, %struct.drm_mode_rect* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* %10, align 4
  %317 = icmp ugt i32 %315, %316
  br i1 %317, label %318, label %341

318:                                              ; preds = %312, %306, %301, %296, %288, %280
  %319 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %320 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %319, i32 0, i32 2
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %324 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.drm_mode_rect*, %struct.drm_mode_rect** %11, align 8
  %327 = getelementptr inbounds %struct.drm_mode_rect, %struct.drm_mode_rect* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.drm_mode_rect*, %struct.drm_mode_rect** %11, align 8
  %330 = getelementptr inbounds %struct.drm_mode_rect, %struct.drm_mode_rect* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.drm_mode_rect*, %struct.drm_mode_rect** %11, align 8
  %333 = getelementptr inbounds %struct.drm_mode_rect, %struct.drm_mode_rect* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.drm_mode_rect*, %struct.drm_mode_rect** %11, align 8
  %336 = getelementptr inbounds %struct.drm_mode_rect, %struct.drm_mode_rect* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 4
  %338 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %322, i32 %325, i32 %328, i32 %331, i32 %334, i32 %337)
  %339 = load i32, i32* @EINVAL, align 4
  %340 = sub nsw i32 0, %339
  store i32 %340, i32* %3, align 4
  br label %363

341:                                              ; preds = %312
  %342 = load %struct.drm_mode_rect*, %struct.drm_mode_rect** %11, align 8
  %343 = getelementptr inbounds %struct.drm_mode_rect, %struct.drm_mode_rect* %342, i32 1
  store %struct.drm_mode_rect* %343, %struct.drm_mode_rect** %11, align 8
  %344 = load i64, i64* %12, align 8
  %345 = add nsw i64 %344, -1
  store i64 %345, i64* %12, align 8
  br label %277

346:                                              ; preds = %277
  %347 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %348 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %349 = call i64 @plane_switching_crtc(%struct.drm_plane_state* %347, %struct.drm_plane_state* %348)
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %362

351:                                              ; preds = %346
  %352 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %353 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %352, i32 0, i32 2
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.drm_plane*, %struct.drm_plane** %6, align 8
  %357 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %355, i32 %358)
  %360 = load i32, i32* @EINVAL, align 4
  %361 = sub nsw i32 0, %360
  store i32 %361, i32* %3, align 4
  br label %363

362:                                              ; preds = %346
  store i32 0, i32* %3, align 4
  br label %363

363:                                              ; preds = %362, %351, %318, %215, %152, %101, %70, %61, %46, %29
  %364 = load i32, i32* %3, align 4
  ret i32 %364
}

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*, i32, i32, ...) #1

declare dso_local i32 @drm_crtc_mask(%struct.drm_crtc*) #1

declare dso_local i32 @drm_plane_check_pixel_format(%struct.drm_plane*, i32, i32) #1

declare dso_local i32 @drm_get_format_name(i32, %struct.drm_format_name_buf*) #1

declare dso_local %struct.drm_mode_rect* @drm_plane_get_damage_clips(%struct.drm_plane_state*) #1

declare dso_local i64 @drm_plane_get_damage_clips_count(%struct.drm_plane_state*) #1

declare dso_local i64 @plane_switching_crtc(%struct.drm_plane_state*, %struct.drm_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
