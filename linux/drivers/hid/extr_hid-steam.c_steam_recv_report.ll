; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-steam.c_steam_recv_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-steam.c_steam_recv_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.steam_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.hid_report** }
%struct.hid_report = type { i32 }

@HID_FEATURE_REPORT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HID_REQ_GET_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.steam_device*, i32*, i32)* @steam_recv_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @steam_recv_report(%struct.steam_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.steam_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_report*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.steam_device* %0, %struct.steam_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.steam_device*, %struct.steam_device** %5, align 8
  %12 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i64, i64* @HID_FEATURE_REPORT, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.hid_report**, %struct.hid_report*** %18, align 8
  %20 = getelementptr inbounds %struct.hid_report*, %struct.hid_report** %19, i64 0
  %21 = load %struct.hid_report*, %struct.hid_report** %20, align 8
  store %struct.hid_report* %21, %struct.hid_report** %8, align 8
  %22 = load %struct.hid_report*, %struct.hid_report** %8, align 8
  %23 = call i32 @hid_report_len(%struct.hid_report* %22)
  %24 = icmp slt i32 %23, 64
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %63

28:                                               ; preds = %3
  %29 = load %struct.hid_report*, %struct.hid_report** %8, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32* @hid_alloc_report_buf(%struct.hid_report* %29, i32 %30)
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %63

37:                                               ; preds = %28
  %38 = load %struct.steam_device*, %struct.steam_device** %5, align 8
  %39 = getelementptr inbounds %struct.steam_device, %struct.steam_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load %struct.hid_report*, %struct.hid_report** %8, align 8
  %43 = call i32 @hid_report_len(%struct.hid_report* %42)
  %44 = add nsw i32 %43, 1
  %45 = load i64, i64* @HID_FEATURE_REPORT, align 8
  %46 = load i32, i32* @HID_REQ_GET_REPORT, align 4
  %47 = call i32 @hid_hw_raw_request(%struct.TYPE_4__* %40, i32 0, i32* %41, i32 %44, i64 %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %37
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %10, align 4
  %56 = sub nsw i32 %55, 1
  %57 = call i32 @min(i32 %54, i32 %56)
  %58 = call i32 @memcpy(i32* %51, i32* %53, i32 %57)
  br label %59

59:                                               ; preds = %50, %37
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @kfree(i32* %60)
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %34, %25
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @hid_report_len(%struct.hid_report*) #1

declare dso_local i32* @hid_alloc_report_buf(%struct.hid_report*, i32) #1

declare dso_local i32 @hid_hw_raw_request(%struct.TYPE_4__*, i32, i32*, i32, i64, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
