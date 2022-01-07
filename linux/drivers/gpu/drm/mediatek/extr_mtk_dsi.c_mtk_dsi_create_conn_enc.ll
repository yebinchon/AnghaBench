; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_create_conn_enc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dsi.c_mtk_dsi_create_conn_enc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.mtk_dsi = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32 }

@mtk_dsi_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_DSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to encoder init to drm\0A\00", align 1
@mtk_dsi_encoder_helper_funcs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to attach bridge to drm\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.mtk_dsi*)* @mtk_dsi_create_conn_enc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_dsi_create_conn_enc(%struct.drm_device* %0, %struct.mtk_dsi* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.mtk_dsi*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.mtk_dsi* %1, %struct.mtk_dsi** %5, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %8 = load %struct.mtk_dsi*, %struct.mtk_dsi** %5, align 8
  %9 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %8, i32 0, i32 0
  %10 = load i32, i32* @DRM_MODE_ENCODER_DSI, align 4
  %11 = call i32 @drm_encoder_init(%struct.drm_device* %7, %struct.TYPE_5__* %9, i32* @mtk_dsi_encoder_funcs, i32 %10, i32* null)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %54

17:                                               ; preds = %2
  %18 = load %struct.mtk_dsi*, %struct.mtk_dsi** %5, align 8
  %19 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %18, i32 0, i32 0
  %20 = call i32 @drm_encoder_helper_add(%struct.TYPE_5__* %19, i32* @mtk_dsi_encoder_helper_funcs)
  %21 = load %struct.mtk_dsi*, %struct.mtk_dsi** %5, align 8
  %22 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.mtk_dsi*, %struct.mtk_dsi** %5, align 8
  %25 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %17
  %29 = load %struct.mtk_dsi*, %struct.mtk_dsi** %5, align 8
  %30 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %29, i32 0, i32 0
  %31 = load %struct.mtk_dsi*, %struct.mtk_dsi** %5, align 8
  %32 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @drm_bridge_attach(%struct.TYPE_5__* %30, i64 %33, i32* null)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %49

39:                                               ; preds = %28
  br label %48

40:                                               ; preds = %17
  %41 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %42 = load %struct.mtk_dsi*, %struct.mtk_dsi** %5, align 8
  %43 = call i32 @mtk_dsi_create_connector(%struct.drm_device* %41, %struct.mtk_dsi* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %49

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %39
  store i32 0, i32* %3, align 4
  br label %54

49:                                               ; preds = %46, %37
  %50 = load %struct.mtk_dsi*, %struct.mtk_dsi** %5, align 8
  %51 = getelementptr inbounds %struct.mtk_dsi, %struct.mtk_dsi* %50, i32 0, i32 0
  %52 = call i32 @drm_encoder_cleanup(%struct.TYPE_5__* %51)
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %49, %48, %14
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.TYPE_5__*, i32*, i32, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @drm_bridge_attach(%struct.TYPE_5__*, i64, i32*) #1

declare dso_local i32 @mtk_dsi_create_connector(%struct.drm_device*, %struct.mtk_dsi*) #1

declare dso_local i32 @drm_encoder_cleanup(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
