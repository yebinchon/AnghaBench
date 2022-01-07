; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-asus.c_asus_start_multitouch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-asus.c_asus_start_multitouch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }

@asus_start_multitouch.buf = internal constant [5 x i8] c"\80\00\03\01\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Asus failed to alloc dma buf: %d\0A\00", align 1
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Asus failed to start multitouch: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @asus_start_multitouch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_start_multitouch(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i8* @kmemdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @asus_start_multitouch.buf, i64 0, i64 0), i32 5, i32 %6)
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @hid_err(%struct.hid_device* %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %37

17:                                               ; preds = %1
  %18 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %24 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %25 = call i32 @hid_hw_raw_request(%struct.hid_device* %18, i8 zeroext %21, i8* %22, i32 5, i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @kfree(i8* %26)
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ne i64 %29, 5
  br i1 %30, label %31, label %36

31:                                               ; preds = %17
  %32 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @hid_err(%struct.hid_device* %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %31, %10
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i8* @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, i32) #1

declare dso_local i32 @hid_hw_raw_request(%struct.hid_device*, i8 zeroext, i8*, i32, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
