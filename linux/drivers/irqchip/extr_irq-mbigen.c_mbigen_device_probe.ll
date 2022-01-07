; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mbigen.c_mbigen_device_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-mbigen.c_mbigen_device_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.mbigen_device = type { i32, %struct.platform_device* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to ioremap %pR\0A\00", align 1
@CONFIG_OF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to create mbi-gen irqdomain\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mbigen_device_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbigen_device_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mbigen_device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mbigen_device* @devm_kzalloc(%struct.TYPE_5__* %8, i32 16, i32 %9)
  store %struct.mbigen_device* %10, %struct.mbigen_device** %4, align 8
  %11 = load %struct.mbigen_device*, %struct.mbigen_device** %4, align 8
  %12 = icmp ne %struct.mbigen_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %89

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load %struct.mbigen_device*, %struct.mbigen_device** %4, align 8
  %19 = getelementptr inbounds %struct.mbigen_device, %struct.mbigen_device* %18, i32 0, i32 1
  store %struct.platform_device* %17, %struct.platform_device** %19, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load i32, i32* @IORESOURCE_MEM, align 4
  %22 = call %struct.resource* @platform_get_resource(%struct.platform_device* %20, i32 %21, i32 0)
  store %struct.resource* %22, %struct.resource** %5, align 8
  %23 = load %struct.resource*, %struct.resource** %5, align 8
  %24 = icmp ne %struct.resource* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %16
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %89

28:                                               ; preds = %16
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load %struct.resource*, %struct.resource** %5, align 8
  %32 = getelementptr inbounds %struct.resource, %struct.resource* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.resource*, %struct.resource** %5, align 8
  %35 = call i32 @resource_size(%struct.resource* %34)
  %36 = call i32 @devm_ioremap(%struct.TYPE_5__* %30, i32 %33, i32 %35)
  %37 = load %struct.mbigen_device*, %struct.mbigen_device** %4, align 8
  %38 = getelementptr inbounds %struct.mbigen_device, %struct.mbigen_device* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.mbigen_device*, %struct.mbigen_device** %4, align 8
  %40 = getelementptr inbounds %struct.mbigen_device, %struct.mbigen_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %28
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load %struct.resource*, %struct.resource** %5, align 8
  %47 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.resource* %46)
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %89

50:                                               ; preds = %28
  %51 = load i32, i32* @CONFIG_OF, align 4
  %52 = call i64 @IS_ENABLED(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = load %struct.mbigen_device*, %struct.mbigen_device** %4, align 8
  %63 = call i32 @mbigen_of_create_domain(%struct.platform_device* %61, %struct.mbigen_device* %62)
  store i32 %63, i32* %6, align 4
  br label %77

64:                                               ; preds = %54, %50
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = call i64 @ACPI_COMPANION(%struct.TYPE_5__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = load %struct.mbigen_device*, %struct.mbigen_device** %4, align 8
  %72 = call i32 @mbigen_acpi_create_domain(%struct.platform_device* %70, %struct.mbigen_device* %71)
  store i32 %72, i32* %6, align 4
  br label %76

73:                                               ; preds = %64
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %73, %69
  br label %77

77:                                               ; preds = %76, %60
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %82, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %2, align 4
  br label %89

85:                                               ; preds = %77
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = load %struct.mbigen_device*, %struct.mbigen_device** %4, align 8
  %88 = call i32 @platform_set_drvdata(%struct.platform_device* %86, %struct.mbigen_device* %87)
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %85, %80, %43, %25, %13
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.mbigen_device* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @mbigen_of_create_domain(%struct.platform_device*, %struct.mbigen_device*) #1

declare dso_local i64 @ACPI_COMPANION(%struct.TYPE_5__*) #1

declare dso_local i32 @mbigen_acpi_create_domain(%struct.platform_device*, %struct.mbigen_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mbigen_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
