; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_init_display_hooks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_init_display_hooks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i8*, i8*, i8*, i8*, i8* }

@haswell_get_pipe_config = common dso_local global i8* null, align 8
@skylake_get_initial_plane_config = common dso_local global i8* null, align 8
@haswell_crtc_compute_clock = common dso_local global i8* null, align 8
@haswell_crtc_enable = common dso_local global i8* null, align 8
@haswell_crtc_disable = common dso_local global i8* null, align 8
@i9xx_get_initial_plane_config = common dso_local global i8* null, align 8
@ironlake_get_pipe_config = common dso_local global i8* null, align 8
@ironlake_crtc_compute_clock = common dso_local global i8* null, align 8
@ironlake_crtc_enable = common dso_local global i8* null, align 8
@ironlake_crtc_disable = common dso_local global i8* null, align 8
@i9xx_get_pipe_config = common dso_local global i8* null, align 8
@chv_crtc_compute_clock = common dso_local global i8* null, align 8
@valleyview_crtc_enable = common dso_local global i8* null, align 8
@i9xx_crtc_disable = common dso_local global i8* null, align 8
@vlv_crtc_compute_clock = common dso_local global i8* null, align 8
@g4x_crtc_compute_clock = common dso_local global i8* null, align 8
@i9xx_crtc_enable = common dso_local global i8* null, align 8
@pnv_crtc_compute_clock = common dso_local global i8* null, align 8
@i9xx_crtc_compute_clock = common dso_local global i8* null, align 8
@i8xx_crtc_compute_clock = common dso_local global i8* null, align 8
@ironlake_fdi_link_train = common dso_local global i32 0, align 4
@gen6_fdi_link_train = common dso_local global i32 0, align 4
@ivb_manual_fdi_link_train = common dso_local global i32 0, align 4
@hsw_fdi_link_train = common dso_local global i32 0, align 4
@skl_update_crtcs = common dso_local global i32 0, align 4
@intel_update_crtcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_init_display_hooks(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %3 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %4 = call i32 @intel_init_cdclk_hooks(%struct.drm_i915_private* %3)
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %6 = call i32 @INTEL_GEN(%struct.drm_i915_private* %5)
  %7 = icmp sge i32 %6, 9
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = load i8*, i8** @haswell_get_pipe_config, align 8
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %11 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 6
  store i8* %9, i8** %12, align 8
  %13 = load i8*, i8** @skylake_get_initial_plane_config, align 8
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 5
  store i8* %13, i8** %16, align 8
  %17 = load i8*, i8** @haswell_crtc_compute_clock, align 8
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %19 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 4
  store i8* %17, i8** %20, align 8
  %21 = load i8*, i8** @haswell_crtc_enable, align 8
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %23 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  store i8* %21, i8** %24, align 8
  %25 = load i8*, i8** @haswell_crtc_disable, align 8
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %27 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i8* %25, i8** %28, align 8
  br label %232

29:                                               ; preds = %1
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %31 = call i64 @HAS_DDI(%struct.drm_i915_private* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %29
  %34 = load i8*, i8** @haswell_get_pipe_config, align 8
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %36 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 6
  store i8* %34, i8** %37, align 8
  %38 = load i8*, i8** @i9xx_get_initial_plane_config, align 8
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %40 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 5
  store i8* %38, i8** %41, align 8
  %42 = load i8*, i8** @haswell_crtc_compute_clock, align 8
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %44 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  store i8* %42, i8** %45, align 8
  %46 = load i8*, i8** @haswell_crtc_enable, align 8
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %48 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  store i8* %46, i8** %49, align 8
  %50 = load i8*, i8** @haswell_crtc_disable, align 8
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %52 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  store i8* %50, i8** %53, align 8
  br label %231

54:                                               ; preds = %29
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %56 = call i64 @HAS_PCH_SPLIT(%struct.drm_i915_private* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %54
  %59 = load i8*, i8** @ironlake_get_pipe_config, align 8
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %61 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 6
  store i8* %59, i8** %62, align 8
  %63 = load i8*, i8** @i9xx_get_initial_plane_config, align 8
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %65 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 5
  store i8* %63, i8** %66, align 8
  %67 = load i8*, i8** @ironlake_crtc_compute_clock, align 8
  %68 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %69 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 4
  store i8* %67, i8** %70, align 8
  %71 = load i8*, i8** @ironlake_crtc_enable, align 8
  %72 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %73 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  store i8* %71, i8** %74, align 8
  %75 = load i8*, i8** @ironlake_crtc_disable, align 8
  %76 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %77 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  store i8* %75, i8** %78, align 8
  br label %230

79:                                               ; preds = %54
  %80 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %81 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %104

83:                                               ; preds = %79
  %84 = load i8*, i8** @i9xx_get_pipe_config, align 8
  %85 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %86 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 6
  store i8* %84, i8** %87, align 8
  %88 = load i8*, i8** @i9xx_get_initial_plane_config, align 8
  %89 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %90 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 5
  store i8* %88, i8** %91, align 8
  %92 = load i8*, i8** @chv_crtc_compute_clock, align 8
  %93 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %94 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 4
  store i8* %92, i8** %95, align 8
  %96 = load i8*, i8** @valleyview_crtc_enable, align 8
  %97 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %98 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 3
  store i8* %96, i8** %99, align 8
  %100 = load i8*, i8** @i9xx_crtc_disable, align 8
  %101 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %102 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  store i8* %100, i8** %103, align 8
  br label %229

104:                                              ; preds = %79
  %105 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %106 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %129

108:                                              ; preds = %104
  %109 = load i8*, i8** @i9xx_get_pipe_config, align 8
  %110 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %111 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 6
  store i8* %109, i8** %112, align 8
  %113 = load i8*, i8** @i9xx_get_initial_plane_config, align 8
  %114 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %115 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 5
  store i8* %113, i8** %116, align 8
  %117 = load i8*, i8** @vlv_crtc_compute_clock, align 8
  %118 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %119 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 4
  store i8* %117, i8** %120, align 8
  %121 = load i8*, i8** @valleyview_crtc_enable, align 8
  %122 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %123 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 3
  store i8* %121, i8** %124, align 8
  %125 = load i8*, i8** @i9xx_crtc_disable, align 8
  %126 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %127 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  store i8* %125, i8** %128, align 8
  br label %228

129:                                              ; preds = %104
  %130 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %131 = call i64 @IS_G4X(%struct.drm_i915_private* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %154

133:                                              ; preds = %129
  %134 = load i8*, i8** @i9xx_get_pipe_config, align 8
  %135 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %136 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 6
  store i8* %134, i8** %137, align 8
  %138 = load i8*, i8** @i9xx_get_initial_plane_config, align 8
  %139 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %140 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 5
  store i8* %138, i8** %141, align 8
  %142 = load i8*, i8** @g4x_crtc_compute_clock, align 8
  %143 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %144 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 4
  store i8* %142, i8** %145, align 8
  %146 = load i8*, i8** @i9xx_crtc_enable, align 8
  %147 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %148 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 3
  store i8* %146, i8** %149, align 8
  %150 = load i8*, i8** @i9xx_crtc_disable, align 8
  %151 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %152 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 2
  store i8* %150, i8** %153, align 8
  br label %227

154:                                              ; preds = %129
  %155 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %156 = call i64 @IS_PINEVIEW(%struct.drm_i915_private* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %179

158:                                              ; preds = %154
  %159 = load i8*, i8** @i9xx_get_pipe_config, align 8
  %160 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %161 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 6
  store i8* %159, i8** %162, align 8
  %163 = load i8*, i8** @i9xx_get_initial_plane_config, align 8
  %164 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %165 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 5
  store i8* %163, i8** %166, align 8
  %167 = load i8*, i8** @pnv_crtc_compute_clock, align 8
  %168 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %169 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 4
  store i8* %167, i8** %170, align 8
  %171 = load i8*, i8** @i9xx_crtc_enable, align 8
  %172 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %173 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 3
  store i8* %171, i8** %174, align 8
  %175 = load i8*, i8** @i9xx_crtc_disable, align 8
  %176 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %177 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 2
  store i8* %175, i8** %178, align 8
  br label %226

179:                                              ; preds = %154
  %180 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %181 = call i64 @IS_GEN(%struct.drm_i915_private* %180, i32 2)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %204, label %183

183:                                              ; preds = %179
  %184 = load i8*, i8** @i9xx_get_pipe_config, align 8
  %185 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %186 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 6
  store i8* %184, i8** %187, align 8
  %188 = load i8*, i8** @i9xx_get_initial_plane_config, align 8
  %189 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %190 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 5
  store i8* %188, i8** %191, align 8
  %192 = load i8*, i8** @i9xx_crtc_compute_clock, align 8
  %193 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %194 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 4
  store i8* %192, i8** %195, align 8
  %196 = load i8*, i8** @i9xx_crtc_enable, align 8
  %197 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %198 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 3
  store i8* %196, i8** %199, align 8
  %200 = load i8*, i8** @i9xx_crtc_disable, align 8
  %201 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %202 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 2
  store i8* %200, i8** %203, align 8
  br label %225

204:                                              ; preds = %179
  %205 = load i8*, i8** @i9xx_get_pipe_config, align 8
  %206 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %207 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i32 0, i32 6
  store i8* %205, i8** %208, align 8
  %209 = load i8*, i8** @i9xx_get_initial_plane_config, align 8
  %210 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %211 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 5
  store i8* %209, i8** %212, align 8
  %213 = load i8*, i8** @i8xx_crtc_compute_clock, align 8
  %214 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %215 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 4
  store i8* %213, i8** %216, align 8
  %217 = load i8*, i8** @i9xx_crtc_enable, align 8
  %218 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %219 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 3
  store i8* %217, i8** %220, align 8
  %221 = load i8*, i8** @i9xx_crtc_disable, align 8
  %222 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %223 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 2
  store i8* %221, i8** %224, align 8
  br label %225

225:                                              ; preds = %204, %183
  br label %226

226:                                              ; preds = %225, %158
  br label %227

227:                                              ; preds = %226, %133
  br label %228

228:                                              ; preds = %227, %108
  br label %229

229:                                              ; preds = %228, %83
  br label %230

230:                                              ; preds = %229, %58
  br label %231

231:                                              ; preds = %230, %33
  br label %232

232:                                              ; preds = %231, %8
  %233 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %234 = call i64 @IS_GEN(%struct.drm_i915_private* %233, i32 5)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %232
  %237 = load i32, i32* @ironlake_fdi_link_train, align 4
  %238 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %239 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 1
  store i32 %237, i32* %240, align 4
  br label %275

241:                                              ; preds = %232
  %242 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %243 = call i64 @IS_GEN(%struct.drm_i915_private* %242, i32 6)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %241
  %246 = load i32, i32* @gen6_fdi_link_train, align 4
  %247 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %248 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 1
  store i32 %246, i32* %249, align 4
  br label %274

250:                                              ; preds = %241
  %251 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %252 = call i64 @IS_IVYBRIDGE(%struct.drm_i915_private* %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %250
  %255 = load i32, i32* @ivb_manual_fdi_link_train, align 4
  %256 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %257 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 1
  store i32 %255, i32* %258, align 4
  br label %273

259:                                              ; preds = %250
  %260 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %261 = call i64 @IS_HASWELL(%struct.drm_i915_private* %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %267, label %263

263:                                              ; preds = %259
  %264 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %265 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %263, %259
  %268 = load i32, i32* @hsw_fdi_link_train, align 4
  %269 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %270 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 1
  store i32 %268, i32* %271, align 4
  br label %272

272:                                              ; preds = %267, %263
  br label %273

273:                                              ; preds = %272, %254
  br label %274

274:                                              ; preds = %273, %245
  br label %275

275:                                              ; preds = %274, %236
  %276 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %277 = call i32 @INTEL_GEN(%struct.drm_i915_private* %276)
  %278 = icmp sge i32 %277, 9
  br i1 %278, label %279, label %284

279:                                              ; preds = %275
  %280 = load i32, i32* @skl_update_crtcs, align 4
  %281 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %282 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 0
  store i32 %280, i32* %283, align 8
  br label %289

284:                                              ; preds = %275
  %285 = load i32, i32* @intel_update_crtcs, align 4
  %286 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %287 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 0
  store i32 %285, i32* %288, align 8
  br label %289

289:                                              ; preds = %284, %279
  ret void
}

declare dso_local i32 @intel_init_cdclk_hooks(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_DDI(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_PCH_SPLIT(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_G4X(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_PINEVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_IVYBRIDGE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
