; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sjoy.c_sjoy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sjoy.c_sjoy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_device_id = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1
@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@HID_CONNECT_FF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @sjoy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sjoy_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %7 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %8 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %11 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %15 = call i32 @hid_parse(%struct.hid_device* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %20 = call i32 @hid_err(%struct.hid_device* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %36

21:                                               ; preds = %2
  %22 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %23 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  %24 = load i32, i32* @HID_CONNECT_FF, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = call i32 @hid_hw_start(%struct.hid_device* %22, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %32 = call i32 @hid_err(%struct.hid_device* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %36

33:                                               ; preds = %21
  %34 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %35 = call i32 @sjoyff_init(%struct.hid_device* %34)
  store i32 0, i32* %3, align 4
  br label %38

36:                                               ; preds = %30, %18
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %33
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

declare dso_local i32 @sjoyff_init(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
