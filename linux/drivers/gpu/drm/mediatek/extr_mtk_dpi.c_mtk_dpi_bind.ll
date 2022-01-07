; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dpi.c_mtk_dpi_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dpi.c_mtk_dpi_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mtk_dpi = type { i32, %struct.TYPE_5__, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.drm_device = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Failed to register component %pOF: %d\0A\00", align 1
@mtk_dpi_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to initialize decoder: %d\0A\00", align 1
@mtk_dpi_encoder_helper_funcs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to attach bridge: %d\0A\00", align 1
@MTK_DPI_OUT_BIT_NUM_8BITS = common dso_local global i32 0, align 4
@MTK_DPI_OUT_CHANNEL_SWAP_RGB = common dso_local global i32 0, align 4
@MTK_DPI_OUT_YC_MAP_RGB = common dso_local global i32 0, align 4
@MTK_DPI_COLOR_FORMAT_RGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @mtk_dpi_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_dpi_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mtk_dpi*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.mtk_dpi* @dev_get_drvdata(%struct.device* %11)
  store %struct.mtk_dpi* %12, %struct.mtk_dpi** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.drm_device*
  store %struct.drm_device* %14, %struct.drm_device** %9, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %16 = load %struct.mtk_dpi*, %struct.mtk_dpi** %8, align 8
  %17 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %16, i32 0, i32 0
  %18 = call i32 @mtk_ddp_comp_register(%struct.drm_device* %15, i32* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %4, align 4
  br label %84

29:                                               ; preds = %3
  %30 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %31 = load %struct.mtk_dpi*, %struct.mtk_dpi** %8, align 8
  %32 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %31, i32 0, i32 1
  %33 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %34 = call i32 @drm_encoder_init(%struct.drm_device* %30, %struct.TYPE_5__* %32, i32* @mtk_dpi_encoder_funcs, i32 %33, i32* null)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %78

41:                                               ; preds = %29
  %42 = load %struct.mtk_dpi*, %struct.mtk_dpi** %8, align 8
  %43 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %42, i32 0, i32 1
  %44 = call i32 @drm_encoder_helper_add(%struct.TYPE_5__* %43, i32* @mtk_dpi_encoder_helper_funcs)
  %45 = call i32 @BIT(i32 1)
  %46 = load %struct.mtk_dpi*, %struct.mtk_dpi** %8, align 8
  %47 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load %struct.mtk_dpi*, %struct.mtk_dpi** %8, align 8
  %50 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %49, i32 0, i32 1
  %51 = load %struct.mtk_dpi*, %struct.mtk_dpi** %8, align 8
  %52 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @drm_bridge_attach(%struct.TYPE_5__* %50, i32 %53, i32* null)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %41
  %58 = load %struct.device*, %struct.device** %5, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  br label %74

61:                                               ; preds = %41
  %62 = load i32, i32* @MTK_DPI_OUT_BIT_NUM_8BITS, align 4
  %63 = load %struct.mtk_dpi*, %struct.mtk_dpi** %8, align 8
  %64 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @MTK_DPI_OUT_CHANNEL_SWAP_RGB, align 4
  %66 = load %struct.mtk_dpi*, %struct.mtk_dpi** %8, align 8
  %67 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @MTK_DPI_OUT_YC_MAP_RGB, align 4
  %69 = load %struct.mtk_dpi*, %struct.mtk_dpi** %8, align 8
  %70 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @MTK_DPI_COLOR_FORMAT_RGB, align 4
  %72 = load %struct.mtk_dpi*, %struct.mtk_dpi** %8, align 8
  %73 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  store i32 0, i32* %4, align 4
  br label %84

74:                                               ; preds = %57
  %75 = load %struct.mtk_dpi*, %struct.mtk_dpi** %8, align 8
  %76 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %75, i32 0, i32 1
  %77 = call i32 @drm_encoder_cleanup(%struct.TYPE_5__* %76)
  br label %78

78:                                               ; preds = %74, %37
  %79 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %80 = load %struct.mtk_dpi*, %struct.mtk_dpi** %8, align 8
  %81 = getelementptr inbounds %struct.mtk_dpi, %struct.mtk_dpi* %80, i32 0, i32 0
  %82 = call i32 @mtk_ddp_comp_unregister(%struct.drm_device* %79, i32* %81)
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %78, %61, %21
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.mtk_dpi* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mtk_ddp_comp_register(%struct.drm_device*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.TYPE_5__*, i32*, i32, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @drm_bridge_attach(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @drm_encoder_cleanup(%struct.TYPE_5__*) #1

declare dso_local i32 @mtk_ddp_comp_unregister(%struct.drm_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
