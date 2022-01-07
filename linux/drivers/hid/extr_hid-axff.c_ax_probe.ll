; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-axff.c_ax_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-axff.c_ax_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_device_id = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"ACRUX HID hardware probe...\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1
@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@HID_CONNECT_FF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"Failed to enable force feedback support, error: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"hw open failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @ax_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %7 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %8 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %7, i32 0, i32 0
  %9 = call i32 @dev_dbg(i32* %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %11 = call i32 @hid_parse(%struct.hid_device* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %16 = call i32 @hid_err(%struct.hid_device* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %53

18:                                               ; preds = %2
  %19 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %20 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  %21 = load i32, i32* @HID_CONNECT_FF, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = call i32 @hid_hw_start(%struct.hid_device* %19, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %29 = call i32 @hid_err(%struct.hid_device* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %53

31:                                               ; preds = %18
  %32 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %33 = call i32 @axff_init(%struct.hid_device* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @hid_warn(%struct.hid_device* %37, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %36, %31
  %41 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %42 = call i32 @hid_hw_open(%struct.hid_device* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %47 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %46, i32 0, i32 0
  %48 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %49 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %50 = call i32 @hid_hw_stop(%struct.hid_device* %49)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %45, %27, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

declare dso_local i32 @axff_init(%struct.hid_device*) #1

declare dso_local i32 @hid_warn(%struct.hid_device*, i8*, i32) #1

declare dso_local i32 @hid_hw_open(%struct.hid_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @hid_hw_stop(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
