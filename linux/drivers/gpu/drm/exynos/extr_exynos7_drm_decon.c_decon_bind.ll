; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos7_drm_decon.c_decon_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos7_drm_decon.c_decon_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.decon_context = type { i64, i32, %struct.exynos_drm_plane*, %struct.TYPE_2__* }
%struct.exynos_drm_plane = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.drm_device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"decon_ctx_initialize failed.\0A\00", align 1
@WINDOWS_NR = common dso_local global i32 0, align 4
@decon_formats = common dso_local global i32 0, align 4
@decon_win_types = common dso_local global i32* null, align 8
@DEFAULT_WIN = common dso_local global i64 0, align 8
@EXYNOS_DISPLAY_TYPE_LCD = common dso_local global i32 0, align 4
@decon_crtc_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @decon_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decon_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.decon_context*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.exynos_drm_plane*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.decon_context* @dev_get_drvdata(%struct.device* %13)
  store %struct.decon_context* %14, %struct.decon_context** %8, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.drm_device*
  store %struct.drm_device* %16, %struct.drm_device** %9, align 8
  %17 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %19 = call i32 @decon_ctx_initialize(%struct.decon_context* %17, %struct.drm_device* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = call i32 @DRM_DEV_ERROR(%struct.device* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %4, align 4
  br label %130

26:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %89, %26
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @WINDOWS_NR, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %92

31:                                               ; preds = %27
  %32 = load i32, i32* @decon_formats, align 4
  %33 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  %34 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  store i32 %32, i32* %39, align 4
  %40 = load i32, i32* @decon_formats, align 4
  %41 = call i32 @ARRAY_SIZE(i32 %40)
  %42 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  %43 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i32 %41, i32* %48, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  %51 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %50, i32 0, i32 3
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %49, i32* %56, align 4
  %57 = load i32*, i32** @decon_win_types, align 8
  %58 = load i32, i32* %11, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  %63 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %62, i32 0, i32 3
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i32 %61, i32* %68, align 4
  %69 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %70 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  %71 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %70, i32 0, i32 2
  %72 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %72, i64 %74
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  %78 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %77, i32 0, i32 3
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = call i32 @exynos_plane_init(%struct.drm_device* %69, %struct.exynos_drm_plane* %75, i32 %76, %struct.TYPE_2__* %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %31
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %4, align 4
  br label %130

88:                                               ; preds = %31
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %11, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %11, align 4
  br label %27

92:                                               ; preds = %27
  %93 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  %94 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %93, i32 0, i32 2
  %95 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %94, align 8
  %96 = load i64, i64* @DEFAULT_WIN, align 8
  %97 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %95, i64 %96
  store %struct.exynos_drm_plane* %97, %struct.exynos_drm_plane** %10, align 8
  %98 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %99 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %10, align 8
  %100 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %99, i32 0, i32 0
  %101 = load i32, i32* @EXYNOS_DISPLAY_TYPE_LCD, align 4
  %102 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  %103 = call i32 @exynos_drm_crtc_create(%struct.drm_device* %98, i32* %100, i32 %101, i32* @decon_crtc_ops, %struct.decon_context* %102)
  %104 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  %105 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 8
  %106 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  %107 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i64 @IS_ERR(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %92
  %112 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  %113 = call i32 @decon_ctx_remove(%struct.decon_context* %112)
  %114 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  %115 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @PTR_ERR(i32 %116)
  store i32 %117, i32* %4, align 4
  br label %130

118:                                              ; preds = %92
  %119 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  %120 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %125 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  %126 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @exynos_dpi_bind(%struct.drm_device* %124, i64 %127)
  br label %129

129:                                              ; preds = %123, %118
  store i32 0, i32* %4, align 4
  br label %130

130:                                              ; preds = %129, %111, %86, %22
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local %struct.decon_context* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @decon_ctx_initialize(%struct.decon_context*, %struct.drm_device*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @exynos_plane_init(%struct.drm_device*, %struct.exynos_drm_plane*, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @exynos_drm_crtc_create(%struct.drm_device*, i32*, i32, i32*, %struct.decon_context*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @decon_ctx_remove(%struct.decon_context*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @exynos_dpi_bind(%struct.drm_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
