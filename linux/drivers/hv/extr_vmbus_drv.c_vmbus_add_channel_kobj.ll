; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_add_channel_kobj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_add_channel_kobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.vmbus_channel = type { %struct.TYPE_2__, %struct.kobject }
%struct.TYPE_2__ = type { i32 }
%struct.kobject = type { i32 }

@vmbus_chan_ktype = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@vmbus_chan_group = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Unable to set up channel sysfs files\0A\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmbus_add_channel_kobj(%struct.hv_device* %0, %struct.vmbus_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hv_device*, align 8
  %5 = alloca %struct.vmbus_channel*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.kobject*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hv_device* %0, %struct.hv_device** %4, align 8
  store %struct.vmbus_channel* %1, %struct.vmbus_channel** %5, align 8
  %10 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %11 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.vmbus_channel*, %struct.vmbus_channel** %5, align 8
  %13 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %12, i32 0, i32 1
  store %struct.kobject* %13, %struct.kobject** %7, align 8
  %14 = load %struct.vmbus_channel*, %struct.vmbus_channel** %5, align 8
  %15 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.hv_device*, %struct.hv_device** %4, align 8
  %19 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.kobject*, %struct.kobject** %7, align 8
  %22 = getelementptr inbounds %struct.kobject, %struct.kobject* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.kobject*, %struct.kobject** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @kobject_init_and_add(%struct.kobject* %23, i32* @vmbus_chan_ktype, i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %3, align 4
  br label %43

30:                                               ; preds = %2
  %31 = load %struct.kobject*, %struct.kobject** %7, align 8
  %32 = call i32 @sysfs_create_group(%struct.kobject* %31, i32* @vmbus_chan_group)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.device*, %struct.device** %6, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %3, align 4
  br label %43

39:                                               ; preds = %30
  %40 = load %struct.kobject*, %struct.kobject** %7, align 8
  %41 = load i32, i32* @KOBJ_ADD, align 4
  %42 = call i32 @kobject_uevent(%struct.kobject* %40, i32 %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %35, %28
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @kobject_init_and_add(%struct.kobject*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @sysfs_create_group(%struct.kobject*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @kobject_uevent(%struct.kobject*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
