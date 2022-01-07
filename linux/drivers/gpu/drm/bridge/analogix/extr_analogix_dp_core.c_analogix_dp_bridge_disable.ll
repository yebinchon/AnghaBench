; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_bridge_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_bridge_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { %struct.analogix_dp_device* }
%struct.analogix_dp_device = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)*, i64 }

@DRM_MODE_DPMS_ON = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"failed to disable the panel\0A\00", align 1
@POWER_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to setup the panel ret = %d\0A\00", align 1
@DRM_MODE_DPMS_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*)* @analogix_dp_bridge_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analogix_dp_bridge_disable(%struct.drm_bridge* %0) #0 {
  %2 = alloca %struct.drm_bridge*, align 8
  %3 = alloca %struct.analogix_dp_device*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %2, align 8
  %5 = load %struct.drm_bridge*, %struct.drm_bridge** %2, align 8
  %6 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %5, i32 0, i32 0
  %7 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %6, align 8
  store %struct.analogix_dp_device* %7, %struct.analogix_dp_device** %3, align 8
  %8 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %9 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DRM_MODE_DPMS_ON, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %84

14:                                               ; preds = %1
  %15 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %16 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %15, i32 0, i32 6
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %14
  %22 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %23 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %22, i32 0, i32 6
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @drm_panel_disable(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %84

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %14
  %33 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %34 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @disable_irq(i32 %35)
  %37 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %38 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %37, i32 0, i32 6
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %40, align 8
  %42 = icmp ne i32 (%struct.TYPE_2__*)* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %32
  %44 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %45 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %44, i32 0, i32 6
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %47, align 8
  %49 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %50 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %49, i32 0, i32 6
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = call i32 %48(%struct.TYPE_2__* %51)
  br label %53

53:                                               ; preds = %43, %32
  %54 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %55 = load i32, i32* @POWER_ALL, align 4
  %56 = call i32 @analogix_dp_set_analog_power_down(%struct.analogix_dp_device* %54, i32 %55, i32 1)
  %57 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %58 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @phy_power_off(i32 %59)
  %61 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %62 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @clk_disable_unprepare(i32 %63)
  %65 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %66 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @pm_runtime_put_sync(i32 %67)
  %69 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %70 = call i32 @analogix_dp_prepare_panel(%struct.analogix_dp_device* %69, i32 0, i32 1)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %53
  %74 = load i32, i32* %4, align 4
  %75 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %73, %53
  %77 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %78 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %77, i32 0, i32 1
  store i32 0, i32* %78, align 8
  %79 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %80 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %79, i32 0, i32 2
  store i32 0, i32* %80, align 4
  %81 = load i64, i64* @DRM_MODE_DPMS_OFF, align 8
  %82 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %3, align 8
  %83 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  br label %84

84:                                               ; preds = %76, %29, %13
  ret void
}

declare dso_local i64 @drm_panel_disable(i64) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @analogix_dp_set_analog_power_down(%struct.analogix_dp_device*, i32, i32) #1

declare dso_local i32 @phy_power_off(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @analogix_dp_prepare_panel(%struct.analogix_dp_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
