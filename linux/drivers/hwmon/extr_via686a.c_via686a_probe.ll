; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_via686a.c_via686a_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_via686a.c_via686a_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.via686a_data = type { i8*, i32, i32, i64 }
%struct.resource = type { i64, i64 }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@VIA686A_EXTENT = common dso_local global i32 0, align 4
@via686a_driver = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [36 x i8] c"Region 0x%lx-0x%lx already in use!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"via686a\00", align 1
@via686a_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @via686a_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via686a_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.via686a_data*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = load i32, i32* @IORESOURCE_IO, align 4
  %9 = call %struct.resource* @platform_get_resource(%struct.platform_device* %7, i32 %8, i32 0)
  store %struct.resource* %9, %struct.resource** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load %struct.resource*, %struct.resource** %5, align 8
  %13 = getelementptr inbounds %struct.resource, %struct.resource* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @VIA686A_EXTENT, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @via686a_driver, i32 0, i32 0, i32 0), align 4
  %17 = call i32 @devm_request_region(%struct.TYPE_9__* %11, i64 %14, i32 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.resource*, %struct.resource** %5, align 8
  %23 = getelementptr inbounds %struct.resource, %struct.resource* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.resource*, %struct.resource** %5, align 8
  %26 = getelementptr inbounds %struct.resource, %struct.resource* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @dev_err(%struct.TYPE_9__* %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %24, i64 %27)
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %88

31:                                               ; preds = %1
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.via686a_data* @devm_kzalloc(%struct.TYPE_9__* %33, i32 24, i32 %34)
  store %struct.via686a_data* %35, %struct.via686a_data** %4, align 8
  %36 = load %struct.via686a_data*, %struct.via686a_data** %4, align 8
  %37 = icmp ne %struct.via686a_data* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %88

41:                                               ; preds = %31
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = load %struct.via686a_data*, %struct.via686a_data** %4, align 8
  %44 = call i32 @platform_set_drvdata(%struct.platform_device* %42, %struct.via686a_data* %43)
  %45 = load %struct.resource*, %struct.resource** %5, align 8
  %46 = getelementptr inbounds %struct.resource, %struct.resource* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.via686a_data*, %struct.via686a_data** %4, align 8
  %49 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %48, i32 0, i32 3
  store i64 %47, i64* %49, align 8
  %50 = load %struct.via686a_data*, %struct.via686a_data** %4, align 8
  %51 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %50, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %51, align 8
  %52 = load %struct.via686a_data*, %struct.via686a_data** %4, align 8
  %53 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %52, i32 0, i32 2
  %54 = call i32 @mutex_init(i32* %53)
  %55 = load %struct.via686a_data*, %struct.via686a_data** %4, align 8
  %56 = call i32 @via686a_init_device(%struct.via686a_data* %55)
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = call i32 @sysfs_create_group(i32* %59, i32* @via686a_group)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %41
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %88

65:                                               ; preds = %41
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = call i32 @hwmon_device_register(%struct.TYPE_9__* %67)
  %69 = load %struct.via686a_data*, %struct.via686a_data** %4, align 8
  %70 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load %struct.via686a_data*, %struct.via686a_data** %4, align 8
  %72 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @IS_ERR(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %65
  %77 = load %struct.via686a_data*, %struct.via686a_data** %4, align 8
  %78 = getelementptr inbounds %struct.via686a_data, %struct.via686a_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @PTR_ERR(i32 %79)
  store i32 %80, i32* %6, align 4
  br label %82

81:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %88

82:                                               ; preds = %76
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = call i32 @sysfs_remove_group(i32* %85, i32* @via686a_group)
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %82, %81, %63, %38, %19
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_request_region(%struct.TYPE_9__*, i64, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, i64, i64) #1

declare dso_local %struct.via686a_data* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.via686a_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @via686a_init_device(%struct.via686a_data*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @hwmon_device_register(%struct.TYPE_9__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
