; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elo.c_elo_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elo.c_elo_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hid_device_id = type { i32 }
%struct.elo_priv = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@elo_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1
@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"broken firmware found, installing workaround\0A\00", align 1
@wq = common dso_local global i32 0, align 4
@ELO_PERIODIC_READ_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @elo_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elo_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca %struct.elo_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.elo_priv* @kzalloc(i32 8, i32 %8)
  store %struct.elo_priv* %9, %struct.elo_priv** %6, align 8
  %10 = load %struct.elo_priv*, %struct.elo_priv** %6, align 8
  %11 = icmp ne %struct.elo_priv* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %66

15:                                               ; preds = %2
  %16 = load %struct.elo_priv*, %struct.elo_priv** %6, align 8
  %17 = getelementptr inbounds %struct.elo_priv, %struct.elo_priv* %16, i32 0, i32 0
  %18 = load i32, i32* @elo_work, align 4
  %19 = call i32 @INIT_DELAYED_WORK(i32* %17, i32 %18)
  %20 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %21 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @to_usb_interface(i32 %23)
  %25 = call i32 @interface_to_usbdev(i32 %24)
  %26 = load %struct.elo_priv*, %struct.elo_priv** %6, align 8
  %27 = getelementptr inbounds %struct.elo_priv, %struct.elo_priv* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %29 = load %struct.elo_priv*, %struct.elo_priv** %6, align 8
  %30 = call i32 @hid_set_drvdata(%struct.hid_device* %28, %struct.elo_priv* %29)
  %31 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %32 = call i32 @hid_parse(%struct.hid_device* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %15
  %36 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %37 = call i32 @hid_err(%struct.hid_device* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %62

38:                                               ; preds = %15
  %39 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %40 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  %41 = call i32 @hid_hw_start(%struct.hid_device* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %46 = call i32 @hid_err(%struct.hid_device* %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %62

47:                                               ; preds = %38
  %48 = load %struct.elo_priv*, %struct.elo_priv** %6, align 8
  %49 = getelementptr inbounds %struct.elo_priv, %struct.elo_priv* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @elo_broken_firmware(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %55 = call i32 @hid_info(%struct.hid_device* %54, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @wq, align 4
  %57 = load %struct.elo_priv*, %struct.elo_priv** %6, align 8
  %58 = getelementptr inbounds %struct.elo_priv, %struct.elo_priv* %57, i32 0, i32 0
  %59 = load i32, i32* @ELO_PERIODIC_READ_INTERVAL, align 4
  %60 = call i32 @queue_delayed_work(i32 %56, i32* %58, i32 %59)
  br label %61

61:                                               ; preds = %53, %47
  store i32 0, i32* %3, align 4
  br label %66

62:                                               ; preds = %44, %35
  %63 = load %struct.elo_priv*, %struct.elo_priv** %6, align 8
  %64 = call i32 @kfree(%struct.elo_priv* %63)
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %61, %12
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.elo_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @interface_to_usbdev(i32) #1

declare dso_local i32 @to_usb_interface(i32) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.elo_priv*) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

declare dso_local i64 @elo_broken_firmware(i32) #1

declare dso_local i32 @hid_info(%struct.hid_device*, i8*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.elo_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
