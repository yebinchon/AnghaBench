; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-custom.c_hid_sensor_custom_dev_if_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-custom.c_hid_sensor_custom_dev_if_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_sensor_custom = type { i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@HID_CUSTOM_FIFO_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MISC_DYNAMIC_MINOR = common dso_local global i32 0, align 4
@hid_sensor_custom_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_sensor_custom*)* @hid_sensor_custom_dev_if_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_sensor_custom_dev_if_add(%struct.hid_sensor_custom* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_sensor_custom*, align 8
  %4 = alloca i32, align 4
  store %struct.hid_sensor_custom* %0, %struct.hid_sensor_custom** %3, align 8
  %5 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %3, align 8
  %6 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %5, i32 0, i32 0
  %7 = load i32, i32* @HID_CUSTOM_FIFO_SIZE, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i32 @kfifo_alloc(i32* %6, i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %44

14:                                               ; preds = %1
  %15 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %3, align 8
  %16 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %15, i32 0, i32 3
  %17 = call i32 @init_waitqueue_head(i32* %16)
  %18 = load i32, i32* @MISC_DYNAMIC_MINOR, align 4
  %19 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %3, align 8
  %20 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i32 %18, i32* %21, align 4
  %22 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %3, align 8
  %23 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @dev_name(i32* %25)
  %27 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %3, align 8
  %28 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 %26, i32* %29, align 8
  %30 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %3, align 8
  %31 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32* @hid_sensor_custom_fops, i32** %32, align 8
  %33 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %3, align 8
  %34 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %33, i32 0, i32 1
  %35 = call i32 @misc_register(%struct.TYPE_4__* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %14
  %39 = load %struct.hid_sensor_custom*, %struct.hid_sensor_custom** %3, align 8
  %40 = getelementptr inbounds %struct.hid_sensor_custom, %struct.hid_sensor_custom* %39, i32 0, i32 0
  %41 = call i32 @kfifo_free(i32* %40)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %38, %12
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @kfifo_alloc(i32*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @misc_register(%struct.TYPE_4__*) #1

declare dso_local i32 @kfifo_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
