; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_layer.c_sun4i_layers_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_layer.c_sun4i_layers_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32 }
%struct.drm_device = type { i32 }
%struct.sunxi_engine = type { i32 }
%struct.sun4i_backend = type { i32 }
%struct.sun4i_layer = type { i32, %struct.drm_plane }

@SUN4I_BACKEND_NUM_LAYERS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_OVERLAY = common dso_local global i32 0, align 4
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Couldn't initialize %s plane\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"overlay\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"primary\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_plane** @sun4i_layers_init(%struct.drm_device* %0, %struct.sunxi_engine* %1) #0 {
  %3 = alloca %struct.drm_plane**, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.sunxi_engine*, align 8
  %6 = alloca %struct.drm_plane**, align 8
  %7 = alloca %struct.sun4i_backend*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sun4i_layer*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.sunxi_engine* %1, %struct.sunxi_engine** %5, align 8
  %11 = load %struct.sunxi_engine*, %struct.sunxi_engine** %5, align 8
  %12 = call %struct.sun4i_backend* @engine_to_sun4i_backend(%struct.sunxi_engine* %11)
  store %struct.sun4i_backend* %12, %struct.sun4i_backend** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SUN4I_BACKEND_NUM_LAYERS, align 4
  %17 = add nsw i32 %16, 1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.drm_plane** @devm_kcalloc(i32 %15, i32 %17, i32 8, i32 %18)
  store %struct.drm_plane** %19, %struct.drm_plane*** %6, align 8
  %20 = load %struct.drm_plane**, %struct.drm_plane*** %6, align 8
  %21 = icmp ne %struct.drm_plane** %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.drm_plane** @ERR_PTR(i32 %24)
  store %struct.drm_plane** %25, %struct.drm_plane*** %3, align 8
  br label %73

26:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %68, %26
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @SUN4I_BACKEND_NUM_LAYERS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %71

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @DRM_PLANE_TYPE_OVERLAY, align 4
  br label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  store i32 %39, i32* %9, align 4
  %40 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %41 = load %struct.sun4i_backend*, %struct.sun4i_backend** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call %struct.sun4i_layer* @sun4i_layer_init_one(%struct.drm_device* %40, %struct.sun4i_backend* %41, i32 %42)
  store %struct.sun4i_layer* %43, %struct.sun4i_layer** %10, align 8
  %44 = load %struct.sun4i_layer*, %struct.sun4i_layer** %10, align 8
  %45 = call i64 @IS_ERR(%struct.sun4i_layer* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %38
  %48 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %49 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %55 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %54)
  %56 = load %struct.sun4i_layer*, %struct.sun4i_layer** %10, align 8
  %57 = call %struct.drm_plane** @ERR_CAST(%struct.sun4i_layer* %56)
  store %struct.drm_plane** %57, %struct.drm_plane*** %3, align 8
  br label %73

58:                                               ; preds = %38
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.sun4i_layer*, %struct.sun4i_layer** %10, align 8
  %61 = getelementptr inbounds %struct.sun4i_layer, %struct.sun4i_layer* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.sun4i_layer*, %struct.sun4i_layer** %10, align 8
  %63 = getelementptr inbounds %struct.sun4i_layer, %struct.sun4i_layer* %62, i32 0, i32 1
  %64 = load %struct.drm_plane**, %struct.drm_plane*** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.drm_plane*, %struct.drm_plane** %64, i64 %66
  store %struct.drm_plane* %63, %struct.drm_plane** %67, align 8
  br label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %27

71:                                               ; preds = %27
  %72 = load %struct.drm_plane**, %struct.drm_plane*** %6, align 8
  store %struct.drm_plane** %72, %struct.drm_plane*** %3, align 8
  br label %73

73:                                               ; preds = %71, %47, %22
  %74 = load %struct.drm_plane**, %struct.drm_plane*** %3, align 8
  ret %struct.drm_plane** %74
}

declare dso_local %struct.sun4i_backend* @engine_to_sun4i_backend(%struct.sunxi_engine*) #1

declare dso_local %struct.drm_plane** @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local %struct.drm_plane** @ERR_PTR(i32) #1

declare dso_local %struct.sun4i_layer* @sun4i_layer_init_one(%struct.drm_device*, %struct.sun4i_backend*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sun4i_layer*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*) #1

declare dso_local %struct.drm_plane** @ERR_CAST(%struct.sun4i_layer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
