; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ich.c_ichx_gpio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ich.c_ichx_gpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__, %struct.resource*, %struct.TYPE_12__*, i32, %struct.resource*, i32, %struct.device* }
%struct.TYPE_14__ = type { i64, i64 }
%struct.resource = type { i32 }
%struct.device = type { i32 }
%struct.platform_device = type { i32, %struct.device }
%struct.lpc_ich_info = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@i3100_desc = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@ichx_priv = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@intel5_desc = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@ich6_desc = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@ich7_desc = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@ich9_desc = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@ich10_corp_desc = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@ich10_cons_desc = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@avoton_desc = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@ICH_RES_GPIO = common dso_local global i32 0, align 4
@ICH_RES_GPE0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"ACPI BAR is unavailable, GPI 0 - 15 unavailable\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"ACPI BAR is busy, GPI 0 - 15 unavailable\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to register GPIOs\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"GPIO from %d to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ichx_gpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ichx_gpio_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.lpc_ich_info*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.lpc_ich_info* @dev_get_platdata(%struct.device* %11)
  store %struct.lpc_ich_info* %12, %struct.lpc_ich_info** %5, align 8
  %13 = load %struct.lpc_ich_info*, %struct.lpc_ich_info** %5, align 8
  %14 = icmp ne %struct.lpc_ich_info* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %107

18:                                               ; preds = %1
  %19 = load %struct.lpc_ich_info*, %struct.lpc_ich_info** %5, align 8
  %20 = getelementptr inbounds %struct.lpc_ich_info, %struct.lpc_ich_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %30 [
    i32 134, label %22
    i32 131, label %23
    i32 130, label %24
    i32 129, label %25
    i32 128, label %26
    i32 132, label %27
    i32 133, label %28
    i32 135, label %29
  ]

22:                                               ; preds = %18
  store %struct.TYPE_12__* @i3100_desc, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ichx_priv, i32 0, i32 2), align 8
  br label %33

23:                                               ; preds = %18
  store %struct.TYPE_12__* @intel5_desc, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ichx_priv, i32 0, i32 2), align 8
  br label %33

24:                                               ; preds = %18
  store %struct.TYPE_12__* @ich6_desc, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ichx_priv, i32 0, i32 2), align 8
  br label %33

25:                                               ; preds = %18
  store %struct.TYPE_12__* @ich7_desc, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ichx_priv, i32 0, i32 2), align 8
  br label %33

26:                                               ; preds = %18
  store %struct.TYPE_12__* @ich9_desc, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ichx_priv, i32 0, i32 2), align 8
  br label %33

27:                                               ; preds = %18
  store %struct.TYPE_12__* @ich10_corp_desc, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ichx_priv, i32 0, i32 2), align 8
  br label %33

28:                                               ; preds = %18
  store %struct.TYPE_12__* @ich10_cons_desc, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ichx_priv, i32 0, i32 2), align 8
  br label %33

29:                                               ; preds = %18
  store %struct.TYPE_12__* @avoton_desc, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ichx_priv, i32 0, i32 2), align 8
  br label %33

30:                                               ; preds = %18
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %107

33:                                               ; preds = %29, %28, %27, %26, %25, %24, %23, %22
  %34 = load %struct.device*, %struct.device** %4, align 8
  store %struct.device* %34, %struct.device** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ichx_priv, i32 0, i32 6), align 8
  %35 = call i32 @spin_lock_init(i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ichx_priv, i32 0, i32 5))
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load i32, i32* @IORESOURCE_IO, align 4
  %38 = load i32, i32* @ICH_RES_GPIO, align 4
  %39 = call %struct.resource* @platform_get_resource(%struct.platform_device* %36, i32 %37, i32 %38)
  store %struct.resource* %39, %struct.resource** %6, align 8
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load %struct.resource*, %struct.resource** %6, align 8
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.lpc_ich_info*, %struct.lpc_ich_info** %5, align 8
  %46 = getelementptr inbounds %struct.lpc_ich_info, %struct.lpc_ich_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ichx_gpio_request_regions(%struct.device* %40, %struct.resource* %41, i32 %44, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %33
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %2, align 4
  br label %107

53:                                               ; preds = %33
  %54 = load %struct.resource*, %struct.resource** %6, align 8
  store %struct.resource* %54, %struct.resource** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ichx_priv, i32 0, i32 4), align 8
  %55 = load %struct.lpc_ich_info*, %struct.lpc_ich_info** %5, align 8
  %56 = getelementptr inbounds %struct.lpc_ich_info, %struct.lpc_ich_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ichx_priv, i32 0, i32 3), align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ichx_priv, i32 0, i32 2), align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %53
  br label %90

63:                                               ; preds = %53
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = load i32, i32* @IORESOURCE_IO, align 4
  %66 = load i32, i32* @ICH_RES_GPE0, align 4
  %67 = call %struct.resource* @platform_get_resource(%struct.platform_device* %64, i32 %65, i32 %66)
  store %struct.resource* %67, %struct.resource** %7, align 8
  %68 = load %struct.resource*, %struct.resource** %7, align 8
  %69 = icmp ne %struct.resource* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %63
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = call i32 @dev_warn(%struct.device* %71, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %90

73:                                               ; preds = %63
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = load %struct.resource*, %struct.resource** %7, align 8
  %76 = getelementptr inbounds %struct.resource, %struct.resource* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.resource*, %struct.resource** %7, align 8
  %79 = call i32 @resource_size(%struct.resource* %78)
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @devm_request_region(%struct.device* %74, i32 %77, i32 %79, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %73
  %86 = load %struct.device*, %struct.device** %4, align 8
  %87 = call i32 @dev_warn(%struct.device* %86, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %90

88:                                               ; preds = %73
  %89 = load %struct.resource*, %struct.resource** %7, align 8
  store %struct.resource* %89, %struct.resource** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ichx_priv, i32 0, i32 1), align 8
  br label %90

90:                                               ; preds = %88, %85, %70, %62
  %91 = call i32 @ichx_gpiolib_setup(%struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ichx_priv, i32 0, i32 0))
  %92 = call i32 @gpiochip_add_data(%struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ichx_priv, i32 0, i32 0), i32* null)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load %struct.device*, %struct.device** %4, align 8
  %97 = call i32 @dev_err(%struct.device* %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %2, align 4
  br label %107

99:                                               ; preds = %90
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ichx_priv, i32 0, i32 0, i32 1), align 8
  %102 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ichx_priv, i32 0, i32 0, i32 1), align 8
  %103 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ichx_priv, i32 0, i32 0, i32 0), align 8
  %104 = add nsw i64 %102, %103
  %105 = sub nsw i64 %104, 1
  %106 = call i32 @dev_info(%struct.device* %100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i64 %101, i64 %105)
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %99, %95, %51, %30, %15
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.lpc_ich_info* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @ichx_gpio_request_regions(%struct.device*, %struct.resource*, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @devm_request_region(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @ichx_gpiolib_setup(%struct.TYPE_14__*) #1

declare dso_local i32 @gpiochip_add_data(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
