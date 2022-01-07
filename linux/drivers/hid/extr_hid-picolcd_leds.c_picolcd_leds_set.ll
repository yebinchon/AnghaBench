; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_leds.c_picolcd_leds_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_leds.c_picolcd_leds_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.picolcd_data = type { i32, i32, i32, i32, i32* }
%struct.hid_report = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@REPORT_LED_STATE = common dso_local global i32 0, align 4
@PICOLCD_FAILED = common dso_local global i32 0, align 4
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @picolcd_leds_set(%struct.picolcd_data* %0) #0 {
  %2 = alloca %struct.picolcd_data*, align 8
  %3 = alloca %struct.hid_report*, align 8
  %4 = alloca i64, align 8
  store %struct.picolcd_data* %0, %struct.picolcd_data** %2, align 8
  %5 = load %struct.picolcd_data*, %struct.picolcd_data** %2, align 8
  %6 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %5, i32 0, i32 4
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %67

12:                                               ; preds = %1
  %13 = load i32, i32* @REPORT_LED_STATE, align 4
  %14 = load %struct.picolcd_data*, %struct.picolcd_data** %2, align 8
  %15 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.hid_report* @picolcd_out_report(i32 %13, i32 %16)
  store %struct.hid_report* %17, %struct.hid_report** %3, align 8
  %18 = load %struct.hid_report*, %struct.hid_report** %3, align 8
  %19 = icmp ne %struct.hid_report* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %12
  %21 = load %struct.hid_report*, %struct.hid_report** %3, align 8
  %22 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %34, label %25

25:                                               ; preds = %20
  %26 = load %struct.hid_report*, %struct.hid_report** %3, align 8
  %27 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %28, i64 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %25, %20, %12
  br label %67

35:                                               ; preds = %25
  %36 = load %struct.picolcd_data*, %struct.picolcd_data** %2, align 8
  %37 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %36, i32 0, i32 1
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.hid_report*, %struct.hid_report** %3, align 8
  %41 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %42, i64 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load %struct.picolcd_data*, %struct.picolcd_data** %2, align 8
  %46 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @hid_set_field(%struct.TYPE_2__* %44, i32 0, i32 %47)
  %49 = load %struct.picolcd_data*, %struct.picolcd_data** %2, align 8
  %50 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @PICOLCD_FAILED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %35
  %56 = load %struct.picolcd_data*, %struct.picolcd_data** %2, align 8
  %57 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.hid_report*, %struct.hid_report** %3, align 8
  %60 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %61 = call i32 @hid_hw_request(i32 %58, %struct.hid_report* %59, i32 %60)
  br label %62

62:                                               ; preds = %55, %35
  %63 = load %struct.picolcd_data*, %struct.picolcd_data** %2, align 8
  %64 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %63, i32 0, i32 1
  %65 = load i64, i64* %4, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  br label %67

67:                                               ; preds = %62, %34, %11
  ret void
}

declare dso_local %struct.hid_report* @picolcd_out_report(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hid_set_field(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @hid_hw_request(i32, %struct.hid_report*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
