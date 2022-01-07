; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4_core.c_hdmi4_core_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4_core.c_hdmi4_core_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.hdmi_core_data = type { i32, i32, i32 }
%struct.hdmi4_features = type { i32, i32 }
%struct.resource = type { i32 }
%struct.soc_device_attribute = type { %struct.hdmi4_features* }

@hdmi4_soc_devices = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"core\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdmi4_core_init(%struct.platform_device* %0, %struct.hdmi_core_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.hdmi_core_data*, align 8
  %6 = alloca %struct.hdmi4_features*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.soc_device_attribute*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.hdmi_core_data* %1, %struct.hdmi_core_data** %5, align 8
  %9 = load i32, i32* @hdmi4_soc_devices, align 4
  %10 = call %struct.soc_device_attribute* @soc_device_match(i32 %9)
  store %struct.soc_device_attribute* %10, %struct.soc_device_attribute** %8, align 8
  %11 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %8, align 8
  %12 = icmp ne %struct.soc_device_attribute* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %50

16:                                               ; preds = %2
  %17 = load %struct.soc_device_attribute*, %struct.soc_device_attribute** %8, align 8
  %18 = getelementptr inbounds %struct.soc_device_attribute, %struct.soc_device_attribute* %17, i32 0, i32 0
  %19 = load %struct.hdmi4_features*, %struct.hdmi4_features** %18, align 8
  store %struct.hdmi4_features* %19, %struct.hdmi4_features** %6, align 8
  %20 = load %struct.hdmi4_features*, %struct.hdmi4_features** %6, align 8
  %21 = getelementptr inbounds %struct.hdmi4_features, %struct.hdmi4_features* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %5, align 8
  %24 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.hdmi4_features*, %struct.hdmi4_features** %6, align 8
  %26 = getelementptr inbounds %struct.hdmi4_features, %struct.hdmi4_features* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %5, align 8
  %29 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %31 = load i32, i32* @IORESOURCE_MEM, align 4
  %32 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %30, i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %32, %struct.resource** %7, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.resource*, %struct.resource** %7, align 8
  %36 = call i32 @devm_ioremap_resource(i32* %34, %struct.resource* %35)
  %37 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %5, align 8
  %38 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %5, align 8
  %40 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %16
  %45 = load %struct.hdmi_core_data*, %struct.hdmi_core_data** %5, align 8
  %46 = getelementptr inbounds %struct.hdmi_core_data, %struct.hdmi_core_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @PTR_ERR(i32 %47)
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %44, %13
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.soc_device_attribute* @soc_device_match(i32) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
