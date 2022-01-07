; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-plantronics.c_plantronics_device_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-plantronics.c_plantronics_device_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PLT_BT300_MIN = common dso_local global i64 0, align 8
@PLT_BT300_MAX = common dso_local global i64 0, align 8
@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@PLT_HID_2_0_PAGE = common dso_local global i32 0, align 4
@PLT_HID_1_0_PAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"plt_type decoded as: %08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hid_device*)* @plantronics_device_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @plantronics_device_type(%struct.hid_device* %0) #0 {
  %2 = alloca %struct.hid_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.hid_device* %0, %struct.hid_device** %2, align 8
  %6 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %7 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @PLT_BT300_MIN, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @PLT_BT300_MAX, align 8
  %15 = icmp ule i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %67

17:                                               ; preds = %12, %1
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %63, %17
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %21 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %66

24:                                               ; preds = %18
  %25 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %26 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @HID_USAGE_PAGE, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @PLT_HID_2_0_PAGE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %24
  %39 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %40 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = zext i32 %46 to i64
  store i64 %47, i64* %5, align 8
  br label %66

48:                                               ; preds = %24
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @PLT_HID_1_0_PAGE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %54 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = zext i32 %60 to i64
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %52, %48
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %3, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %3, align 4
  br label %18

66:                                               ; preds = %38, %18
  br label %67

67:                                               ; preds = %66, %16
  %68 = load %struct.hid_device*, %struct.hid_device** %2, align 8
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @hid_dbg(%struct.hid_device* %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %69)
  %71 = load i64, i64* %5, align 8
  ret i64 %71
}

declare dso_local i32 @hid_dbg(%struct.hid_device*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
