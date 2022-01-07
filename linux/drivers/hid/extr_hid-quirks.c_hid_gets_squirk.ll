; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-quirks.c_hid_gets_squirk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-quirks.c_hid_gets_squirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i32 }
%struct.hid_device_id = type { i64 }

@hid_ignore_list = common dso_local global i32 0, align 4
@HID_QUIRK_IGNORE = common dso_local global i64 0, align 8
@hid_have_special_driver = common dso_local global i32 0, align 4
@HID_QUIRK_HAVE_SPECIAL_DRIVER = common dso_local global i64 0, align 8
@hid_quirks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Found squirk 0x%lx for HID device 0x%04x:0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hid_device*)* @hid_gets_squirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hid_gets_squirk(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca %struct.hid_device_id*, align 8
  %4 = alloca i64, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %6 = load i32, i32* @hid_ignore_list, align 4
  %7 = call %struct.hid_device_id* @hid_match_id(%struct.hid_device* %5, i32 %6)
  %8 = icmp ne %struct.hid_device_id* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i64, i64* @HID_QUIRK_IGNORE, align 8
  %11 = load i64, i64* %4, align 8
  %12 = or i64 %11, %10
  store i64 %12, i64* %4, align 8
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %15 = load i32, i32* @hid_have_special_driver, align 4
  %16 = call %struct.hid_device_id* @hid_match_id(%struct.hid_device* %14, i32 %15)
  %17 = icmp ne %struct.hid_device_id* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i64, i64* @HID_QUIRK_HAVE_SPECIAL_DRIVER, align 8
  %20 = load i64, i64* %4, align 8
  %21 = or i64 %20, %19
  store i64 %21, i64* %4, align 8
  br label %22

22:                                               ; preds = %18, %13
  %23 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %24 = load i32, i32* @hid_quirks, align 4
  %25 = call %struct.hid_device_id* @hid_match_id(%struct.hid_device* %23, i32 %24)
  store %struct.hid_device_id* %25, %struct.hid_device_id** %3, align 8
  %26 = load %struct.hid_device_id*, %struct.hid_device_id** %3, align 8
  %27 = icmp ne %struct.hid_device_id* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.hid_device_id*, %struct.hid_device_id** %3, align 8
  %30 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %4, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %4, align 8
  br label %34

34:                                               ; preds = %28, %22
  %35 = load i64, i64* %4, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i64, i64* %4, align 8
  %39 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %40 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %43 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dbg_hid(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %38, i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %37, %34
  %47 = load i64, i64* %4, align 8
  ret i64 %47
}

declare dso_local %struct.hid_device_id* @hid_match_id(%struct.hid_device*, i32) #1

declare dso_local i32 @dbg_hid(i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
