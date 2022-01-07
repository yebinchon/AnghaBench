; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_encoder.c_omap_encoder_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_encoder.c_omap_encoder_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.omap_encoder = type { %struct.omap_dss_device* }
%struct.omap_dss_device = type { i64, i32, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 (%struct.omap_dss_device*)* }

@.str = private unnamed_addr constant [13 x i8] c"disable(%s)\0A\00", align 1
@OMAP_DISPLAY_TYPE_DSI = common dso_local global i64 0, align 8
@OMAP_DSS_DISPLAY_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @omap_encoder_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_encoder_disable(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.omap_encoder*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca %struct.drm_device*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %6 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %7 = call %struct.omap_encoder* @to_omap_encoder(%struct.drm_encoder* %6)
  store %struct.omap_encoder* %7, %struct.omap_encoder** %3, align 8
  %8 = load %struct.omap_encoder*, %struct.omap_encoder** %3, align 8
  %9 = getelementptr inbounds %struct.omap_encoder, %struct.omap_encoder* %8, i32 0, i32 0
  %10 = load %struct.omap_dss_device*, %struct.omap_dss_device** %9, align 8
  store %struct.omap_dss_device* %10, %struct.omap_dss_device** %4, align 8
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %12 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %5, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %18 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %22 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %1
  %26 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %27 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @drm_panel_disable(i64 %28)
  %30 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %31 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @drm_panel_unprepare(i64 %32)
  br label %34

34:                                               ; preds = %25, %1
  %35 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %36 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @omapdss_device_disable(i32 %37)
  %39 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %40 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @OMAP_DISPLAY_TYPE_DSI, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %34
  %45 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %46 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %45, i32 0, i32 3
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %48, align 8
  %50 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %51 = call i32 %49(%struct.omap_dss_device* %50)
  %52 = load i32, i32* @OMAP_DSS_DISPLAY_DISABLED, align 4
  %53 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %54 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %44, %34
  %56 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %57 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @omapdss_device_post_disable(i32 %58)
  ret void
}

declare dso_local %struct.omap_encoder* @to_omap_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @drm_panel_disable(i64) #1

declare dso_local i32 @drm_panel_unprepare(i64) #1

declare dso_local i32 @omapdss_device_disable(i32) #1

declare dso_local i32 @omapdss_device_post_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
