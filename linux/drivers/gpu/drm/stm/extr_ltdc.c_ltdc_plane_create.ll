; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/stm/extr_ltdc.c_ltdc_plane_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/stm/extr_ltdc.c_ltdc_plane_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_device = type { %struct.device*, %struct.ltdc_device* }
%struct.device = type { i32 }
%struct.ltdc_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32* }

@CRTC_MASK = common dso_local global i64 0, align 8
@NB_PF = common dso_local global i32 0, align 4
@ltdc_format_modifiers = common dso_local global i32* null, align 8
@DRM_PLANE_TYPE_PRIMARY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ltdc_plane_funcs = common dso_local global i32 0, align 4
@ltdc_plane_helper_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"plane:%d created\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_plane* (%struct.drm_device*, i32)* @ltdc_plane_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_plane* @ltdc_plane_create(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ltdc_device*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.drm_plane*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %19 = load i64, i64* @CRTC_MASK, align 8
  store i64 %19, i64* %6, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 1
  %22 = load %struct.ltdc_device*, %struct.ltdc_device** %21, align 8
  store %struct.ltdc_device* %22, %struct.ltdc_device** %7, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = load %struct.device*, %struct.device** %24, align 8
  store %struct.device* %25, %struct.device** %8, align 8
  store i32 0, i32* %11, align 4
  %26 = load i32, i32* @NB_PF, align 4
  %27 = mul nsw i32 %26, 2
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %12, align 8
  %30 = alloca i64, i64 %28, align 16
  store i64 %28, i64* %13, align 8
  %31 = load i32*, i32** @ltdc_format_modifiers, align 8
  store i32* %31, i32** %16, align 8
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %77, %2
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @NB_PF, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %80

36:                                               ; preds = %32
  %37 = load %struct.ltdc_device*, %struct.ltdc_device** %7, align 8
  %38 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @to_drm_pixelformat(i32 %44)
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* %14, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %36
  br label %77

49:                                               ; preds = %36
  %50 = load i64, i64* %14, align 8
  %51 = load i32, i32* %11, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %11, align 4
  %53 = zext i32 %51 to i64
  %54 = getelementptr inbounds i64, i64* %30, i64 %53
  store i64 %50, i64* %54, align 8
  %55 = load i64, i64* %14, align 8
  %56 = call i64 @get_pixelformat_without_alpha(i64 %55)
  store i64 %56, i64* %15, align 8
  %57 = load i64, i64* %15, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %49
  br label %77

60:                                               ; preds = %49
  %61 = load %struct.ltdc_device*, %struct.ltdc_device** %7, align 8
  %62 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @DRM_PLANE_TYPE_PRIMARY, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %77

71:                                               ; preds = %66, %60
  %72 = load i64, i64* %15, align 8
  %73 = load i32, i32* %11, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %11, align 4
  %75 = zext i32 %73 to i64
  %76 = getelementptr inbounds i64, i64* %30, i64 %75
  store i64 %72, i64* %76, align 8
  br label %77

77:                                               ; preds = %71, %70, %59, %48
  %78 = load i32, i32* %10, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %32

80:                                               ; preds = %32
  %81 = load %struct.device*, %struct.device** %8, align 8
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call %struct.drm_plane* @devm_kzalloc(%struct.device* %81, i32 4, i32 %82)
  store %struct.drm_plane* %83, %struct.drm_plane** %9, align 8
  %84 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %85 = icmp ne %struct.drm_plane* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %80
  store %struct.drm_plane* null, %struct.drm_plane** %3, align 8
  store i32 1, i32* %18, align 4
  br label %107

87:                                               ; preds = %80
  %88 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %89 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %90 = load i64, i64* %6, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load i32*, i32** %16, align 8
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @drm_universal_plane_init(%struct.drm_device* %88, %struct.drm_plane* %89, i64 %90, i32* @ltdc_plane_funcs, i64* %30, i32 %91, i32* %92, i32 %93, i32* null)
  store i32 %94, i32* %17, align 4
  %95 = load i32, i32* %17, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  store %struct.drm_plane* null, %struct.drm_plane** %3, align 8
  store i32 1, i32* %18, align 4
  br label %107

98:                                               ; preds = %87
  %99 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %100 = call i32 @drm_plane_helper_add(%struct.drm_plane* %99, i32* @ltdc_plane_helper_funcs)
  %101 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  %102 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %104)
  %106 = load %struct.drm_plane*, %struct.drm_plane** %9, align 8
  store %struct.drm_plane* %106, %struct.drm_plane** %3, align 8
  store i32 1, i32* %18, align 4
  br label %107

107:                                              ; preds = %98, %97, %86
  %108 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %108)
  %109 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  ret %struct.drm_plane* %109
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @to_drm_pixelformat(i32) #2

declare dso_local i64 @get_pixelformat_without_alpha(i64) #2

declare dso_local %struct.drm_plane* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local i32 @drm_universal_plane_init(%struct.drm_device*, %struct.drm_plane*, i64, i32*, i64*, i32, i32*, i32, i32*) #2

declare dso_local i32 @drm_plane_helper_add(%struct.drm_plane*, i32*) #2

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
