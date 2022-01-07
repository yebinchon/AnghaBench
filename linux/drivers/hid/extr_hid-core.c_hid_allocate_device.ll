; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_allocate_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_allocate_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@hid_device_release = common dso_local global i32 0, align 4
@hid_bus_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hid_device* @hid_allocate_device() #0 {
  %1 = alloca %struct.hid_device*, align 8
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @ENOMEM, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.hid_device* @kzalloc(i32 40, i32 %6)
  store %struct.hid_device* %7, %struct.hid_device** %2, align 8
  %8 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %9 = icmp eq %struct.hid_device* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.hid_device* @ERR_PTR(i32 %11)
  store %struct.hid_device* %12, %struct.hid_device** %1, align 8
  br label %45

13:                                               ; preds = %0
  %14 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %15 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %14, i32 0, i32 5
  %16 = call i32 @device_initialize(%struct.TYPE_3__* %15)
  %17 = load i32, i32* @hid_device_release, align 4
  %18 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %19 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 8
  %21 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %22 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32* @hid_bus_type, i32** %23, align 8
  %24 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %25 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %24, i32 0, i32 5
  %26 = call i32 @device_enable_async_suspend(%struct.TYPE_3__* %25)
  %27 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %28 = call i32 @hid_close_report(%struct.hid_device* %27)
  %29 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %30 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %29, i32 0, i32 4
  %31 = call i32 @init_waitqueue_head(i32* %30)
  %32 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %33 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %32, i32 0, i32 3
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %36 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %35, i32 0, i32 2
  %37 = call i32 @spin_lock_init(i32* %36)
  %38 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %39 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %38, i32 0, i32 1
  %40 = call i32 @sema_init(i32* %39, i32 1)
  %41 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %42 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %41, i32 0, i32 0
  %43 = call i32 @mutex_init(i32* %42)
  %44 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  store %struct.hid_device* %44, %struct.hid_device** %1, align 8
  br label %45

45:                                               ; preds = %13, %10
  %46 = load %struct.hid_device*, %struct.hid_device** %1, align 8
  ret %struct.hid_device* %46
}

declare dso_local %struct.hid_device* @kzalloc(i32, i32) #1

declare dso_local %struct.hid_device* @ERR_PTR(i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_3__*) #1

declare dso_local i32 @device_enable_async_suspend(%struct.TYPE_3__*) #1

declare dso_local i32 @hid_close_report(%struct.hid_device*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
