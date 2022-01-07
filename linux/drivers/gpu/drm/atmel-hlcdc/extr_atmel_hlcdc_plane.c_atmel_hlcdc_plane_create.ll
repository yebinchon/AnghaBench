; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_plane.c_atmel_hlcdc_plane_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_plane.c_atmel_hlcdc_plane_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.atmel_hlcdc_dc* }
%struct.atmel_hlcdc_dc = type { i32**, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.atmel_hlcdc_layer_desc = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.atmel_hlcdc_plane = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATMEL_HLCDC_BASE_LAYER = common dso_local global i64 0, align 8
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@ATMEL_HLCDC_CURSOR_LAYER = common dso_local global i64 0, align 8
@DRM_PLANE_TYPE_CURSOR = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_OVERLAY = common dso_local global i32 0, align 4
@layer_plane_funcs = common dso_local global i32 0, align 4
@atmel_hlcdc_layer_plane_helper_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.atmel_hlcdc_layer_desc*)* @atmel_hlcdc_plane_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_hlcdc_plane_create(%struct.drm_device* %0, %struct.atmel_hlcdc_layer_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.atmel_hlcdc_layer_desc*, align 8
  %6 = alloca %struct.atmel_hlcdc_dc*, align 8
  %7 = alloca %struct.atmel_hlcdc_plane*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.atmel_hlcdc_layer_desc* %1, %struct.atmel_hlcdc_layer_desc** %5, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 1
  %12 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %11, align 8
  store %struct.atmel_hlcdc_dc* %12, %struct.atmel_hlcdc_dc** %6, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.atmel_hlcdc_plane* @devm_kzalloc(i32 %15, i32 8, i32 %16)
  store %struct.atmel_hlcdc_plane* %17, %struct.atmel_hlcdc_plane** %7, align 8
  %18 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %7, align 8
  %19 = icmp ne %struct.atmel_hlcdc_plane* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %91

23:                                               ; preds = %2
  %24 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %7, align 8
  %25 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %24, i32 0, i32 0
  %26 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %5, align 8
  %27 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %6, align 8
  %28 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @atmel_hlcdc_layer_init(i32* %25, %struct.atmel_hlcdc_layer_desc* %26, i32 %31)
  %33 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %5, align 8
  %34 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, %struct.atmel_hlcdc_layer_desc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ATMEL_HLCDC_BASE_LAYER, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %23
  %39 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  store i32 %39, i32* %8, align 4
  br label %51

40:                                               ; preds = %23
  %41 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %5, align 8
  %42 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, %struct.atmel_hlcdc_layer_desc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ATMEL_HLCDC_CURSOR_LAYER, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @DRM_PLANE_TYPE_CURSOR, align 4
  store i32 %47, i32* %8, align 4
  br label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @DRM_PLANE_TYPE_OVERLAY, align 4
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %48, %46
  br label %51

51:                                               ; preds = %50, %38
  %52 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %53 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %7, align 8
  %54 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %53, i32 0, i32 1
  %55 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %5, align 8
  %56 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, %struct.atmel_hlcdc_layer_desc* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %5, align 8
  %61 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, %struct.atmel_hlcdc_layer_desc* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @drm_universal_plane_init(%struct.drm_device* %52, i32* %54, i32 0, i32* @layer_plane_funcs, i32 %59, i32 %64, i32* null, i32 %65, i32* null)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %51
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %3, align 4
  br label %91

71:                                               ; preds = %51
  %72 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %7, align 8
  %73 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %72, i32 0, i32 1
  %74 = call i32 @drm_plane_helper_add(i32* %73, i32* @atmel_hlcdc_layer_plane_helper_funcs)
  %75 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %7, align 8
  %76 = call i32 @atmel_hlcdc_plane_init_properties(%struct.atmel_hlcdc_plane* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %71
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %3, align 4
  br label %91

81:                                               ; preds = %71
  %82 = load %struct.atmel_hlcdc_plane*, %struct.atmel_hlcdc_plane** %7, align 8
  %83 = getelementptr inbounds %struct.atmel_hlcdc_plane, %struct.atmel_hlcdc_plane* %82, i32 0, i32 0
  %84 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %6, align 8
  %85 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %84, i32 0, i32 0
  %86 = load i32**, i32*** %85, align 8
  %87 = load %struct.atmel_hlcdc_layer_desc*, %struct.atmel_hlcdc_layer_desc** %5, align 8
  %88 = getelementptr inbounds %struct.atmel_hlcdc_layer_desc, %struct.atmel_hlcdc_layer_desc* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i32*, i32** %86, i64 %89
  store i32* %83, i32** %90, align 8
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %81, %79, %69, %20
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.atmel_hlcdc_plane* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @atmel_hlcdc_layer_init(i32*, %struct.atmel_hlcdc_layer_desc*, i32) #1

declare dso_local i32 @drm_universal_plane_init(%struct.drm_device*, i32*, i32, i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @drm_plane_helper_add(i32*, i32*) #1

declare dso_local i32 @atmel_hlcdc_plane_init_properties(%struct.atmel_hlcdc_plane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
