; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lenovo.c_lenovo_send_cmd_cptkbd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-lenovo.c_lenovo_send_cmd_cptkbd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, i8, i8)* @lenovo_send_cmd_cptkbd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lenovo_send_cmd_cptkbd(%struct.hid_device* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @kzalloc(i32 3, i32 %10)
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %52

17:                                               ; preds = %3
  %18 = load i8*, i8** %9, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 24, i8* %19, align 1
  %20 = load i8, i8* %6, align 1
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8 %20, i8* %22, align 1
  %23 = load i8, i8* %7, align 1
  %24 = load i8*, i8** %9, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 2
  store i8 %23, i8* %25, align 1
  %26 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %27 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %39 [
    i32 128, label %29
    i32 129, label %35
  ]

29:                                               ; preds = %17
  %30 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %33 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %34 = call i32 @hid_hw_raw_request(%struct.hid_device* %30, i32 19, i8* %31, i32 3, i32 %32, i32 %33)
  store i32 %34, i32* %8, align 4
  br label %42

35:                                               ; preds = %17
  %36 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @hid_hw_output_report(%struct.hid_device* %36, i8* %37, i32 3)
  store i32 %38, i32* %8, align 4
  br label %42

39:                                               ; preds = %17
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %39, %35, %29
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @kfree(i8* %43)
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %8, align 4
  br label %50

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %14
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @hid_hw_raw_request(%struct.hid_device*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @hid_hw_output_report(%struct.hid_device*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
