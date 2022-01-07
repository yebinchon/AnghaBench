; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimd.c_fimd_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimd.c_fimd_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fimd_context = type { %struct.TYPE_10__*, i64, %struct.TYPE_9__, %struct.TYPE_8__*, %struct.exynos_drm_plane*, %struct.TYPE_11__*, %struct.drm_device* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.exynos_drm_plane = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%struct.drm_device = type { i32 }

@WINDOWS_NR = common dso_local global i32 0, align 4
@fimd_formats = common dso_local global i32 0, align 4
@fimd_win_types = common dso_local global i32* null, align 8
@capabilities = common dso_local global i32* null, align 8
@DEFAULT_WIN = common dso_local global i64 0, align 8
@EXYNOS_DISPLAY_TYPE_LCD = common dso_local global i32 0, align 4
@fimd_crtc_ops = common dso_local global i32 0, align 4
@fimd_dp_clock_enable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @fimd_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimd_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fimd_context*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.exynos_drm_plane*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.fimd_context* @dev_get_drvdata(%struct.device* %13)
  store %struct.fimd_context* %14, %struct.fimd_context** %8, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.drm_device*
  store %struct.drm_device* %16, %struct.drm_device** %9, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %18 = load %struct.fimd_context*, %struct.fimd_context** %8, align 8
  %19 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %18, i32 0, i32 6
  store %struct.drm_device* %17, %struct.drm_device** %19, align 8
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %94, %3
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @WINDOWS_NR, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %97

24:                                               ; preds = %20
  %25 = load i32, i32* @fimd_formats, align 4
  %26 = load %struct.fimd_context*, %struct.fimd_context** %8, align 8
  %27 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %26, i32 0, i32 5
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 4
  store i32 %25, i32* %32, align 4
  %33 = load i32, i32* @fimd_formats, align 4
  %34 = call i32 @ARRAY_SIZE(i32 %33)
  %35 = load %struct.fimd_context*, %struct.fimd_context** %8, align 8
  %36 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %35, i32 0, i32 5
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 3
  store i32 %34, i32* %41, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.fimd_context*, %struct.fimd_context** %8, align 8
  %44 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %43, i32 0, i32 5
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  store i32 %42, i32* %49, align 4
  %50 = load i32*, i32** @fimd_win_types, align 8
  %51 = load i32, i32* %11, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fimd_context*, %struct.fimd_context** %8, align 8
  %56 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %55, i32 0, i32 5
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  store i32 %54, i32* %61, align 4
  %62 = load i32*, i32** @capabilities, align 8
  %63 = load i32, i32* %11, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.fimd_context*, %struct.fimd_context** %8, align 8
  %68 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %67, i32 0, i32 5
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  store i32 %66, i32* %73, align 4
  %74 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %75 = load %struct.fimd_context*, %struct.fimd_context** %8, align 8
  %76 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %75, i32 0, i32 4
  %77 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %77, i64 %79
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.fimd_context*, %struct.fimd_context** %8, align 8
  %83 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %82, i32 0, i32 5
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i64 %86
  %88 = call i32 @exynos_plane_init(%struct.drm_device* %74, %struct.exynos_drm_plane* %80, i32 %81, %struct.TYPE_11__* %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %24
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %4, align 4
  br label %163

93:                                               ; preds = %24
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %11, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %20

97:                                               ; preds = %20
  %98 = load %struct.fimd_context*, %struct.fimd_context** %8, align 8
  %99 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %98, i32 0, i32 4
  %100 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %99, align 8
  %101 = load i64, i64* @DEFAULT_WIN, align 8
  %102 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %100, i64 %101
  store %struct.exynos_drm_plane* %102, %struct.exynos_drm_plane** %10, align 8
  %103 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %104 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %10, align 8
  %105 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %104, i32 0, i32 0
  %106 = load i32, i32* @EXYNOS_DISPLAY_TYPE_LCD, align 4
  %107 = load %struct.fimd_context*, %struct.fimd_context** %8, align 8
  %108 = call %struct.TYPE_10__* @exynos_drm_crtc_create(%struct.drm_device* %103, i32* %105, i32 %106, i32* @fimd_crtc_ops, %struct.fimd_context* %107)
  %109 = load %struct.fimd_context*, %struct.fimd_context** %8, align 8
  %110 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %109, i32 0, i32 0
  store %struct.TYPE_10__* %108, %struct.TYPE_10__** %110, align 8
  %111 = load %struct.fimd_context*, %struct.fimd_context** %8, align 8
  %112 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %111, i32 0, i32 0
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = call i64 @IS_ERR(%struct.TYPE_10__* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %97
  %117 = load %struct.fimd_context*, %struct.fimd_context** %8, align 8
  %118 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %117, i32 0, i32 0
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = call i32 @PTR_ERR(%struct.TYPE_10__* %119)
  store i32 %120, i32* %4, align 4
  br label %163

121:                                              ; preds = %97
  %122 = load %struct.fimd_context*, %struct.fimd_context** %8, align 8
  %123 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %122, i32 0, i32 3
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %121
  %129 = load i32, i32* @fimd_dp_clock_enable, align 4
  %130 = load %struct.fimd_context*, %struct.fimd_context** %8, align 8
  %131 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 8
  %133 = load %struct.fimd_context*, %struct.fimd_context** %8, align 8
  %134 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %133, i32 0, i32 2
  %135 = load %struct.fimd_context*, %struct.fimd_context** %8, align 8
  %136 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %135, i32 0, i32 0
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  store %struct.TYPE_9__* %134, %struct.TYPE_9__** %138, align 8
  br label %139

139:                                              ; preds = %128, %121
  %140 = load %struct.fimd_context*, %struct.fimd_context** %8, align 8
  %141 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %139
  %145 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %146 = load %struct.fimd_context*, %struct.fimd_context** %8, align 8
  %147 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @exynos_dpi_bind(%struct.drm_device* %145, i64 %148)
  br label %150

150:                                              ; preds = %144, %139
  %151 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %152 = call i64 @is_drm_iommu_supported(%struct.drm_device* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %150
  %155 = load %struct.fimd_context*, %struct.fimd_context** %8, align 8
  %156 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %155, i32 0, i32 0
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = call i32 @fimd_clear_channels(%struct.TYPE_10__* %157)
  br label %159

159:                                              ; preds = %154, %150
  %160 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %161 = load %struct.device*, %struct.device** %5, align 8
  %162 = call i32 @exynos_drm_register_dma(%struct.drm_device* %160, %struct.device* %161)
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %159, %116, %91
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local %struct.fimd_context* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @exynos_plane_init(%struct.drm_device*, %struct.exynos_drm_plane*, i32, %struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_10__* @exynos_drm_crtc_create(%struct.drm_device*, i32*, i32, i32*, %struct.fimd_context*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_10__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_10__*) #1

declare dso_local i32 @exynos_dpi_bind(%struct.drm_device*, i64) #1

declare dso_local i64 @is_drm_iommu_supported(%struct.drm_device*) #1

declare dso_local i32 @fimd_clear_channels(%struct.TYPE_10__*) #1

declare dso_local i32 @exynos_drm_register_dma(%struct.drm_device*, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
