; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_gdp.c_sti_gdp_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_gdp.c_sti_gdp_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.drm_plane_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.drm_framebuffer*, %struct.drm_crtc* }
%struct.drm_framebuffer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_crtc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sti_plane = type { i32 }
%struct.sti_gdp = type { i64, %struct.clk*, %struct.clk* }
%struct.clk = type { i32 }
%struct.drm_crtc_state = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i64, i64 }
%struct.sti_mixer = type { i64 }

@GAM_GDP_SIZE_MAX_WIDTH = common dso_local global i64 0, align 8
@GAM_GDP_SIZE_MAX_HEIGHT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Format not supported by GDP %.4s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Can't get CMA GEM object for fb\0A\00", align 1
@STI_MIXER_MAIN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Cannot set rate (%dHz) for gdp\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"CRTC:%d (%s) drm plane:%d (%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"%s dst=(%dx%d)@(%d,%d) - src=(%dx%d)@(%d,%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @sti_gdp_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_gdp_atomic_check(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.sti_plane*, align 8
  %7 = alloca %struct.sti_gdp*, align 8
  %8 = alloca %struct.drm_crtc*, align 8
  %9 = alloca %struct.drm_framebuffer*, align 8
  %10 = alloca %struct.drm_crtc_state*, align 8
  %11 = alloca %struct.sti_mixer*, align 8
  %12 = alloca %struct.drm_display_mode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.clk*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %25 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %26 = call %struct.sti_plane* @to_sti_plane(%struct.drm_plane* %25)
  store %struct.sti_plane* %26, %struct.sti_plane** %6, align 8
  %27 = load %struct.sti_plane*, %struct.sti_plane** %6, align 8
  %28 = call %struct.sti_gdp* @to_sti_gdp(%struct.sti_plane* %27)
  store %struct.sti_gdp* %28, %struct.sti_gdp** %7, align 8
  %29 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %30 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %29, i32 0, i32 10
  %31 = load %struct.drm_crtc*, %struct.drm_crtc** %30, align 8
  store %struct.drm_crtc* %31, %struct.drm_crtc** %8, align 8
  %32 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %33 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %32, i32 0, i32 9
  %34 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %33, align 8
  store %struct.drm_framebuffer* %34, %struct.drm_framebuffer** %9, align 8
  %35 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %36 = icmp ne %struct.drm_crtc* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %39 = icmp ne %struct.drm_framebuffer* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37, %2
  store i32 0, i32* %3, align 4
  br label %198

41:                                               ; preds = %37
  %42 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %43 = call %struct.sti_mixer* @to_sti_mixer(%struct.drm_crtc* %42)
  store %struct.sti_mixer* %43, %struct.sti_mixer** %11, align 8
  %44 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %45 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %48 = call %struct.drm_crtc_state* @drm_atomic_get_crtc_state(i32 %46, %struct.drm_crtc* %47)
  store %struct.drm_crtc_state* %48, %struct.drm_crtc_state** %10, align 8
  %49 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %10, align 8
  %50 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %49, i32 0, i32 0
  store %struct.drm_display_mode* %50, %struct.drm_display_mode** %12, align 8
  %51 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %52 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %13, align 4
  %54 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %55 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %14, align 4
  %57 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %58 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %61 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = sub nsw i64 %62, %64
  %66 = call i32 @clamp_val(i32 %59, i32 0, i64 %65)
  store i32 %66, i32* %15, align 4
  %67 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %68 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %71 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = sub nsw i64 %72, %74
  %76 = call i32 @clamp_val(i32 %69, i32 0, i64 %75)
  store i32 %76, i32* %16, align 4
  %77 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %78 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = ashr i32 %79, 16
  store i32 %80, i32* %17, align 4
  %81 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %82 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = ashr i32 %83, 16
  store i32 %84, i32* %18, align 4
  %85 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %86 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = ashr i32 %87, 16
  %89 = load i64, i64* @GAM_GDP_SIZE_MAX_WIDTH, align 8
  %90 = call i32 @clamp_val(i32 %88, i32 0, i64 %89)
  store i32 %90, i32* %19, align 4
  %91 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %92 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  %94 = ashr i32 %93, 16
  %95 = load i64, i64* @GAM_GDP_SIZE_MAX_HEIGHT, align 8
  %96 = call i32 @clamp_val(i32 %94, i32 0, i64 %95)
  store i32 %96, i32* %20, align 4
  %97 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %98 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @sti_gdp_fourcc2format(i32 %101)
  store i32 %102, i32* %21, align 4
  %103 = load i32, i32* %21, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %114

105:                                              ; preds = %41
  %106 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %107 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = bitcast i32* %109 to i8*
  %111 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %110)
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %198

114:                                              ; preds = %41
  %115 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  %116 = call i32 @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer* %115, i32 0)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %198

