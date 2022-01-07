; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_hid_submit_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-core.c_hid_submit_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.usbhid_device* }
%struct.usbhid_device = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i8*, %struct.hid_report* }
%struct.hid_report = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"submitting out urb\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"usb_submit_urb(out) failed: %d\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @hid_submit_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_submit_out(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.hid_report*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.usbhid_device*, align 8
  %7 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %8 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %9 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %8, i32 0, i32 0
  %10 = load %struct.usbhid_device*, %struct.usbhid_device** %9, align 8
  store %struct.usbhid_device* %10, %struct.usbhid_device** %6, align 8
  %11 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %12 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %15 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load %struct.hid_report*, %struct.hid_report** %18, align 8
  store %struct.hid_report* %19, %struct.hid_report** %4, align 8
  %20 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %21 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %20, i32 0, i32 3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %24 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %5, align 8
  %29 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %30 = call i32 @hid_report_len(%struct.hid_report* %29)
  %31 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %32 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  %35 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %36 = call i32 @hid_to_usb_dev(%struct.hid_device* %35)
  %37 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %38 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 %36, i32* %40, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %64

43:                                               ; preds = %1
  %44 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %45 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %49 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @memcpy(i32 %46, i8* %47, i32 %52)
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @kfree(i8* %54)
  %56 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %57 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %56, i32 0, i32 3
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %60 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i8* null, i8** %63, align 8
  br label %64

64:                                               ; preds = %43, %1
  %65 = call i32 @dbg_hid(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %67 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* @GFP_ATOMIC, align 4
  %70 = call i32 @usb_submit_urb(%struct.TYPE_4__* %68, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %64
  %74 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @hid_err(%struct.hid_device* %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %2, align 4
  br label %82

78:                                               ; preds = %64
  %79 = load i32, i32* @jiffies, align 4
  %80 = load %struct.usbhid_device*, %struct.usbhid_device** %6, align 8
  %81 = getelementptr inbounds %struct.usbhid_device, %struct.usbhid_device* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %78, %73
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @hid_report_len(%struct.hid_report*) #1

declare dso_local i32 @hid_to_usb_dev(%struct.hid_device*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @dbg_hid(i8*) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
