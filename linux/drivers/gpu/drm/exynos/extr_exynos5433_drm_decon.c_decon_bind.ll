; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos5433_drm_decon.c_decon_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos5433_drm_decon.c_decon_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.decon_context = type { i32, i32, i32, %struct.exynos_drm_plane*, %struct.TYPE_2__*, %struct.drm_device* }
%struct.exynos_drm_plane = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.drm_device = type { i32 }

@WINDOWS_NR = common dso_local global i32 0, align 4
@decon_formats = common dso_local global i32 0, align 4
@decon_win_types = common dso_local global i32* null, align 8
@capabilities = common dso_local global i32* null, align 8
@PRIMARY_WIN = common dso_local global i64 0, align 8
@IFTYPE_HDMI = common dso_local global i32 0, align 4
@EXYNOS_DISPLAY_TYPE_HDMI = common dso_local global i32 0, align 4
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
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.decon_context* @dev_get_drvdata(%struct.device* %14)
  store %struct.decon_context* %15, %struct.decon_context** %8, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.drm_device*
  store %struct.drm_device* %17, %struct.drm_device** %9, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %19 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  %20 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %19, i32 0, i32 5
  store %struct.drm_device* %18, %struct.drm_device** %20, align 8
  %21 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  %22 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %12, align 4
  br label %24

24:                                               ; preds = %102, %3
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @WINDOWS_NR, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %105

28:                                               ; preds = %24
  %29 = load i32, i32* @decon_formats, align 4
  %30 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  %31 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %30, i32 0, i32 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %12, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 4
  store i32 %29, i32* %36, align 4
  %37 = load i32, i32* @decon_formats, align 4
  %38 = call i32 @ARRAY_SIZE(i32 %37)
  %39 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  %40 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %39, i32 0, i32 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  store i32 %38, i32* %45, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  %48 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub i32 %46, %49
  %51 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  %52 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %51, i32 0, i32 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %50, i32* %57, align 4
  %58 = load i32*, i32** @decon_win_types, align 8
  %59 = load i32, i32* %12, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  %64 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %63, i32 0, i32 4
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  store i32 %62, i32* %69, align 4
  %70 = load i32*, i32** @capabilities, align 8
  %71 = load i32, i32* %12, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  %76 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %75, i32 0, i32 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32 %74, i32* %81, align 4
  %82 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %83 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  %84 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %83, i32 0, i32 3
  %85 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %85, i64 %87
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  %91 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %90, i32 0, i32 4
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i32, i32* %12, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = call i32 @exynos_plane_init(%struct.drm_device* %82, %struct.exynos_drm_plane* %88, i32 %89, %struct.TYPE_2__* %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %28
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %4, align 4
  br label %149

101:                                              ; preds = %28
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %12, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %12, align 4
  br label %24

105:                                              ; preds = %24
  %106 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  %107 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %106, i32 0, i32 3
  %108 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %107, align 8
  %109 = load i64, i64* @PRIMARY_WIN, align 8
  %110 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %108, i64 %109
  store %struct.exynos_drm_plane* %110, %struct.exynos_drm_plane** %10, align 8
  %111 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  %112 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @IFTYPE_HDMI, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %105
  %118 = load i32, i32* @EXYNOS_DISPLAY_TYPE_HDMI, align 4
  br label %121

119:                                              ; preds = %105
  %120 = load i32, i32* @EXYNOS_DISPLAY_TYPE_LCD, align 4
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i32 [ %118, %117 ], [ %120, %119 ]
  store i32 %122, i32* %11, align 4
  %123 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %124 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %10, align 8
  %125 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %124, i32 0, i32 0
  %126 = load i32, i32* %11, align 4
  %127 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  %128 = call i32 @exynos_drm_crtc_create(%struct.drm_device* %123, i32* %125, i32 %126, i32* @decon_crtc_ops, %struct.decon_context* %127)
  %129 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  %130 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  %131 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  %132 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @IS_ERR(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %121
  %137 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  %138 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @PTR_ERR(i32 %139)
  store i32 %140, i32* %4, align 4
  br label %149

141:                                              ; preds = %121
  %142 = load %struct.decon_context*, %struct.decon_context** %8, align 8
  %143 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @decon_clear_channels(i32 %144)
  %146 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %147 = load %struct.device*, %struct.device** %5, align 8
  %148 = call i32 @exynos_drm_register_dma(%struct.drm_device* %146, %struct.device* %147)
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %141, %136, %99
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local %struct.decon_context* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @exynos_plane_init(%struct.drm_device*, %struct.exynos_drm_plane*, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @exynos_drm_crtc_create(%struct.drm_device*, i32*, i32, i32*, %struct.decon_context*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @decon_clear_channels(i32) #1

declare dso_local i32 @exynos_drm_register_dma(%struct.drm_device*, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
