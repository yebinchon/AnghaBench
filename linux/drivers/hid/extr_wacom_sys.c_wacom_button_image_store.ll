; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_button_image_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_button_image_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hid_device = type { i64 }
%struct.wacom = type { i32 }

@BUS_BLUETOOTH = common dso_local global i64 0, align 8
@WAC_CMD_ICON_BT_XFER = common dso_local global i32 0, align 4
@WAC_CMD_ICON_XFER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i8*, i64)* @wacom_button_image_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_button_image_store(%struct.device* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hid_device*, align 8
  %11 = alloca %struct.wacom*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.hid_device* @to_hid_device(%struct.device* %15)
  store %struct.hid_device* %16, %struct.hid_device** %10, align 8
  %17 = load %struct.hid_device*, %struct.hid_device** %10, align 8
  %18 = call %struct.wacom* @hid_get_drvdata(%struct.hid_device* %17)
  store %struct.wacom* %18, %struct.wacom** %11, align 8
  %19 = load %struct.hid_device*, %struct.hid_device** %10, align 8
  %20 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BUS_BLUETOOTH, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  store i32 256, i32* %13, align 4
  %25 = load i32, i32* @WAC_CMD_ICON_BT_XFER, align 4
  store i32 %25, i32* %14, align 4
  br label %28

26:                                               ; preds = %4
  store i32 1024, i32* %13, align 4
  %27 = load i32, i32* @WAC_CMD_ICON_XFER, align 4
  store i32 %27, i32* %14, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* %13, align 4
  %31 = zext i32 %30 to i64
  %32 = icmp ne i64 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %59

36:                                               ; preds = %28
  %37 = load %struct.wacom*, %struct.wacom** %11, align 8
  %38 = getelementptr inbounds %struct.wacom, %struct.wacom* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.wacom*, %struct.wacom** %11, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @wacom_led_putimage(%struct.wacom* %40, i32 %41, i32 %42, i32 %43, i8* %44)
  store i32 %45, i32* %12, align 4
  %46 = load %struct.wacom*, %struct.wacom** %11, align 8
  %47 = getelementptr inbounds %struct.wacom, %struct.wacom* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %36
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  br label %56

54:                                               ; preds = %36
  %55 = load i64, i64* %9, align 8
  br label %56

56:                                               ; preds = %54, %51
  %57 = phi i64 [ %53, %51 ], [ %55, %54 ]
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %56, %33
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.hid_device* @to_hid_device(%struct.device*) #1

declare dso_local %struct.wacom* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wacom_led_putimage(%struct.wacom*, i32, i32, i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
