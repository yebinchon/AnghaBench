; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-isch.c_smbus_sch_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-isch.c_smbus_sch_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.platform_device = type { i32, i32 }
%struct.resource = type { i32 }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"SMBus region 0x%x already in use!\0A\00", align 1
@sch_smba = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"SMBA = 0x%X\0A\00", align 1
@sch_adapter = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"SMBus SCH adapter at %04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @smbus_sch_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbus_sch_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @IORESOURCE_IO, align 4
  %8 = call %struct.resource* @platform_get_resource(%struct.platform_device* %6, i32 %7, i32 0)
  store %struct.resource* %8, %struct.resource** %4, align 8
  %9 = load %struct.resource*, %struct.resource** %4, align 8
  %10 = icmp ne %struct.resource* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %53

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load %struct.resource*, %struct.resource** %4, align 8
  %18 = getelementptr inbounds %struct.resource, %struct.resource* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.resource*, %struct.resource** %4, align 8
  %21 = call i32 @resource_size(%struct.resource* %20)
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @devm_request_region(i32* %16, i32 %19, i32 %21, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %14
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load i32, i32* @sch_smba, align 4
  %31 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %53

34:                                               ; preds = %14
  %35 = load %struct.resource*, %struct.resource** %4, align 8
  %36 = getelementptr inbounds %struct.resource, %struct.resource* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* @sch_smba, align 4
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load i32, i32* @sch_smba, align 4
  %41 = call i32 @dev_dbg(i32* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  store i32* %43, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sch_adapter, i32 0, i32 1, i32 0), align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sch_adapter, i32 0, i32 0), align 8
  %45 = load i32, i32* @sch_smba, align 4
  %46 = call i32 @snprintf(i32 %44, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = call i32 @i2c_add_adapter(%struct.TYPE_5__* @sch_adapter)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %34
  store i32 0, i32* @sch_smba, align 4
  br label %51

51:                                               ; preds = %50, %34
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %27, %11
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_request_region(i32*, i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @i2c_add_adapter(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
