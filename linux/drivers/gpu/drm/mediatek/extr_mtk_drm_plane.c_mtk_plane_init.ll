; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_plane.c_mtk_plane_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_plane.c_mtk_plane_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_plane = type { i32 }

@mtk_plane_funcs = common dso_local global i32 0, align 4
@formats = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to initialize plane\0A\00", align 1
@mtk_plane_helper_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_plane_init(%struct.drm_device* %0, %struct.drm_plane* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_plane*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store %struct.drm_plane* %1, %struct.drm_plane** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %12 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i32, i32* @formats, align 4
  %15 = load i32, i32* @formats, align 4
  %16 = call i32 @ARRAY_SIZE(i32 %15)
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @drm_universal_plane_init(%struct.drm_device* %11, %struct.drm_plane* %12, i64 %13, i32* @mtk_plane_funcs, i32 %14, i32 %16, i32* null, i32 %17, i32* null)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %5, align 4
  br label %27

24:                                               ; preds = %4
  %25 = load %struct.drm_plane*, %struct.drm_plane** %7, align 8
  %26 = call i32 @drm_plane_helper_add(%struct.drm_plane* %25, i32* @mtk_plane_helper_funcs)
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @drm_universal_plane_init(%struct.drm_device*, %struct.drm_plane*, i64, i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_plane_helper_add(%struct.drm_plane*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
