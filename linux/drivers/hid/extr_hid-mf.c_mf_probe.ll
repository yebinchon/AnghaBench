; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-mf.c_mf_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-mf.c_mf_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i32 }
%struct.hid_device_id = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Mayflash HID hardware probe...\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"HID parse failed.\0A\00", align 1
@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@HID_CONNECT_FF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"HID hw start failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Force feedback init failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @mf_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mf_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %7 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %8 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %7, i32 0, i32 1
  %9 = call i32 @dev_dbg(i32* %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %11 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %14 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %18 = call i32 @hid_parse(%struct.hid_device* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %23 = call i32 @hid_err(%struct.hid_device* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %50

25:                                               ; preds = %2
  %26 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %27 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  %28 = load i32, i32* @HID_CONNECT_FF, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = call i32 @hid_hw_start(%struct.hid_device* %26, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %36 = call i32 @hid_err(%struct.hid_device* %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %50

38:                                               ; preds = %25
  %39 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %40 = call i32 @mf_init(%struct.hid_device* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %45 = call i32 @hid_err(%struct.hid_device* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %47 = call i32 @hid_hw_stop(%struct.hid_device* %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %43, %34, %21
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

declare dso_local i32 @mf_init(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_stop(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
