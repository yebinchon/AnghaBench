; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/i2c-hid/extr_i2c-hid-core.c_i2c_hid_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/i2c-hid/extr_i2c-hid-core.c_i2c_hid_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.i2c_hid = type { i32 }

@HID_MIN_BUFFER_SIZE = common dso_local global i32 0, align 4
@HID_INPUT_REPORT = common dso_local global i32 0, align 4
@HID_OUTPUT_REPORT = common dso_local global i32 0, align 4
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @i2c_hid_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_hid_start(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_hid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %8 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %9 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %8, i32 0, i32 0
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = call %struct.i2c_hid* @i2c_get_clientdata(%struct.i2c_client* %11)
  store %struct.i2c_hid* %12, %struct.i2c_hid** %5, align 8
  %13 = load i32, i32* @HID_MIN_BUFFER_SIZE, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %15 = load i32, i32* @HID_INPUT_REPORT, align 4
  %16 = call i32 @i2c_hid_find_max_report(%struct.hid_device* %14, i32 %15, i32* %7)
  %17 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %18 = load i32, i32* @HID_OUTPUT_REPORT, align 4
  %19 = call i32 @i2c_hid_find_max_report(%struct.hid_device* %17, i32 %18, i32* %7)
  %20 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %21 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %22 = call i32 @i2c_hid_find_max_report(%struct.hid_device* %20, i32 %21, i32* %7)
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.i2c_hid*, %struct.i2c_hid** %5, align 8
  %25 = getelementptr inbounds %struct.i2c_hid, %struct.i2c_hid* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ugt i32 %23, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %1
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @disable_irq(i32 %31)
  %33 = load %struct.i2c_hid*, %struct.i2c_hid** %5, align 8
  %34 = call i32 @i2c_hid_free_buffers(%struct.i2c_hid* %33)
  %35 = load %struct.i2c_hid*, %struct.i2c_hid** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @i2c_hid_alloc_buffers(%struct.i2c_hid* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @enable_irq(i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %28
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %48

46:                                               ; preds = %28
  br label %47

47:                                               ; preds = %46, %1
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.i2c_hid* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @i2c_hid_find_max_report(%struct.hid_device*, i32, i32*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @i2c_hid_free_buffers(%struct.i2c_hid*) #1

declare dso_local i32 @i2c_hid_alloc_buffers(%struct.i2c_hid*, i32) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
