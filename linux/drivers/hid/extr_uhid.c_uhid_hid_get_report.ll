; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_uhid.c_uhid_hid_get_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_uhid.c_uhid_hid_get_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.uhid_device* }
%struct.uhid_device = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.uhid_get_report_reply_req }
%struct.uhid_get_report_reply_req = type { i32, i64, i64 }
%struct.uhid_event = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UHID_GET_REPORT = common dso_local global i32 0, align 4
@UHID_DATA_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, i8, i32*, i64, i32)* @uhid_hid_get_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhid_hid_get_report(%struct.hid_device* %0, i8 zeroext %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hid_device*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.uhid_device*, align 8
  %13 = alloca %struct.uhid_get_report_reply_req*, align 8
  %14 = alloca %struct.uhid_event*, align 8
  %15 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %7, align 8
  store i8 %1, i8* %8, align 1
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %17 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %16, i32 0, i32 0
  %18 = load %struct.uhid_device*, %struct.uhid_device** %17, align 8
  store %struct.uhid_device* %18, %struct.uhid_device** %12, align 8
  %19 = load %struct.uhid_device*, %struct.uhid_device** %12, align 8
  %20 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %99

26:                                               ; preds = %5
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.uhid_event* @kzalloc(i32 16, i32 %27)
  store %struct.uhid_event* %28, %struct.uhid_event** %14, align 8
  %29 = load %struct.uhid_event*, %struct.uhid_event** %14, align 8
  %30 = icmp ne %struct.uhid_event* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %99

34:                                               ; preds = %26
  %35 = load i32, i32* @UHID_GET_REPORT, align 4
  %36 = load %struct.uhid_event*, %struct.uhid_event** %14, align 8
  %37 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i8, i8* %8, align 1
  %39 = load %struct.uhid_event*, %struct.uhid_event** %14, align 8
  %40 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i8 %38, i8* %42, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.uhid_event*, %struct.uhid_event** %14, align 8
  %45 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  store i32 %43, i32* %47, align 4
  %48 = load %struct.uhid_device*, %struct.uhid_device** %12, align 8
  %49 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %48, i32 0, i32 0
  %50 = call i32 @mutex_lock_interruptible(i32* %49)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %34
  %54 = load %struct.uhid_event*, %struct.uhid_event** %14, align 8
  %55 = call i32 @kfree(%struct.uhid_event* %54)
  %56 = load i32, i32* %15, align 4
  store i32 %56, i32* %6, align 4
  br label %99

57:                                               ; preds = %34
  %58 = load %struct.uhid_device*, %struct.uhid_device** %12, align 8
  %59 = load %struct.uhid_event*, %struct.uhid_event** %14, align 8
  %60 = load %struct.uhid_event*, %struct.uhid_event** %14, align 8
  %61 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = call i32 @__uhid_report_queue_and_wait(%struct.uhid_device* %58, %struct.uhid_event* %59, i32* %63)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %94

68:                                               ; preds = %57
  %69 = load %struct.uhid_device*, %struct.uhid_device** %12, align 8
  %70 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  store %struct.uhid_get_report_reply_req* %72, %struct.uhid_get_report_reply_req** %13, align 8
  %73 = load %struct.uhid_get_report_reply_req*, %struct.uhid_get_report_reply_req** %13, align 8
  %74 = getelementptr inbounds %struct.uhid_get_report_reply_req, %struct.uhid_get_report_reply_req* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %68
  %78 = load i32, i32* @EIO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %15, align 4
  br label %93

80:                                               ; preds = %68
  %81 = load i64, i64* %10, align 8
  %82 = load %struct.uhid_get_report_reply_req*, %struct.uhid_get_report_reply_req** %13, align 8
  %83 = getelementptr inbounds %struct.uhid_get_report_reply_req, %struct.uhid_get_report_reply_req* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @UHID_DATA_MAX, align 8
  %86 = call i32 @min3(i64 %81, i64 %84, i64 %85)
  store i32 %86, i32* %15, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = load %struct.uhid_get_report_reply_req*, %struct.uhid_get_report_reply_req** %13, align 8
  %89 = getelementptr inbounds %struct.uhid_get_report_reply_req, %struct.uhid_get_report_reply_req* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @memcpy(i32* %87, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %80, %77
  br label %94

94:                                               ; preds = %93, %67
  %95 = load %struct.uhid_device*, %struct.uhid_device** %12, align 8
  %96 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %95, i32 0, i32 0
  %97 = call i32 @mutex_unlock(i32* %96)
  %98 = load i32, i32* %15, align 4
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %94, %53, %31, %23
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local %struct.uhid_event* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @kfree(%struct.uhid_event*) #1

declare dso_local i32 @__uhid_report_queue_and_wait(%struct.uhid_device*, %struct.uhid_event*, i32*) #1

declare dso_local i32 @min3(i64, i64, i64) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
