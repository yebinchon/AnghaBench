; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-led.c_hidled_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-led.c_hidled_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidled_device = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@RAW_REQUEST = common dso_local global i64 0, align 8
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@OUTPUT_REPORT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidled_device*, i32*)* @hidled_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidled_send(%struct.hidled_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hidled_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.hidled_device* %0, %struct.hidled_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.hidled_device*, %struct.hidled_device** %4, align 8
  %8 = getelementptr inbounds %struct.hidled_device, %struct.hidled_device* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.hidled_device*, %struct.hidled_device** %4, align 8
  %11 = getelementptr inbounds %struct.hidled_device, %struct.hidled_device* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.hidled_device*, %struct.hidled_device** %4, align 8
  %15 = getelementptr inbounds %struct.hidled_device, %struct.hidled_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @memcpy(i32 %12, i32* %13, i32 %18)
  %20 = load %struct.hidled_device*, %struct.hidled_device** %4, align 8
  %21 = getelementptr inbounds %struct.hidled_device, %struct.hidled_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RAW_REQUEST, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %2
  %28 = load %struct.hidled_device*, %struct.hidled_device** %4, align 8
  %29 = getelementptr inbounds %struct.hidled_device, %struct.hidled_device* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.hidled_device*, %struct.hidled_device** %4, align 8
  %35 = getelementptr inbounds %struct.hidled_device, %struct.hidled_device* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.hidled_device*, %struct.hidled_device** %4, align 8
  %38 = getelementptr inbounds %struct.hidled_device, %struct.hidled_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %43 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %44 = call i32 @hid_hw_raw_request(i32 %30, i32 %33, i32 %36, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %6, align 4
  br label %70

45:                                               ; preds = %2
  %46 = load %struct.hidled_device*, %struct.hidled_device** %4, align 8
  %47 = getelementptr inbounds %struct.hidled_device, %struct.hidled_device* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @OUTPUT_REPORT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %45
  %54 = load %struct.hidled_device*, %struct.hidled_device** %4, align 8
  %55 = getelementptr inbounds %struct.hidled_device, %struct.hidled_device* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.hidled_device*, %struct.hidled_device** %4, align 8
  %58 = getelementptr inbounds %struct.hidled_device, %struct.hidled_device* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.hidled_device*, %struct.hidled_device** %4, align 8
  %61 = getelementptr inbounds %struct.hidled_device, %struct.hidled_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @hid_hw_output_report(i32 %56, i32 %59, i32 %64)
  store i32 %65, i32* %6, align 4
  br label %69

66:                                               ; preds = %45
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %66, %53
  br label %70

70:                                               ; preds = %69, %27
  %71 = load %struct.hidled_device*, %struct.hidled_device** %4, align 8
  %72 = getelementptr inbounds %struct.hidled_device, %struct.hidled_device* %71, i32 0, i32 1
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %92

78:                                               ; preds = %70
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.hidled_device*, %struct.hidled_device** %4, align 8
  %81 = getelementptr inbounds %struct.hidled_device, %struct.hidled_device* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %79, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %90

87:                                               ; preds = %78
  %88 = load i32, i32* @EMSGSIZE, align 4
  %89 = sub nsw i32 0, %88
  br label %90

90:                                               ; preds = %87, %86
  %91 = phi i32 [ 0, %86 ], [ %89, %87 ]
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %76
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @hid_hw_raw_request(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @hid_hw_output_report(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
