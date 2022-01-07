; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c___hid_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c___hid_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hid_device*, i32, i8*, i32, i32, i32)* }
%struct.hid_report = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unable to complete request: %d\0A\00", align 1
@HID_REQ_GET_REPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__hid_request(%struct.hid_device* %0, %struct.hid_report* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca %struct.hid_report*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store %struct.hid_report* %1, %struct.hid_report** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @hid_alloc_report_buf(%struct.hid_report* %11, i32 %12)
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %68

19:                                               ; preds = %3
  %20 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %21 = call i32 @hid_report_len(%struct.hid_report* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @hid_output_report(%struct.hid_report* %26, i8* %27)
  br label %29

29:                                               ; preds = %25, %19
  %30 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %31 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.hid_device*, i32, i8*, i32, i32, i32)*, i32 (%struct.hid_device*, i32, i8*, i32, i32, i32)** %33, align 8
  %35 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %36 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %37 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %42 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 %34(%struct.hid_device* %35, i32 %38, i8* %39, i32 %40, i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %29
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @dbg_hid(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %64

51:                                               ; preds = %29
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @HID_REQ_GET_REPORT, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %57 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %58 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @hid_input_report(%struct.hid_device* %56, i32 %59, i8* %60, i32 %61, i32 0)
  br label %63

63:                                               ; preds = %55, %51
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %63, %48
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @kfree(i8* %65)
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %64, %16
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i8* @hid_alloc_report_buf(%struct.hid_report*, i32) #1

declare dso_local i32 @hid_report_len(%struct.hid_report*) #1

declare dso_local i32 @hid_output_report(%struct.hid_report*, i8*) #1

declare dso_local i32 @dbg_hid(i8*, i32) #1

declare dso_local i32 @hid_input_report(%struct.hid_device*, i32, i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
