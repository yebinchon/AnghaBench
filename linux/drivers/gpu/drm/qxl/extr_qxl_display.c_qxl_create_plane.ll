; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_create_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_create_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_funcs = type { i32 }
%struct.drm_plane_helper_funcs = type { i32 }
%struct.drm_plane = type { i32 }
%struct.qxl_device = type { i32 }

@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@qxl_primary_plane_funcs = common dso_local global %struct.drm_plane_funcs zeroinitializer, align 4
@qxl_primary_plane_formats = common dso_local global i32* null, align 8
@primary_helper_funcs = common dso_local global %struct.drm_plane_helper_funcs zeroinitializer, align 4
@DRM_PLANE_TYPE_CURSOR = common dso_local global i32 0, align 4
@qxl_cursor_plane_funcs = common dso_local global %struct.drm_plane_funcs zeroinitializer, align 4
@qxl_cursor_plane_formats = common dso_local global i32* null, align 8
@qxl_cursor_helper_funcs = common dso_local global %struct.drm_plane_helper_funcs zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_plane* (%struct.qxl_device*, i32, i32)* @qxl_create_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_plane* @qxl_create_plane(%struct.qxl_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.qxl_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_plane_helper_funcs*, align 8
  %9 = alloca %struct.drm_plane*, align 8
  %10 = alloca %struct.drm_plane_funcs*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.qxl_device* %0, %struct.qxl_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.drm_plane_helper_funcs* null, %struct.drm_plane_helper_funcs** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  store %struct.drm_plane_funcs* @qxl_primary_plane_funcs, %struct.drm_plane_funcs** %10, align 8
  %18 = load i32*, i32** @qxl_primary_plane_formats, align 8
  store i32* %18, i32** %11, align 8
  %19 = load i32*, i32** @qxl_primary_plane_formats, align 8
  %20 = call i32 @ARRAY_SIZE(i32* %19)
  store i32 %20, i32* %12, align 4
  store %struct.drm_plane_helper_funcs* @primary_helper_funcs, %struct.drm_plane_helper_funcs** %8, align 8
  br label %34

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @DRM_PLANE_TYPE_CURSOR, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  store %struct.drm_plane_funcs* @qxl_cursor_plane_funcs, %struct.drm_plane_funcs** %10, align 8
  %26 = load i32*, i32** @qxl_cursor_plane_formats, align 8
  store i32* %26, i32** %11, align 8
  store %struct.drm_plane_helper_funcs* @qxl_cursor_helper_funcs, %struct.drm_plane_helper_funcs** %8, align 8
  %27 = load i32*, i32** @qxl_cursor_plane_formats, align 8
  %28 = call i32 @ARRAY_SIZE(i32* %27)
  store i32 %28, i32* %12, align 4
  br label %33

29:                                               ; preds = %21
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.drm_plane* @ERR_PTR(i32 %31)
  store %struct.drm_plane* %32, %struct.drm_plane** %4, align 8
  br label %67

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %17
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.drm_plane* @kzalloc(i32 4, i32 %35)
  store %struct.drm_plane* %36, %struct.drm_plane** %9, align 8
  %37 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %38 = icmp ne %struct.drm_plane* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.drm_plane* @ERR_PTR(i32 %41)
  store %struct.drm_plane* %42, %struct.drm_plane** %4, align 8
  br label %67

43:                                               ; preds = %34
  %44 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %45 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %44, i32 0, i32 0
  %46 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.drm_plane_funcs*, %struct.drm_plane_funcs** %10, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @drm_universal_plane_init(i32* %45, %struct.drm_plane* %46, i32 %47, %struct.drm_plane_funcs* %48, i32* %49, i32 %50, i32* null, i32 %51, i32* null)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %61

56:                                               ; preds = %43
  %57 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %58 = load %struct.drm_plane_helper_funcs*, %struct.drm_plane_helper_funcs** %8, align 8
  %59 = call i32 @drm_plane_helper_add(%struct.drm_plane* %57, %struct.drm_plane_helper_funcs* %58)
  %60 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  store %struct.drm_plane* %60, %struct.drm_plane** %4, align 8
  br label %67

61:                                               ; preds = %55
  %62 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %63 = call i32 @kfree(%struct.drm_plane* %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  %66 = call %struct.drm_plane* @ERR_PTR(i32 %65)
  store %struct.drm_plane* %66, %struct.drm_plane** %4, align 8
  br label %67

67:                                               ; preds = %61, %56, %39, %29
  %68 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  ret %struct.drm_plane* %68
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.drm_plane* @ERR_PTR(i32) #1

declare dso_local %struct.drm_plane* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_universal_plane_init(i32*, %struct.drm_plane*, i32, %struct.drm_plane_funcs*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @drm_plane_helper_add(%struct.drm_plane*, %struct.drm_plane_helper_funcs*) #1

declare dso_local i32 @kfree(%struct.drm_plane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
