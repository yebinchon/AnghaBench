; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-led.c_hidled_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-led.c_hidled_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidled_device = type { i32, %struct.TYPE_2__*, i32*, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@RAW_REQUEST = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@HID_REQ_GET_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidled_device*, i32*)* @hidled_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidled_recv(%struct.hidled_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hidled_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.hidled_device* %0, %struct.hidled_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.hidled_device*, %struct.hidled_device** %4, align 8
  %8 = getelementptr inbounds %struct.hidled_device, %struct.hidled_device* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @RAW_REQUEST, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %90

17:                                               ; preds = %2
  %18 = load %struct.hidled_device*, %struct.hidled_device** %4, align 8
  %19 = getelementptr inbounds %struct.hidled_device, %struct.hidled_device* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.hidled_device*, %struct.hidled_device** %4, align 8
  %22 = getelementptr inbounds %struct.hidled_device, %struct.hidled_device* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load %struct.hidled_device*, %struct.hidled_device** %4, align 8
  %26 = getelementptr inbounds %struct.hidled_device, %struct.hidled_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @memcpy(i32* %23, i32* %24, i32 %29)
  %31 = load %struct.hidled_device*, %struct.hidled_device** %4, align 8
  %32 = getelementptr inbounds %struct.hidled_device, %struct.hidled_device* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.hidled_device*, %struct.hidled_device** %4, align 8
  %38 = getelementptr inbounds %struct.hidled_device, %struct.hidled_device* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.hidled_device*, %struct.hidled_device** %4, align 8
  %41 = getelementptr inbounds %struct.hidled_device, %struct.hidled_device* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %46 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %47 = call i32 @hid_hw_raw_request(i32 %33, i32 %36, i32* %39, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %17
  br label %79

51:                                               ; preds = %17
  %52 = load %struct.hidled_device*, %struct.hidled_device** %4, align 8
  %53 = getelementptr inbounds %struct.hidled_device, %struct.hidled_device* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.hidled_device*, %struct.hidled_device** %4, align 8
  %59 = getelementptr inbounds %struct.hidled_device, %struct.hidled_device* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.hidled_device*, %struct.hidled_device** %4, align 8
  %62 = getelementptr inbounds %struct.hidled_device, %struct.hidled_device* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %67 = load i32, i32* @HID_REQ_GET_REPORT, align 4
  %68 = call i32 @hid_hw_raw_request(i32 %54, i32 %57, i32* %60, i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = load %struct.hidled_device*, %struct.hidled_device** %4, align 8
  %71 = getelementptr inbounds %struct.hidled_device, %struct.hidled_device* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.hidled_device*, %struct.hidled_device** %4, align 8
  %74 = getelementptr inbounds %struct.hidled_device, %struct.hidled_device* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @memcpy(i32* %69, i32* %72, i32 %77)
  br label %79

79:                                               ; preds = %51, %50
  %80 = load %struct.hidled_device*, %struct.hidled_device** %4, align 8
  %81 = getelementptr inbounds %struct.hidled_device, %struct.hidled_device* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* %6, align 4
  br label %88

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %87, %85
  %89 = phi i32 [ %86, %85 ], [ 0, %87 ]
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %14
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @hid_hw_raw_request(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
