; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_hdmi.c_vc4_hdmi_connector_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_hdmi.c_vc4_hdmi_connector_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.vc4_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@connector_status_connected = common dso_local global i32 0, align 4
@connector_status_disconnected = common dso_local global i32 0, align 4
@VC4_HDMI_HOTPLUG = common dso_local global i32 0, align 4
@VC4_HDMI_HOTPLUG_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @vc4_hdmi_connector_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_hdmi_connector_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.vc4_dev*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %9 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %8, i32 0, i32 0
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %6, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %12 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %11)
  store %struct.vc4_dev* %12, %struct.vc4_dev** %7, align 8
  %13 = load %struct.vc4_dev*, %struct.vc4_dev** %7, align 8
  %14 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %2
  %20 = load %struct.vc4_dev*, %struct.vc4_dev** %7, align 8
  %21 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @gpio_get_value_cansleep(i64 %24)
  %26 = load %struct.vc4_dev*, %struct.vc4_dev** %7, align 8
  %27 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = xor i32 %25, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = load i32, i32* @connector_status_connected, align 4
  store i32 %34, i32* %3, align 4
  br label %69

35:                                               ; preds = %19
  %36 = load %struct.vc4_dev*, %struct.vc4_dev** %7, align 8
  %37 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cec_phys_addr_invalidate(i32 %40)
  %42 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %42, i32* %3, align 4
  br label %69

43:                                               ; preds = %2
  %44 = load %struct.vc4_dev*, %struct.vc4_dev** %7, align 8
  %45 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @drm_probe_ddc(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @connector_status_connected, align 4
  store i32 %52, i32* %3, align 4
  br label %69

53:                                               ; preds = %43
  %54 = load i32, i32* @VC4_HDMI_HOTPLUG, align 4
  %55 = call i32 @HDMI_READ(i32 %54)
  %56 = load i32, i32* @VC4_HDMI_HOTPLUG_CONNECTED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @connector_status_connected, align 4
  store i32 %60, i32* %3, align 4
  br label %69

61:                                               ; preds = %53
  %62 = load %struct.vc4_dev*, %struct.vc4_dev** %7, align 8
  %63 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @cec_phys_addr_invalidate(i32 %66)
  %68 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %61, %59, %51, %35, %33
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i32 @gpio_get_value_cansleep(i64) #1

declare dso_local i32 @cec_phys_addr_invalidate(i32) #1

declare dso_local i64 @drm_probe_ddc(i32) #1

declare dso_local i32 @HDMI_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
