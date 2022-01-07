; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_smsc47b397.c_smsc47b397_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_smsc47b397.c_smsc47b397_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.smsc47b397_data = type { i32, i32, i64 }
%struct.resource = type { i64 }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@SMSC_EXTENT = common dso_local global i64 0, align 8
@smsc47b397_driver = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [36 x i8] c"Region 0x%lx-0x%lx already in use!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"smsc47b397\00", align 1
@smsc47b397_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @smsc47b397_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc47b397_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.smsc47b397_data*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = load i32, i32* @IORESOURCE_IO, align 4
  %12 = call %struct.resource* @platform_get_resource(%struct.platform_device* %10, i32 %11, i32 0)
  store %struct.resource* %12, %struct.resource** %7, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load %struct.resource*, %struct.resource** %7, align 8
  %15 = getelementptr inbounds %struct.resource, %struct.resource* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SMSC_EXTENT, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @smsc47b397_driver, i32 0, i32 0, i32 0), align 4
  %19 = call i32 @devm_request_region(%struct.device* %13, i64 %16, i64 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = load %struct.resource*, %struct.resource** %7, align 8
  %24 = getelementptr inbounds %struct.resource, %struct.resource* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.resource*, %struct.resource** %7, align 8
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SMSC_EXTENT, align 8
  %30 = add i64 %28, %29
  %31 = sub i64 %30, 1
  %32 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %31)
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %62

35:                                               ; preds = %1
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.smsc47b397_data* @devm_kzalloc(%struct.device* %36, i32 16, i32 %37)
  store %struct.smsc47b397_data* %38, %struct.smsc47b397_data** %5, align 8
  %39 = load %struct.smsc47b397_data*, %struct.smsc47b397_data** %5, align 8
  %40 = icmp ne %struct.smsc47b397_data* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %62

44:                                               ; preds = %35
  %45 = load %struct.resource*, %struct.resource** %7, align 8
  %46 = getelementptr inbounds %struct.resource, %struct.resource* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.smsc47b397_data*, %struct.smsc47b397_data** %5, align 8
  %49 = getelementptr inbounds %struct.smsc47b397_data, %struct.smsc47b397_data* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  %50 = load %struct.smsc47b397_data*, %struct.smsc47b397_data** %5, align 8
  %51 = getelementptr inbounds %struct.smsc47b397_data, %struct.smsc47b397_data* %50, i32 0, i32 1
  %52 = call i32 @mutex_init(i32* %51)
  %53 = load %struct.smsc47b397_data*, %struct.smsc47b397_data** %5, align 8
  %54 = getelementptr inbounds %struct.smsc47b397_data, %struct.smsc47b397_data* %53, i32 0, i32 0
  %55 = call i32 @mutex_init(i32* %54)
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load %struct.smsc47b397_data*, %struct.smsc47b397_data** %5, align 8
  %58 = load i32, i32* @smsc47b397_groups, align 4
  %59 = call %struct.device* @devm_hwmon_device_register_with_groups(%struct.device* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.smsc47b397_data* %57, i32 %58)
  store %struct.device* %59, %struct.device** %6, align 8
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = call i32 @PTR_ERR_OR_ZERO(%struct.device* %60)
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %44, %41, %21
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_request_region(%struct.device*, i64, i64, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i64) #1

declare dso_local %struct.smsc47b397_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.device* @devm_hwmon_device_register_with_groups(%struct.device*, i8*, %struct.smsc47b397_data*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
