; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_device_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.hv_device = type { %struct.TYPE_14__, i32, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i32, i32*, i32*, %struct.kobject }
%struct.kobject = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%pUl\00", align 1
@hv_bus = common dso_local global i32 0, align 4
@hv_acpi_dev = common dso_local global %struct.TYPE_13__* null, align 8
@vmbus_device_release = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Unable to register child device\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Unable to register primary channeln\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmbus_device_register(%struct.hv_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca i32, align 4
  store %struct.hv_device* %0, %struct.hv_device** %3, align 8
  %6 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %7 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 3
  store %struct.kobject* %8, %struct.kobject** %4, align 8
  %9 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %10 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %9, i32 0, i32 0
  %11 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %12 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %11, i32 0, i32 2
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_set_name(%struct.TYPE_14__* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %21 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  store i32* @hv_bus, i32** %22, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** @hv_acpi_dev, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %26 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  store i32* %24, i32** %27, align 8
  %28 = load i32, i32* @vmbus_device_release, align 4
  %29 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %30 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %33 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %32, i32 0, i32 0
  %34 = call i32 @device_register(%struct.TYPE_14__* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %1
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %73

40:                                               ; preds = %1
  %41 = load %struct.kobject*, %struct.kobject** %4, align 8
  %42 = call i32 @kset_create_and_add(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* null, %struct.kobject* %41)
  %43 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %44 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %46 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %68

52:                                               ; preds = %40
  %53 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %54 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %55 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %54, i32 0, i32 2
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = call i32 @vmbus_add_channel_kobj(%struct.hv_device* %53, %struct.TYPE_12__* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %63

62:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %73

63:                                               ; preds = %60
  %64 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %65 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @kset_unregister(i32 %66)
  br label %68

68:                                               ; preds = %63, %49
  %69 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %70 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %69, i32 0, i32 0
  %71 = call i32 @device_unregister(%struct.TYPE_14__* %70)
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %68, %62, %37
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @dev_set_name(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @device_register(%struct.TYPE_14__*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kset_create_and_add(i8*, i32*, %struct.kobject*) #1

declare dso_local i32 @vmbus_add_channel_kobj(%struct.hv_device*, %struct.TYPE_12__*) #1

declare dso_local i32 @kset_unregister(i32) #1

declare dso_local i32 @device_unregister(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
