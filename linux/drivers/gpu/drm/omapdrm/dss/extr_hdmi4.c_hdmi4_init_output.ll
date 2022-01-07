; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4.c_hdmi4_init_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4.c_hdmi4_init_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hdmi = type { %struct.TYPE_2__*, %struct.omap_dss_device }
%struct.TYPE_2__ = type { i32 }
%struct.omap_dss_device = type { i8*, i32, i32, i32, i32*, i32, i32, i32, i32* }

@OMAP_DSS_OUTPUT_HDMI = common dso_local global i32 0, align 4
@OMAP_DISPLAY_TYPE_HDMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"hdmi.0\00", align 1
@OMAP_DSS_CHANNEL_DIGIT = common dso_local global i32 0, align 4
@hdmi_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@OMAP_DSS_DEVICE_OP_EDID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hdmi*)* @hdmi4_init_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi4_init_output(%struct.omap_hdmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_hdmi*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca i32, align 4
  store %struct.omap_hdmi* %0, %struct.omap_hdmi** %3, align 8
  %6 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %7 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %6, i32 0, i32 1
  store %struct.omap_dss_device* %7, %struct.omap_dss_device** %4, align 8
  %8 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %9 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %13 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %12, i32 0, i32 8
  store i32* %11, i32** %13, align 8
  %14 = load i32, i32* @OMAP_DSS_OUTPUT_HDMI, align 4
  %15 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %16 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @OMAP_DISPLAY_TYPE_HDMI, align 4
  %18 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %19 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 4
  %20 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %21 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  %22 = load i32, i32* @OMAP_DSS_CHANNEL_DIGIT, align 4
  %23 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %24 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 8
  %25 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %26 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %25, i32 0, i32 4
  store i32* @hdmi_ops, i32** %26, align 8
  %27 = load i32, i32* @THIS_MODULE, align 4
  %28 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %29 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = call i32 @BIT(i32 0)
  %31 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %32 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @OMAP_DSS_DEVICE_OP_EDID, align 4
  %34 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %35 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %37 = call i32 @omapdss_device_init_output(%struct.omap_dss_device* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %1
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %45

42:                                               ; preds = %1
  %43 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %44 = call i32 @omapdss_device_register(%struct.omap_dss_device* %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %40
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @omapdss_device_init_output(%struct.omap_dss_device*) #1

declare dso_local i32 @omapdss_device_register(%struct.omap_dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