122:                                              ; preds = %114
  %123 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %124 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %173

127:                                              ; preds = %122
  %128 = load %struct.sti_gdp*, %struct.sti_gdp** %7, align 8
  %129 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %173

132:                                              ; preds = %127
  %133 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %134 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = mul nsw i32 %135, 1000
  store i32 %136, i32* %23, align 4
  %137 = load %struct.sti_mixer*, %struct.sti_mixer** %11, align 8
  %138 = getelementptr inbounds %struct.sti_mixer, %struct.sti_mixer* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @STI_MIXER_MAIN, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %132
  %143 = load %struct.sti_gdp*, %struct.sti_gdp** %7, align 8
  %144 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %143, i32 0, i32 2
  %145 = load %struct.clk*, %struct.clk** %144, align 8
  store %struct.clk* %145, %struct.clk** %22, align 8
  br label %150

146:                                              ; preds = %132
  %147 = load %struct.sti_gdp*, %struct.sti_gdp** %7, align 8
  %148 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %147, i32 0, i32 1
  %149 = load %struct.clk*, %struct.clk** %148, align 8
  store %struct.clk* %149, %struct.clk** %22, align 8
  br label %150

150:                                              ; preds = %146, %142
  %151 = load %struct.clk*, %struct.clk** %22, align 8
  %152 = icmp ne %struct.clk* %151, null
  br i1 %152, label %153, label %159

153:                                              ; preds = %150
  %154 = load %struct.sti_gdp*, %struct.sti_gdp** %7, align 8
  %155 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.clk*, %struct.clk** %22, align 8
  %158 = call i32 @clk_set_parent(i64 %156, %struct.clk* %157)
  br label %159

159:                                              ; preds = %153, %150
  %160 = load %struct.sti_gdp*, %struct.sti_gdp** %7, align 8
  %161 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* %23, align 4
  %164 = call i32 @clk_set_rate(i64 %162, i32 %163)
  store i32 %164, i32* %24, align 4
  %165 = load i32, i32* %24, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %159
  %168 = load i32, i32* %23, align 4
  %169 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %3, align 4
  br label %198

172:                                              ; preds = %159
  br label %173

173:                                              ; preds = %172, %127, %122
  %174 = load %struct.drm_crtc*, %struct.drm_crtc** %8, align 8
  %175 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.sti_mixer*, %struct.sti_mixer** %11, align 8
  %179 = call i32 @sti_mixer_to_str(%struct.sti_mixer* %178)
  %180 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %181 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.sti_plane*, %struct.sti_plane** %6, align 8
  %185 = call i32 @sti_plane_to_str(%struct.sti_plane* %184)
  %186 = call i32 (i8*, i32, i32, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %177, i32 %179, i32 %183, i32 %185)
  %187 = load %struct.sti_plane*, %struct.sti_plane** %6, align 8
  %188 = call i32 @sti_plane_to_str(%struct.sti_plane* %187)
  %189 = load i32, i32* %15, align 4
  %190 = load i32, i32* %16, align 4
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* %14, align 4
  %193 = load i32, i32* %19, align 4
  %194 = load i32, i32* %20, align 4
  %195 = load i32, i32* %17, align 4
  %196 = load i32, i32* %18, align 4
  %197 = call i32 (i8*, i32, i32, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %188, i32 %189, i32 %190, i32 %191, i32 %192, i32 %193, i32 %194, i32 %195, i32 %196)
  store i32 0, i32* %3, align 4
  br label %198

198:                                              ; preds = %173, %167, %118, %105, %40
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local %struct.sti_plane* @to_sti_plane(%struct.drm_plane*) #1

declare dso_local %struct.sti_gdp* @to_sti_gdp(%struct.sti_plane*) #1

declare dso_local %struct.sti_mixer* @to_sti_mixer(%struct.drm_crtc*) #1

declare dso_local %struct.drm_crtc_state* @drm_atomic_get_crtc_state(i32, %struct.drm_crtc*) #1

declare dso_local i32 @clamp_val(i32, i32, i64) #1

declare dso_local i32 @sti_gdp_fourcc2format(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer*, i32) #1

declare dso_local i32 @clk_set_parent(i64, %struct.clk*) #1

declare dso_local i32 @clk_set_rate(i64, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @sti_mixer_to_str(%struct.sti_mixer*) #1

declare dso_local i32 @sti_plane_to_str(%struct.sti_plane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
