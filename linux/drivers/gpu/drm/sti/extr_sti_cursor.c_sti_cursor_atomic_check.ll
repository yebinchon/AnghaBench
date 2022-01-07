; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_cursor.c_sti_cursor_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_cursor.c_sti_cursor_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.drm_plane_state = type { i32, i32, i32, i32, i32, i32, i32, %struct.drm_framebuffer*, %struct.drm_crtc* }
%struct.drm_framebuffer = type { i32 }
%struct.drm_crtc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sti_plane = type { i32 }
%struct.sti_cursor = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.drm_crtc_state = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i64, i64 }

@STI_CURS_MIN_SIZE = common dso_local global i32 0, align 4
@STI_CURS_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid cursor size (%dx%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to allocate memory for pixmap\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Can't get CMA GEM object for fb\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"CRTC:%d (%s) drm plane:%d (%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"(%dx%d)@(%d,%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @sti_cursor_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_cursor_atomic_check(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.sti_plane*, align 8
  %7 = alloca %struct.sti_cursor*, align 8
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
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %18 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %19 = call %struct.sti_plane* @to_sti_plane(%struct.drm_plane* %18)
  store %struct.sti_plane* %19, %struct.sti_plane** %6, align 8
  %20 = load %struct.sti_plane*, %struct.sti_plane** %6, align 8
  %21 = call %struct.sti_cursor* @to_sti_cursor(%struct.sti_plane* %20)
  store %struct.sti_cursor* %21, %struct.sti_cursor** %7, align 8
  %22 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %23 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %22, i32 0, i32 8
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %23, align 8
  store %struct.drm_crtc* %24, %struct.drm_crtc** %8, align 8
  %25 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %26 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %25, i32 0, i32 7
  %27 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %26, align 8
  store %struct.drm_framebuffer* %27, %struct.drm_framebuffer** %9, align 8
  %28 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %29 = icmp ne %struct.drm_crtc* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %32 = icmp ne %struct.drm_framebuffer* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30, %2
  store i32 0, i32* %3, align 4
  br label %210

34:                                               ; preds = %30
  %35 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %36 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %39 = call %struct.drm_crtc_state* @drm_atomic_get_crtc_state(i32 %37, %struct.drm_crtc* %38)
  store %struct.drm_crtc_state* %39, %struct.drm_crtc_state** %10, align 8
  %40 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %10, align 8
  %41 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %40, i32 0, i32 0
  store %struct.drm_display_mode* %41, %struct.drm_display_mode** %11, align 8
  %42 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %43 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %12, align 4
  %45 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %46 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %13, align 4
  %48 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %49 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %52 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = sub nsw i64 %53, %55
  %57 = call i32 @clamp_val(i32 %50, i32 0, i64 %56)
  store i32 %57, i32* %14, align 4
  %58 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %59 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %62 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = sub nsw i64 %63, %65
  %67 = call i32 @clamp_val(i32 %60, i32 0, i64 %66)
  store i32 %67, i32* %15, align 4
  %68 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %69 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = ashr i32 %70, 16
  store i32 %71, i32* %16, align 4
  %72 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %73 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 16
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* @STI_CURS_MIN_SIZE, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %91, label %79

79:                                               ; preds = %34
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* @STI_CURS_MIN_SIZE, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %91, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* @STI_CURS_MAX_SIZE, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* @STI_CURS_MAX_SIZE, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %87, %83, %79, %34
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %17, align 4
  %94 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %92, i32 %93)
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %210

97:                                               ; preds = %87
  %98 = load %struct.sti_cursor*, %struct.sti_cursor** %7, align 8
  %99 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %97
  %104 = load %struct.sti_cursor*, %struct.sti_cursor** %7, align 8
  %105 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %16, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %115, label %109

109:                                              ; preds = %103
  %110 = load %struct.sti_cursor*, %struct.sti_cursor** %7, align 8
  %111 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %17, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %182

