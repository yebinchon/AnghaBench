; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_crtc.c_atmel_hlcdc_crtc_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_crtc.c_atmel_hlcdc_crtc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.atmel_hlcdc_dc* }
%struct.atmel_hlcdc_dc = type { i32*, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.atmel_hlcdc_plane = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.atmel_hlcdc_crtc = type { i32, i32, %struct.atmel_hlcdc_dc* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATMEL_HLCDC_MAX_LAYERS = common dso_local global i32 0, align 4
@atmel_hlcdc_crtc_funcs = common dso_local global i32 0, align 4
@ATMEL_HLCDC_OVERLAY_LAYER = common dso_local global i32 0, align 4
@lcdc_crtc_helper_funcs = common dso_local global i32 0, align 4
@ATMEL_HLCDC_CLUT_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atmel_hlcdc_crtc_create(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.atmel_hlcdc_plane*, align 8
  %5 = alloca %struct.atmel_hlcdc_plane*, align 8
  %6 = alloca %struct.atmel_hlcdc_dc*, align 8
  %7 = alloca %struct.atmel_hlcdc_crtc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.atmel_hlcdc_plane*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.atmel_hlcdc_plane* null, %struct.atmel_hlcdc_plane** %4, align 8
  store %struct.atmel_hlcdc_plane* null, %struct.atmel_hlcdc_plane** %5, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %12, align 8
  store %struct.atmel_hlcdc_dc* %13, %struct.atmel_hlcdc_dc** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.atmel_hlcdc_crtc* @kzalloc(i32 16, i32 %14)
  store %struct.atmel_hlcdc_crtc* %15, %struct.atmel_hlcdc_crtc** %7, align 8
  %16 = load %struct.atmel_hlcdc_crtc*, %struct.atmel_hlcdc_crtc** %7, align 8
  %17 = icmp ne %struct.atmel_hlcdc_crtc* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %163

21:                                               ; preds = %1
  %22 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %6, align 8
  %23 = load %struct.atmel_hlcdc_crtc*, %struct.atmel_hlcdc_crtc** %7, align 8
  %24 = getelementptr inbounds %struct.atmel_hlcdc_crtc, %struct.atmel_hlcdc_crtc* %23, i32 0, i32 2
  store %struct.atmel_hlcdc_dc* %22, %struct.atmel_hlcdc_dc** %24, align 8
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %71, %21
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @ATMEL_HLCDC_MAX_LAYERS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %74

29:                                               ; preds = %25
  %30 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %6, align 8
  %31 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %32, i64 %34
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = icmp ne %struct.TYPE_7__* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  br label %71

39:                                               ; preds = %29
  %40 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %6, align 8
  %41 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %42, i64 %44
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %69 [
    i32 129, label %51
    i32 128, label %60
  ]

51:                                               ; preds = %39
  %52 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %6, align 8
  %53 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %54, i64 %56
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = call %struct.atmel_hlcdc_plane* @atmel_hlcdc_layer_to_plane(%struct.TYPE_7__* %58)
  store %struct.atmel_hlcdc_plane* %59, %struct.atmel_hlcdc_plane** %4, align 8
  br label %70

60:                                               ; preds = %39
  %61 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %6, align 8
  %62 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %61, i32 0, i32 1
  %63 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %63, i64 %65
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = call %struct.atmel_hlcdc_plane* @atmel_hlcdc_layer_to_plane(%struct.TYPE_7__* %67)
  store %struct.atmel_hlcdc_plane* %68, %struct.atmel_hlcdc_plane** %5, align 8
  br label %70

69:                                               ; preds = %39
  br label %70

70:                                               ; preds = %69, %60, %51
  br label %71

71:                                               ; preds = %70, %38
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %25

74:                                               ; preds = %25
  %75 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %76 = load %struct.atmel_hlcdc_crtc*, %struct.atmel_hlcdc_crtc** %7, align 8
  %77 = getelementptr inbounds %struct.atmel_hlcdc_crtc, %struct.atmel_hlcdc_crtc* %76, i32 0, i32 1
  %78 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %4, align 8
  %79 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %78, i32 0, i32 0
  %80 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %5, align 8
  %81 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %80, i32 0, i32 0
  %82 = call i32 @drm_crtc_init_with_planes(%struct.drm_device* %75, i32* %77, %struct.TYPE_6__* %79, %struct.TYPE_6__* %81, i32* @atmel_hlcdc_crtc_funcs, i32* null)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %74
  br label %158

86:                                               ; preds = %74
  %87 = load %struct.atmel_hlcdc_crtc*, %struct.atmel_hlcdc_crtc** %7, align 8
  %88 = getelementptr inbounds %struct.atmel_hlcdc_crtc, %struct.atmel_hlcdc_crtc* %87, i32 0, i32 1
  %89 = call i32 @drm_crtc_index(i32* %88)
  %90 = load %struct.atmel_hlcdc_crtc*, %struct.atmel_hlcdc_crtc** %7, align 8
  %91 = getelementptr inbounds %struct.atmel_hlcdc_crtc, %struct.atmel_hlcdc_crtc* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  store i32 0, i32* %9, align 4
  br label %92

92:                                               ; preds = %136, %86
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @ATMEL_HLCDC_MAX_LAYERS, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %139

96:                                               ; preds = %92
  %97 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %6, align 8
  %98 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %97, i32 0, i32 1
  %99 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %99, i64 %101
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = icmp ne %struct.TYPE_7__* %103, null
  br i1 %104, label %105, label %135

105:                                              ; preds = %96
  %106 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %6, align 8
  %107 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %106, i32 0, i32 1
  %108 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %108, i64 %110
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @ATMEL_HLCDC_OVERLAY_LAYER, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %135

119:                                              ; preds = %105
  %120 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %6, align 8
  %121 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %120, i32 0, i32 1
  %122 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %122, i64 %124
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = call %struct.atmel_hlcdc_plane* @atmel_hlcdc_layer_to_plane(%struct.TYPE_7__* %126)
  store %struct.atmel_hlcdc_plane* %127, %struct.atmel_hlcdc_plane** %10, align 8
  %128 = load %struct.atmel_hlcdc_crtc*, %struct.atmel_hlcdc_crtc** %7, align 8
  %129 = getelementptr inbounds %struct.atmel_hlcdc_crtc, %struct.atmel_hlcdc_crtc* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = shl i32 1, %130
  %132 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %10, align 8
  %133 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  store i32 %131, i32* %134, align 4
  br label %135

135:                                              ; preds = %119, %105, %96
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %92

139:                                              ; preds = %92
  %140 = load %struct.atmel_hlcdc_crtc*, %struct.atmel_hlcdc_crtc** %7, align 8
  %141 = getelementptr inbounds %struct.atmel_hlcdc_crtc, %struct.atmel_hlcdc_crtc* %140, i32 0, i32 1
  %142 = call i32 @drm_crtc_helper_add(i32* %141, i32* @lcdc_crtc_helper_funcs)
  %143 = load %struct.atmel_hlcdc_crtc*, %struct.atmel_hlcdc_crtc** %7, align 8
  %144 = getelementptr inbounds %struct.atmel_hlcdc_crtc, %struct.atmel_hlcdc_crtc* %143, i32 0, i32 1
  %145 = call i32 @drm_crtc_vblank_reset(i32* %144)
  %146 = load %struct.atmel_hlcdc_crtc*, %struct.atmel_hlcdc_crtc** %7, align 8
  %147 = getelementptr inbounds %struct.atmel_hlcdc_crtc, %struct.atmel_hlcdc_crtc* %146, i32 0, i32 1
  %148 = load i32, i32* @ATMEL_HLCDC_CLUT_SIZE, align 4
  %149 = call i32 @drm_mode_crtc_set_gamma_size(i32* %147, i32 %148)
  %150 = load %struct.atmel_hlcdc_crtc*, %struct.atmel_hlcdc_crtc** %7, align 8
  %151 = getelementptr inbounds %struct.atmel_hlcdc_crtc, %struct.atmel_hlcdc_crtc* %150, i32 0, i32 1
  %152 = load i32, i32* @ATMEL_HLCDC_CLUT_SIZE, align 4
  %153 = call i32 @drm_crtc_enable_color_mgmt(i32* %151, i32 0, i32 0, i32 %152)
  %154 = load %struct.atmel_hlcdc_crtc*, %struct.atmel_hlcdc_crtc** %7, align 8
  %155 = getelementptr inbounds %struct.atmel_hlcdc_crtc, %struct.atmel_hlcdc_crtc* %154, i32 0, i32 1
  %156 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %6, align 8
  %157 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %156, i32 0, i32 0
  store i32* %155, i32** %157, align 8
  store i32 0, i32* %2, align 4
  br label %163

158:                                              ; preds = %85
  %159 = load %struct.atmel_hlcdc_crtc*, %struct.atmel_hlcdc_crtc** %7, align 8
  %160 = getelementptr inbounds %struct.atmel_hlcdc_crtc, %struct.atmel_hlcdc_crtc* %159, i32 0, i32 1
  %161 = call i32 @atmel_hlcdc_crtc_destroy(i32* %160)
  %162 = load i32, i32* %8, align 4
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %158, %139, %18
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local %struct.atmel_hlcdc_crtc* @kzalloc(i32, i32) #1

declare dso_local %struct.atmel_hlcdc_plane* @atmel_hlcdc_layer_to_plane(%struct.TYPE_7__*) #1

declare dso_local i32 @drm_crtc_init_with_planes(%struct.drm_device*, i32*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i32 @drm_crtc_index(i32*) #1

declare dso_local i32 @drm_crtc_helper_add(i32*, i32*) #1

declare dso_local i32 @drm_crtc_vblank_reset(i32*) #1

declare dso_local i32 @drm_mode_crtc_set_gamma_size(i32*, i32) #1

declare dso_local i32 @drm_crtc_enable_color_mgmt(i32*, i32, i32, i32) #1

declare dso_local i32 @atmel_hlcdc_crtc_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
