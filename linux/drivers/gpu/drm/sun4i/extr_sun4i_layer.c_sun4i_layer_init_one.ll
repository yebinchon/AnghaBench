; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_layer.c_sun4i_layer_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_layer.c_sun4i_layer_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_layer = type { i32, %struct.sun4i_backend* }
%struct.drm_device = type { i32 }
%struct.sun4i_backend = type { i32 }

@sun4i_layer_modifiers = common dso_local global i32* null, align 8
@sun4i_layer_formats = common dso_local global i32* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sun4i_backend_layer_formats = common dso_local global i32* null, align 8
@sun4i_backend_layer_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Couldn't initialize layer\0A\00", align 1
@sun4i_backend_layer_helper_funcs = common dso_local global i32 0, align 4
@SUN4I_BACKEND_NUM_LAYERS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sun4i_layer* (%struct.drm_device*, %struct.sun4i_backend*, i32)* @sun4i_layer_init_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sun4i_layer* @sun4i_layer_init_one(%struct.drm_device* %0, %struct.sun4i_backend* %1, i32 %2) #0 {
  %4 = alloca %struct.sun4i_layer*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.sun4i_backend*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sun4i_layer*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.sun4i_backend* %1, %struct.sun4i_backend** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32*, i32** @sun4i_layer_modifiers, align 8
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** @sun4i_layer_formats, align 8
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** @sun4i_layer_formats, align 8
  %16 = call i32 @ARRAY_SIZE(i32* %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.sun4i_layer* @devm_kzalloc(i32 %19, i32 16, i32 %20)
  store %struct.sun4i_layer* %21, %struct.sun4i_layer** %11, align 8
  %22 = load %struct.sun4i_layer*, %struct.sun4i_layer** %11, align 8
  %23 = icmp ne %struct.sun4i_layer* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.sun4i_layer* @ERR_PTR(i32 %26)
  store %struct.sun4i_layer* %27, %struct.sun4i_layer** %4, align 8
  br label %72

28:                                               ; preds = %3
  %29 = load %struct.sun4i_backend*, %struct.sun4i_backend** %6, align 8
  %30 = load %struct.sun4i_layer*, %struct.sun4i_layer** %11, align 8
  %31 = getelementptr inbounds %struct.sun4i_layer, %struct.sun4i_layer* %30, i32 0, i32 1
  store %struct.sun4i_backend* %29, %struct.sun4i_backend** %31, align 8
  %32 = load %struct.sun4i_backend*, %struct.sun4i_backend** %6, align 8
  %33 = getelementptr inbounds %struct.sun4i_backend, %struct.sun4i_backend* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @IS_ERR_OR_NULL(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load i32*, i32** @sun4i_backend_layer_formats, align 8
  store i32* %38, i32** %9, align 8
  %39 = load i32*, i32** @sun4i_backend_layer_formats, align 8
  %40 = call i32 @ARRAY_SIZE(i32* %39)
  store i32 %40, i32* %10, align 4
  store i32* null, i32** %8, align 8
  br label %41

41:                                               ; preds = %37, %28
  %42 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %43 = load %struct.sun4i_layer*, %struct.sun4i_layer** %11, align 8
  %44 = getelementptr inbounds %struct.sun4i_layer, %struct.sun4i_layer* %43, i32 0, i32 0
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @drm_universal_plane_init(%struct.drm_device* %42, i32* %44, i32 0, i32* @sun4i_backend_layer_funcs, i32* %45, i32 %46, i32* %47, i32 %48, i32* null)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %41
  %53 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %54 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %57 = load i32, i32* %12, align 4
  %58 = call %struct.sun4i_layer* @ERR_PTR(i32 %57)
  store %struct.sun4i_layer* %58, %struct.sun4i_layer** %4, align 8
  br label %72

59:                                               ; preds = %41
  %60 = load %struct.sun4i_layer*, %struct.sun4i_layer** %11, align 8
  %61 = getelementptr inbounds %struct.sun4i_layer, %struct.sun4i_layer* %60, i32 0, i32 0
  %62 = call i32 @drm_plane_helper_add(i32* %61, i32* @sun4i_backend_layer_helper_funcs)
  %63 = load %struct.sun4i_layer*, %struct.sun4i_layer** %11, align 8
  %64 = getelementptr inbounds %struct.sun4i_layer, %struct.sun4i_layer* %63, i32 0, i32 0
  %65 = call i32 @drm_plane_create_alpha_property(i32* %64)
  %66 = load %struct.sun4i_layer*, %struct.sun4i_layer** %11, align 8
  %67 = getelementptr inbounds %struct.sun4i_layer, %struct.sun4i_layer* %66, i32 0, i32 0
  %68 = load i64, i64* @SUN4I_BACKEND_NUM_LAYERS, align 8
  %69 = sub nsw i64 %68, 1
  %70 = call i32 @drm_plane_create_zpos_property(i32* %67, i32 0, i32 0, i64 %69)
  %71 = load %struct.sun4i_layer*, %struct.sun4i_layer** %11, align 8
  store %struct.sun4i_layer* %71, %struct.sun4i_layer** %4, align 8
  br label %72

72:                                               ; preds = %59, %52, %24
  %73 = load %struct.sun4i_layer*, %struct.sun4i_layer** %4, align 8
  ret %struct.sun4i_layer* %73
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.sun4i_layer* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.sun4i_layer* @ERR_PTR(i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @drm_universal_plane_init(%struct.drm_device*, i32*, i32, i32*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @drm_plane_helper_add(i32*, i32*) #1

declare dso_local i32 @drm_plane_create_alpha_property(i32*) #1

declare dso_local i32 @drm_plane_create_zpos_property(i32*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
