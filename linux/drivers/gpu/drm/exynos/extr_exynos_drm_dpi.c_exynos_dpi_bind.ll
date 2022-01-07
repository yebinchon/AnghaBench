; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dpi.c_exynos_dpi_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dpi.c_exynos_dpi_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.TYPE_2__ = type { i32 }

@exynos_dpi_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@exynos_dpi_encoder_helper_funcs = common dso_local global i32 0, align 4
@EXYNOS_DISPLAY_TYPE_LCD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to create connector ret = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exynos_dpi_bind(%struct.drm_device* %0, %struct.drm_encoder* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_encoder* %1, %struct.drm_encoder** %5, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %9 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %10 = call i32 @drm_encoder_init(%struct.drm_device* %7, %struct.drm_encoder* %8, i32* @exynos_dpi_encoder_funcs, i32 %9, i32* null)
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %12 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %11, i32* @exynos_dpi_encoder_helper_funcs)
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %14 = load i32, i32* @EXYNOS_DISPLAY_TYPE_LCD, align 4
  %15 = call i32 @exynos_drm_set_possible_crtcs(%struct.drm_encoder* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %36

20:                                               ; preds = %2
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %22 = call i32 @exynos_dpi_create_connector(%struct.drm_encoder* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %27 = call %struct.TYPE_2__* @encoder_to_dpi(%struct.drm_encoder* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @DRM_DEV_ERROR(i32 %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %33 = call i32 @drm_encoder_cleanup(%struct.drm_encoder* %32)
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %36

35:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %25, %18
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @exynos_drm_set_possible_crtcs(%struct.drm_encoder*, i32) #1

declare dso_local i32 @exynos_dpi_create_connector(%struct.drm_encoder*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local %struct.TYPE_2__* @encoder_to_dpi(%struct.drm_encoder*) #1

declare dso_local i32 @drm_encoder_cleanup(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
