; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_overwrite_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_overwrite_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hidpp_device = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"unable to retrieve the name of the device\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"HID++: Got name: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*)* @hidpp_overwrite_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidpp_overwrite_name(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca %struct.hidpp_device*, align 8
  %4 = alloca i8*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %5 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %6 = call %struct.hidpp_device* @hid_get_drvdata(%struct.hid_device* %5)
  store %struct.hidpp_device* %6, %struct.hidpp_device** %3, align 8
  %7 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %8 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %31

12:                                               ; preds = %1
  %13 = load %struct.hidpp_device*, %struct.hidpp_device** %3, align 8
  %14 = call i8* @hidpp_get_device_name(%struct.hidpp_device* %13)
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %19 = call i32 @hid_err(%struct.hid_device* %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %28

20:                                               ; preds = %12
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @dbg_hid(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  %23 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %24 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @snprintf(i32 %25, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %20, %17
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @kfree(i8* %29)
  br label %31

31:                                               ; preds = %28, %11
  ret void
}

declare dso_local %struct.hidpp_device* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i8* @hidpp_get_device_name(%struct.hidpp_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @dbg_hid(i8*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
