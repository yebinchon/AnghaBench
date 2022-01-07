; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi.c_msm_hdmi_get_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi.c_msm_hdmi_get_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi = type { i32, i32, %struct.platform_device* }
%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"phys\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"cannot find phy device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"phy driver is not ready\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi*)* @msm_hdmi_get_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_hdmi_get_phy(%struct.hdmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdmi*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  store %struct.hdmi* %0, %struct.hdmi** %3, align 8
  %7 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %8 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %7, i32 0, i32 2
  %9 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  store %struct.platform_device* %9, %struct.platform_device** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.device_node* @of_parse_phandle(i32 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %14, %struct.device_node** %6, align 8
  %15 = load %struct.device_node*, %struct.device_node** %6, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 @DRM_DEV_ERROR(%struct.TYPE_3__* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @ENXIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %55

23:                                               ; preds = %1
  %24 = load %struct.device_node*, %struct.device_node** %6, align 8
  %25 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %24)
  store %struct.platform_device* %25, %struct.platform_device** %5, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %27 = icmp ne %struct.platform_device* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %30 = call i32 @platform_get_drvdata(%struct.platform_device* %29)
  %31 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %32 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.device_node*, %struct.device_node** %6, align 8
  %35 = call i32 @of_node_put(%struct.device_node* %34)
  %36 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %37 = icmp ne %struct.platform_device* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %40 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call i32 @DRM_DEV_ERROR(%struct.TYPE_3__* %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @EPROBE_DEFER, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %55

49:                                               ; preds = %38
  %50 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = call i32 @get_device(%struct.TYPE_3__* %51)
  %53 = load %struct.hdmi*, %struct.hdmi** %3, align 8
  %54 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %49, %43, %17
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.TYPE_3__*, i8*) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @get_device(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
