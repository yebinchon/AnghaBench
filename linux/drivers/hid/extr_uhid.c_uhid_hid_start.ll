; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_uhid.c_uhid_hid_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_uhid.c_uhid_hid_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.TYPE_4__*, %struct.uhid_device* }
%struct.TYPE_4__ = type { i64 }
%struct.uhid_device = type { i32 }
%struct.uhid_event = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UHID_START = common dso_local global i32 0, align 4
@HID_FEATURE_REPORT = common dso_local global i64 0, align 8
@UHID_DEV_NUMBERED_FEATURE_REPORTS = common dso_local global i32 0, align 4
@HID_OUTPUT_REPORT = common dso_local global i64 0, align 8
@UHID_DEV_NUMBERED_OUTPUT_REPORTS = common dso_local global i32 0, align 4
@HID_INPUT_REPORT = common dso_local global i64 0, align 8
@UHID_DEV_NUMBERED_INPUT_REPORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @uhid_hid_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uhid_hid_start(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.uhid_device*, align 8
  %5 = alloca %struct.uhid_event*, align 8
  %6 = alloca i64, align 8
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %7 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %8 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %7, i32 0, i32 1
  %9 = load %struct.uhid_device*, %struct.uhid_device** %8, align 8
  store %struct.uhid_device* %9, %struct.uhid_device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.uhid_event* @kzalloc(i32 8, i32 %10)
  store %struct.uhid_event* %11, %struct.uhid_event** %5, align 8
  %12 = load %struct.uhid_event*, %struct.uhid_event** %5, align 8
  %13 = icmp ne %struct.uhid_event* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %83

17:                                               ; preds = %1
  %18 = load i32, i32* @UHID_START, align 4
  %19 = load %struct.uhid_event*, %struct.uhid_event** %5, align 8
  %20 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %22 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i64, i64* @HID_FEATURE_REPORT, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %17
  %30 = load i32, i32* @UHID_DEV_NUMBERED_FEATURE_REPORTS, align 4
  %31 = load %struct.uhid_event*, %struct.uhid_event** %5, align 8
  %32 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %30
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %29, %17
  %38 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %39 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i64, i64* @HID_OUTPUT_REPORT, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = load i32, i32* @UHID_DEV_NUMBERED_OUTPUT_REPORTS, align 4
  %48 = load %struct.uhid_event*, %struct.uhid_event** %5, align 8
  %49 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %47
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %46, %37
  %55 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %56 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i64, i64* @HID_INPUT_REPORT, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %54
  %64 = load i32, i32* @UHID_DEV_NUMBERED_INPUT_REPORTS, align 4
  %65 = load %struct.uhid_event*, %struct.uhid_event** %5, align 8
  %66 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %64
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %63, %54
  %72 = load %struct.uhid_device*, %struct.uhid_device** %4, align 8
  %73 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %72, i32 0, i32 0
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @spin_lock_irqsave(i32* %73, i64 %74)
  %76 = load %struct.uhid_device*, %struct.uhid_device** %4, align 8
  %77 = load %struct.uhid_event*, %struct.uhid_event** %5, align 8
  %78 = call i32 @uhid_queue(%struct.uhid_device* %76, %struct.uhid_event* %77)
  %79 = load %struct.uhid_device*, %struct.uhid_device** %4, align 8
  %80 = getelementptr inbounds %struct.uhid_device, %struct.uhid_device* %79, i32 0, i32 0
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %71, %14
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.uhid_event* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @uhid_queue(%struct.uhid_device*, %struct.uhid_event*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
