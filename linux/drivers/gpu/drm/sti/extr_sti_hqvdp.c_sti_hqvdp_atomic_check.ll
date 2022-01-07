; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hqvdp.c_sti_hqvdp_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hqvdp.c_sti_hqvdp_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_plane_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_framebuffer*, %struct.drm_crtc* }
%struct.drm_framebuffer = type { i32 }
%struct.drm_crtc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sti_plane = type { i32 }
%struct.sti_hqvdp = type { i32, i32, i32, i32, i32 }
%struct.drm_crtc_state = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i64, i64, i64 }

@.str = private unnamed_addr constant [32 x i8] c"Scaling beyond HW capabilities\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Can't get CMA GEM object for fb\0A\00", align 1
@MAX_WIDTH = common dso_local global i32 0, align 4
@MIN_WIDTH = common dso_local global i32 0, align 4
@MAX_HEIGHT = common dso_local global i32 0, align 4
@MIN_HEIGHT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Invalid in/out size %dx%d -> %dx%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to prepare/enable pix main clk\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Cannot register VTG notifier\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"CRTC:%d (%s) drm plane:%d (%s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"%s dst=(%dx%d)@(%d,%d) - src=(%dx%d)@(%d,%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @sti_hqvdp_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_hqvdp_atomic_check(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.sti_plane*, align 8
  %7 = alloca %struct.sti_hqvdp*, align 8
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca %struct.drm_crtc_state*, align 8
  %11 = alloca %struct.drm_display_mode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %20 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %21 = call %struct.sti_plane* @to_sti_plane(%struct.drm_plane* %20)
  store %struct.sti_plane* %21, %struct.sti_plane** %6, align 8
  %22 = load %struct.sti_plane*, %struct.sti_plane** %6, align 8
  %23 = call %struct.sti_hqvdp* @to_sti_hqvdp(%struct.sti_plane* %22)
  store %struct.sti_hqvdp* %23, %struct.sti_hqvdp** %7, align 8
  %24 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %25 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %24, i32 0, i32 10
  %26 = load %struct.drm_crtc*, %struct.drm_crtc** %25, align 8
  store %struct.drm_crtc* %26, %struct.drm_crtc** %8, align 8
  %27 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %28 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %27, i32 0, i32 9
  %29 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %28, align 8
  store %struct.drm_framebuffer* %29, %struct.drm_framebuffer** %9, align 8
  %30 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %31 = icmp ne %struct.drm_crtc* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %34 = icmp ne %struct.drm_framebuffer* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32, %2
  store i32 0, i32* %3, align 4
  br label %224

36:                                               ; preds = %32
  %37 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %38 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %41 = call %struct.drm_crtc_state* @drm_atomic_get_crtc_state(i32 %39, %struct.drm_crtc* %40)
  store %struct.drm_crtc_state* %41, %struct.drm_crtc_state** %10, align 8
  %42 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %10, align 8
  %43 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %42, i32 0, i32 0
  store %struct.drm_display_mode* %43, %struct.drm_display_mode** %11, align 8
  %44 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %45 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %12, align 4
  %47 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %48 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %13, align 4
  %50 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %51 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %54 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = sub nsw i64 %55, %57
  %59 = call i32 @clamp_val(i32 %52, i32 0, i64 %58)
  store i32 %59, i32* %14, align 4
  %60 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %61 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %64 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = sub nsw i64 %65, %67
  %69 = call i32 @clamp_val(i32 %62, i32 0, i64 %68)
  store i32 %69, i32* %15, align 4
  %70 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %71 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = ashr i32 %72, 16
  store i32 %73, i32* %16, align 4
  %74 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %75 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 16
  store i32 %77, i32* %17, align 4
  %78 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %79 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = ashr i32 %80, 16
  store i32 %81, i32* %18, align 4
  %82 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %83 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = ashr i32 %84, 16
  store i32 %85, i32* %19, align 4
  %86 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %87 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %36
  %91 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %7, align 8
  %92 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %93 = load i32, i32* %18, align 4
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @sti_hqvdp_check_hw_scaling(%struct.sti_hqvdp* %91, %struct.drm_display_mode* %92, i32 %93, i32 %94, i32 %95, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %90
  %100 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %224

103:                                              ; preds = %90, %36
  %104 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %105 = call i32 @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer* %104, i32 0)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %224

111:                                              ; preds = %103
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @ALIGN(i32 %112, i32 2)
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %15, align 4
  %115 = call i32 @ALIGN(i32 %114, i32 2)
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* @MAX_WIDTH, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %147, label %119

119:                                              ; preds = %111
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* @MIN_WIDTH, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %147, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* @MAX_HEIGHT, align 4
  %126 = icmp sgt i32 %124, %125
  br i1 %126, label %147, label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %19, align 4
  %129 = load i32, i32* @MIN_HEIGHT, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %147, label %131

131:                                              ; preds = %127
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* @MAX_WIDTH, align 4
  %134 = icmp sgt i32 %132, %133
  br i1 %134, label %147, label %135

135:                                              ; preds = %131
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* @MIN_WIDTH, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %147, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* @MAX_HEIGHT, align 4
  %142 = icmp sgt i32 %140, %141
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* @MIN_HEIGHT, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %155

147:                                              ; preds = %143, %139, %135, %131, %127, %123, %119, %111
  %148 = load i32, i32* %18, align 4
  %149 = load i32, i32* %19, align 4
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* %15, align 4
  %152 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %148, i32 %149, i32 %150, i32 %151)
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %3, align 4
  br label %224

155:                                              ; preds = %143
  %156 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %7, align 8
  %157 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %155
  %161 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %7, align 8
  %162 = call i32 @sti_hqvdp_start_xp70(%struct.sti_hqvdp* %161)
  br label %163

163:                                              ; preds = %160, %155
  %164 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %7, align 8
  %165 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %198, label %168

168:                                              ; preds = %163
  %169 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %7, align 8
  %170 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i64 @clk_prepare_enable(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %168
  %175 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %176 = load i32, i32* @EINVAL, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %3, align 4
  br label %224

178:                                              ; preds = %168
  %179 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %7, align 8
  %180 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %7, align 8
  %183 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %182, i32 0, i32 2
  %184 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %185 = call i64 @sti_vtg_register_client(i32 %181, i32* %183, %struct.drm_crtc* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %178
  %188 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %189 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %7, align 8
  %190 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @clk_disable_unprepare(i32 %191)
  %193 = load i32, i32* @EINVAL, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %3, align 4
  br label %224

195:                                              ; preds = %178
  %196 = load %struct.sti_hqvdp*, %struct.sti_hqvdp** %7, align 8
  %197 = getelementptr inbounds %struct.sti_hqvdp, %struct.sti_hqvdp* %196, i32 0, i32 0
  store i32 1, i32* %197, align 4
  br label %198

198:                                              ; preds = %195, %163
  %199 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %200 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %204 = call i32 @to_sti_mixer(%struct.drm_crtc* %203)
  %205 = call i32 @sti_mixer_to_str(i32 %204)
  %206 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %207 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.sti_plane*, %struct.sti_plane** %6, align 8
  %211 = call i32 @sti_plane_to_str(%struct.sti_plane* %210)
  %212 = call i32 (i8*, i32, i32, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %202, i32 %205, i32 %209, i32 %211)
  %213 = load %struct.sti_plane*, %struct.sti_plane** %6, align 8
  %214 = call i32 @sti_plane_to_str(%struct.sti_plane* %213)
  %215 = load i32, i32* %14, align 4
  %216 = load i32, i32* %15, align 4
  %217 = load i32, i32* %12, align 4
  %218 = load i32, i32* %13, align 4
  %219 = load i32, i32* %18, align 4
  %220 = load i32, i32* %19, align 4
  %221 = load i32, i32* %16, align 4
  %222 = load i32, i32* %17, align 4
  %223 = call i32 (i8*, i32, i32, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %214, i32 %215, i32 %216, i32 %217, i32 %218, i32 %219, i32 %220, i32 %221, i32 %222)
  store i32 0, i32* %3, align 4
  br label %224

224:                                              ; preds = %198, %187, %174, %147, %107, %99, %35
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local %struct.sti_plane* @to_sti_plane(%struct.drm_plane*) #1

declare dso_local %struct.sti_hqvdp* @to_sti_hqvdp(%struct.sti_plane*) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_crtc_state(i32, %struct.drm_crtc*) #1

declare dso_local i32 @clamp_val(i32, i32, i64) #1

declare dso_local i32 @sti_hqvdp_check_hw_scaling(%struct.sti_hqvdp*, %struct.drm_display_mode*, i32, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @sti_hqvdp_start_xp70(%struct.sti_hqvdp*) #1

declare dso_local i64 @clk_prepare_enable(i32) #1

declare dso_local i64 @sti_vtg_register_client(i32, i32*, %struct.drm_crtc*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @sti_mixer_to_str(i32) #1

declare dso_local i32 @to_sti_mixer(%struct.drm_crtc*) #1

declare dso_local i32 @sti_plane_to_str(%struct.sti_plane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
