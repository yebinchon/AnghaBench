; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_init_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dsi.c_dsi_init_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { i64, i32, %struct.omap_dss_device }
%struct.omap_dss_device = type { i8*, i32, i32, i32, i32*, i32, i32, i32, i32 }

@OMAP_DSS_OUTPUT_DSI1 = common dso_local global i32 0, align 4
@OMAP_DSS_OUTPUT_DSI2 = common dso_local global i32 0, align 4
@OMAP_DISPLAY_TYPE_DSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"dsi.0\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"dsi.1\00", align 1
@dsi_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_DE_HIGH = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_SYNC_DRIVE_NEGEDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsi_data*)* @dsi_init_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_init_output(%struct.dsi_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsi_data*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca i32, align 4
  store %struct.dsi_data* %0, %struct.dsi_data** %3, align 8
  %6 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %7 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %6, i32 0, i32 2
  store %struct.omap_dss_device* %7, %struct.omap_dss_device** %4, align 8
  %8 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %9 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %12 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %11, i32 0, i32 8
  store i32 %10, i32* %12, align 4
  %13 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %14 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @OMAP_DSS_OUTPUT_DSI1, align 4
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @OMAP_DSS_OUTPUT_DSI2, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %24 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @OMAP_DISPLAY_TYPE_DSI, align 4
  %26 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %27 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 4
  %28 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %29 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  %34 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %35 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %34, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %37 = call i32 @dsi_get_channel(%struct.dsi_data* %36)
  %38 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %39 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %41 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %40, i32 0, i32 4
  store i32* @dsi_ops, i32** %41, align 8
  %42 = load i32, i32* @THIS_MODULE, align 4
  %43 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %44 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = call i32 @BIT(i32 0)
  %46 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %47 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE, align 4
  %49 = load i32, i32* @DRM_BUS_FLAG_DE_HIGH, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @DRM_BUS_FLAG_SYNC_DRIVE_NEGEDGE, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %54 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %56 = call i32 @omapdss_device_init_output(%struct.omap_dss_device* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %21
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %64

61:                                               ; preds = %21
  %62 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %63 = call i32 @omapdss_device_register(%struct.omap_dss_device* %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %61, %59
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @dsi_get_channel(%struct.dsi_data*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @omapdss_device_init_output(%struct.omap_dss_device*) #1

declare dso_local i32 @omapdss_device_register(%struct.omap_dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
