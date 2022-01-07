; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_parallel-display.c_imx_pd_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_parallel-display.c_imx_pd_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.imx_parallel_display = type { %struct.TYPE_6__, %struct.TYPE_7__*, i32, i64, %struct.drm_encoder }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.drm_encoder = type { i32 }

@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@imx_pd_encoder_helper_funcs = common dso_local global i32 0, align 4
@imx_pd_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_NONE = common dso_local global i32 0, align 4
@imx_pd_connector_helper_funcs = common dso_local global i32 0, align 4
@imx_pd_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DPI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to attach bridge: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.imx_parallel_display*)* @imx_pd_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_pd_register(%struct.drm_device* %0, %struct.imx_parallel_display* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.imx_parallel_display*, align 8
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.imx_parallel_display* %1, %struct.imx_parallel_display** %5, align 8
  %8 = load %struct.imx_parallel_display*, %struct.imx_parallel_display** %5, align 8
  %9 = getelementptr inbounds %struct.imx_parallel_display, %struct.imx_parallel_display* %8, i32 0, i32 4
  store %struct.drm_encoder* %9, %struct.drm_encoder** %6, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %12 = load %struct.imx_parallel_display*, %struct.imx_parallel_display** %5, align 8
  %13 = getelementptr inbounds %struct.imx_parallel_display, %struct.imx_parallel_display* %12, i32 0, i32 1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @imx_drm_encoder_parse_of(%struct.drm_device* %10, %struct.drm_encoder* %11, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %85

22:                                               ; preds = %2
  %23 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %24 = load %struct.imx_parallel_display*, %struct.imx_parallel_display** %5, align 8
  %25 = getelementptr inbounds %struct.imx_parallel_display, %struct.imx_parallel_display* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %28 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %27, i32* @imx_pd_encoder_helper_funcs)
  %29 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %30 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %31 = load i32, i32* @DRM_MODE_ENCODER_NONE, align 4
  %32 = call i32 @drm_encoder_init(%struct.drm_device* %29, %struct.drm_encoder* %30, i32* @imx_pd_encoder_funcs, i32 %31, i32* null)
  %33 = load %struct.imx_parallel_display*, %struct.imx_parallel_display** %5, align 8
  %34 = getelementptr inbounds %struct.imx_parallel_display, %struct.imx_parallel_display* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %22
  %38 = load %struct.imx_parallel_display*, %struct.imx_parallel_display** %5, align 8
  %39 = getelementptr inbounds %struct.imx_parallel_display, %struct.imx_parallel_display* %38, i32 0, i32 0
  %40 = call i32 @drm_connector_helper_add(%struct.TYPE_6__* %39, i32* @imx_pd_connector_helper_funcs)
  %41 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %42 = load %struct.imx_parallel_display*, %struct.imx_parallel_display** %5, align 8
  %43 = getelementptr inbounds %struct.imx_parallel_display, %struct.imx_parallel_display* %42, i32 0, i32 0
  %44 = load i32, i32* @DRM_MODE_CONNECTOR_DPI, align 4
  %45 = call i32 @drm_connector_init(%struct.drm_device* %41, %struct.TYPE_6__* %43, i32* @imx_pd_connector_funcs, i32 %44)
  br label %46

46:                                               ; preds = %37, %22
  %47 = load %struct.imx_parallel_display*, %struct.imx_parallel_display** %5, align 8
  %48 = getelementptr inbounds %struct.imx_parallel_display, %struct.imx_parallel_display* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.imx_parallel_display*, %struct.imx_parallel_display** %5, align 8
  %53 = getelementptr inbounds %struct.imx_parallel_display, %struct.imx_parallel_display* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.imx_parallel_display*, %struct.imx_parallel_display** %5, align 8
  %56 = getelementptr inbounds %struct.imx_parallel_display, %struct.imx_parallel_display* %55, i32 0, i32 0
  %57 = call i32 @drm_panel_attach(i64 %54, %struct.TYPE_6__* %56)
  br label %58

58:                                               ; preds = %51, %46
  %59 = load %struct.imx_parallel_display*, %struct.imx_parallel_display** %5, align 8
  %60 = getelementptr inbounds %struct.imx_parallel_display, %struct.imx_parallel_display* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %58
  %64 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %65 = load %struct.imx_parallel_display*, %struct.imx_parallel_display** %5, align 8
  %66 = getelementptr inbounds %struct.imx_parallel_display, %struct.imx_parallel_display* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @drm_bridge_attach(%struct.drm_encoder* %64, i32 %67, i32* null)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %63
  %72 = load %struct.imx_parallel_display*, %struct.imx_parallel_display** %5, align 8
  %73 = getelementptr inbounds %struct.imx_parallel_display, %struct.imx_parallel_display* %72, i32 0, i32 1
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @dev_err(%struct.TYPE_7__* %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %3, align 4
  br label %85

78:                                               ; preds = %63
  br label %84

79:                                               ; preds = %58
  %80 = load %struct.imx_parallel_display*, %struct.imx_parallel_display** %5, align 8
  %81 = getelementptr inbounds %struct.imx_parallel_display, %struct.imx_parallel_display* %80, i32 0, i32 0
  %82 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %83 = call i32 @drm_connector_attach_encoder(%struct.TYPE_6__* %81, %struct.drm_encoder* %82)
  br label %84

84:                                               ; preds = %79, %78
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %71, %20
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @imx_drm_encoder_parse_of(%struct.drm_device*, %struct.drm_encoder*, i32) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_connector_helper_add(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @drm_panel_attach(i64, %struct.TYPE_6__*) #1

declare dso_local i32 @drm_bridge_attach(%struct.drm_encoder*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.TYPE_6__*, %struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
