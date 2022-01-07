; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_connector.c_detect_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_connector.c_detect_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@REG_HDMI_HPD_INT_STATUS = common dso_local global i32 0, align 4
@HDMI_HPD_INT_STATUS_CABLE_DETECTED = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@connector_status_disconnected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi*)* @detect_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_reg(%struct.hdmi* %0) #0 {
  %2 = alloca %struct.hdmi*, align 8
  %3 = alloca i32, align 4
  store %struct.hdmi* %0, %struct.hdmi** %2, align 8
  %4 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %5 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @pm_runtime_get_sync(i32* %7)
  %9 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %10 = call i32 @enable_hpd_clocks(%struct.hdmi* %9, i32 1)
  %11 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %12 = load i32, i32* @REG_HDMI_HPD_INT_STATUS, align 4
  %13 = call i32 @hdmi_read(%struct.hdmi* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %15 = call i32 @enable_hpd_clocks(%struct.hdmi* %14, i32 0)
  %16 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %17 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @pm_runtime_put_autosuspend(i32* %19)
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @HDMI_HPD_INT_STATUS_CABLE_DETECTED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @connector_status_connected, align 4
  br label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @connector_status_disconnected, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  ret i32 %30
}

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @enable_hpd_clocks(%struct.hdmi*, i32) #1

declare dso_local i32 @hdmi_read(%struct.hdmi*, i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