115:                                              ; preds = %109, %103, %97
  %116 = load i32, i32* %16, align 4
  %117 = load %struct.sti_cursor*, %struct.sti_cursor** %7, align 8
  %118 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* %17, align 4
  %120 = load %struct.sti_cursor*, %struct.sti_cursor** %7, align 8
  %121 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.sti_cursor*, %struct.sti_cursor** %7, align 8
  %123 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %144

127:                                              ; preds = %115
  %128 = load %struct.sti_cursor*, %struct.sti_cursor** %7, align 8
  %129 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.sti_cursor*, %struct.sti_cursor** %7, align 8
  %132 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.sti_cursor*, %struct.sti_cursor** %7, align 8
  %136 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.sti_cursor*, %struct.sti_cursor** %7, align 8
  %140 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @dma_free_wc(i32 %130, i32 %134, i64 %138, i32 %142)
  br label %144

144:                                              ; preds = %127, %115
  %145 = load %struct.sti_cursor*, %struct.sti_cursor** %7, align 8
  %146 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.sti_cursor*, %struct.sti_cursor** %7, align 8
  %149 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = mul nsw i32 %147, %150
  %152 = load %struct.sti_cursor*, %struct.sti_cursor** %7, align 8
  %153 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  store i32 %151, i32* %154, align 8
  %155 = load %struct.sti_cursor*, %struct.sti_cursor** %7, align 8
  %156 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.sti_cursor*, %struct.sti_cursor** %7, align 8
  %159 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.sti_cursor*, %struct.sti_cursor** %7, align 8
  %163 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 2
  %165 = load i32, i32* @GFP_KERNEL, align 4
  %166 = load i32, i32* @GFP_DMA, align 4
  %167 = or i32 %165, %166
  %168 = call i64 @dma_alloc_wc(i32 %157, i32 %161, i32* %164, i32 %167)
  %169 = load %struct.sti_cursor*, %struct.sti_cursor** %7, align 8
  %170 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  store i64 %168, i64* %171, align 8
  %172 = load %struct.sti_cursor*, %struct.sti_cursor** %7, align 8
  %173 = getelementptr inbounds %struct.sti_cursor, %struct.sti_cursor* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %144
  %178 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %179 = load i32, i32* @EINVAL, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %3, align 4
  br label %210

181:                                              ; preds = %144
  br label %182

182:                                              ; preds = %181, %109
  %183 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %184 = call i32 @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer* %183, i32 0)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %190, label %186

186:                                              ; preds = %182
  %187 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %188 = load i32, i32* @EINVAL, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %3, align 4
  br label %210

190:                                              ; preds = %182
  %191 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %192 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %196 = call i32 @to_sti_mixer(%struct.drm_crtc* %195)
  %197 = call i32 @sti_mixer_to_str(i32 %196)
  %198 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %199 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.sti_plane*, %struct.sti_plane** %6, align 8
  %203 = call i32 @sti_plane_to_str(%struct.sti_plane* %202)
  %204 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %194, i32 %197, i32 %201, i32 %203)
  %205 = load i32, i32* %14, align 4
  %206 = load i32, i32* %15, align 4
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* %13, align 4
  %209 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %205, i32 %206, i32 %207, i32 %208)
  store i32 0, i32* %3, align 4
  br label %210

210:                                              ; preds = %190, %186, %177, %91, %33
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local %struct.sti_plane* @to_sti_plane(%struct.drm_plane*) #1

declare dso_local %struct.sti_cursor* @to_sti_cursor(%struct.sti_plane*) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_crtc_state(i32, %struct.drm_crtc*) #1

declare dso_local i32 @clamp_val(i32, i32, i64) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @dma_free_wc(i32, i32, i64, i32) #1

declare dso_local i64 @dma_alloc_wc(i32, i32, i32*, i32) #1

declare dso_local i32 @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sti_mixer_to_str(i32) #1

declare dso_local i32 @to_sti_mixer(%struct.drm_crtc*) #1

declare dso_local i32 @sti_plane_to_str(%struct.sti_plane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
