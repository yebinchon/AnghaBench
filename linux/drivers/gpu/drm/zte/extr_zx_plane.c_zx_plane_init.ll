; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_plane.c_zx_plane_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/zte/extr_zx_plane.c_zx_plane_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_helper_funcs = type { i32 }
%struct.drm_device = type { i32 }
%struct.zx_plane = type { %struct.device*, %struct.drm_plane }
%struct.device = type { i32 }
%struct.drm_plane = type { i32 }

@zx_gl_plane_helper_funcs = common dso_local global %struct.drm_plane_helper_funcs zeroinitializer, align 4
@gl_formats = common dso_local global i32* null, align 8
@zx_vl_plane_helper_funcs = common dso_local global %struct.drm_plane_helper_funcs zeroinitializer, align 4
@vl_formats = common dso_local global i32* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@VOU_CRTC_MASK = common dso_local global i32 0, align 4
@zx_plane_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to init universal plane: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zx_plane_init(%struct.drm_device* %0, %struct.zx_plane* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.zx_plane*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_plane_helper_funcs*, align 8
  %9 = alloca %struct.drm_plane*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.zx_plane* %1, %struct.zx_plane** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.zx_plane*, %struct.zx_plane** %6, align 8
  %15 = getelementptr inbounds %struct.zx_plane, %struct.zx_plane* %14, i32 0, i32 1
  store %struct.drm_plane* %15, %struct.drm_plane** %9, align 8
  %16 = load %struct.zx_plane*, %struct.zx_plane** %6, align 8
  %17 = getelementptr inbounds %struct.zx_plane, %struct.zx_plane* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %10, align 8
  %19 = load %struct.zx_plane*, %struct.zx_plane** %6, align 8
  %20 = call i32 @zx_plane_hbsc_init(%struct.zx_plane* %19)
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %30 [
    i32 128, label %22
    i32 129, label %26
  ]

22:                                               ; preds = %3
  store %struct.drm_plane_helper_funcs* @zx_gl_plane_helper_funcs, %struct.drm_plane_helper_funcs** %8, align 8
  %23 = load i32*, i32** @gl_formats, align 8
  store i32* %23, i32** %11, align 8
  %24 = load i32*, i32** @gl_formats, align 8
  %25 = call i32 @ARRAY_SIZE(i32* %24)
  store i32 %25, i32* %12, align 4
  br label %33

26:                                               ; preds = %3
  store %struct.drm_plane_helper_funcs* @zx_vl_plane_helper_funcs, %struct.drm_plane_helper_funcs** %8, align 8
  %27 = load i32*, i32** @vl_formats, align 8
  store i32* %27, i32** %11, align 8
  %28 = load i32*, i32** @vl_formats, align 8
  %29 = call i32 @ARRAY_SIZE(i32* %28)
  store i32 %29, i32* %12, align 4
  br label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %52

33:                                               ; preds = %26, %22
  %34 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %35 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %36 = load i32, i32* @VOU_CRTC_MASK, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @drm_universal_plane_init(%struct.drm_device* %34, %struct.drm_plane* %35, i32 %36, i32* @zx_plane_funcs, i32* %37, i32 %38, i32* null, i32 %39, i32* null)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %33
  %44 = load %struct.device*, %struct.device** %10, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @DRM_DEV_ERROR(%struct.device* %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %4, align 4
  br label %52

48:                                               ; preds = %33
  %49 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %50 = load %struct.drm_plane_helper_funcs*, %struct.drm_plane_helper_funcs** %8, align 8
  %51 = call i32 @drm_plane_helper_add(%struct.drm_plane* %49, %struct.drm_plane_helper_funcs* %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %43, %30
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @zx_plane_hbsc_init(%struct.zx_plane*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @drm_universal_plane_init(%struct.drm_device*, %struct.drm_plane*, i32, i32*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, i32) #1

declare dso_local i32 @drm_plane_helper_add(%struct.drm_plane*, %struct.drm_plane_helper_funcs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
