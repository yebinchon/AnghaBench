; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_encoder.c_omap_encoder_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_encoder.c_omap_encoder_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.omap_encoder = type { %struct.omap_dss_device* }
%struct.omap_dss_device = type { i64, i64, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.omap_dss_device*)* }

@.str = private unnamed_addr constant [12 x i8] c"enable(%s)\0A\00", align 1
@OMAP_DISPLAY_TYPE_DSI = common dso_local global i64 0, align 8
@OMAP_DSS_DISPLAY_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @omap_encoder_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_encoder_enable(%struct.drm_encoder* %0) #0 {
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
  %20 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %22 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @omapdss_device_pre_enable(i32 %23)
  %25 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %26 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @OMAP_DISPLAY_TYPE_DSI, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %1
  %31 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %32 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %31, i32 0, i32 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %34, align 8
  %36 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %37 = call i32 %35(%struct.omap_dss_device* %36)
  %38 = load i32, i32* @OMAP_DSS_DISPLAY_ACTIVE, align 4
  %39 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %40 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %30, %1
  %42 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %43 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @omapdss_device_enable(i32 %44)
  %46 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %47 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %41
  %51 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %52 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @drm_panel_prepare(i64 %53)
  %55 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %56 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @drm_panel_enable(i64 %57)
  br label %59

59:                                               ; preds = %50, %41
  ret void
}

declare dso_local %struct.omap_encoder* @to_omap_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @omapdss_device_pre_enable(i32) #1

declare dso_local i32 @omapdss_device_enable(i32) #1

declare dso_local i32 @drm_panel_prepare(i64) #1

declare dso_local i32 @drm_panel_enable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
