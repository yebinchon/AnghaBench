; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_core.c_picolcd_raw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_core.c_picolcd_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_report = type { i64 }
%struct.picolcd_data = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32, %struct.hid_report*, i32 }

@.str = private unnamed_addr constant [52 x i8] c"invalid size value (%d) for picolcd raw event (%d)\0A\00", align 1
@REPORT_KEY_STATE = common dso_local global i64 0, align 8
@REPORT_IR_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_report*, i32*, i32)* @picolcd_raw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @picolcd_raw_event(%struct.hid_device* %0, %struct.hid_report* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_report*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.picolcd_data*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_report* %1, %struct.hid_report** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %14 = call %struct.picolcd_data* @hid_get_drvdata(%struct.hid_device* %13)
  store %struct.picolcd_data* %14, %struct.picolcd_data** %10, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %16 = icmp ne %struct.picolcd_data* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %111

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp sgt i32 %19, 64
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %25 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @hid_warn(%struct.hid_device* %22, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %23, i64 %26)
  store i32 0, i32* %5, align 4
  br label %111

28:                                               ; preds = %18
  %29 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %30 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @REPORT_KEY_STATE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %36 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %41 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %9, align 4
  %45 = sub nsw i32 %44, 1
  %46 = call i32 @picolcd_raw_keypad(%struct.picolcd_data* %40, %struct.hid_report* %41, i32* %43, i32 %45)
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %39, %34
  br label %104

48:                                               ; preds = %28
  %49 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %50 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @REPORT_IR_DATA, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %56 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %9, align 4
  %60 = sub nsw i32 %59, 1
  %61 = call i32 @picolcd_raw_cir(%struct.picolcd_data* %55, %struct.hid_report* %56, i32* %58, i32 %60)
  store i32 %61, i32* %12, align 4
  br label %103

62:                                               ; preds = %48
  %63 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %64 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %63, i32 0, i32 0
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @spin_lock_irqsave(i32* %64, i64 %65)
  %67 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %68 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = icmp ne %struct.TYPE_2__* %69, null
  br i1 %70, label %71, label %98

71:                                               ; preds = %62
  %72 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %73 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  %79 = load i32, i32* %9, align 4
  %80 = sub nsw i32 %79, 1
  %81 = call i32 @memcpy(i32 %76, i32* %78, i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 %82, 1
  %84 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %85 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i32 %83, i32* %87, align 8
  %88 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %89 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %90 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  store %struct.hid_report* %88, %struct.hid_report** %92, align 8
  %93 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %94 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = call i32 @complete(i32* %96)
  br label %98

98:                                               ; preds = %71, %62
  %99 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %100 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %99, i32 0, i32 0
  %101 = load i64, i64* %11, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  br label %103

103:                                              ; preds = %98, %54
  br label %104

104:                                              ; preds = %103, %47
  %105 = load %struct.picolcd_data*, %struct.picolcd_data** %10, align 8
  %106 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %107 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @picolcd_debug_raw_event(%struct.picolcd_data* %105, %struct.hid_device* %106, %struct.hid_report* %107, i32* %108, i32 %109)
  store i32 1, i32* %5, align 4
  br label %111

111:                                              ; preds = %104, %21, %17
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local %struct.picolcd_data* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_warn(%struct.hid_device*, i8*, i32, i64) #1

declare dso_local i32 @picolcd_raw_keypad(%struct.picolcd_data*, %struct.hid_report*, i32*, i32) #1

declare dso_local i32 @picolcd_raw_cir(%struct.picolcd_data*, %struct.hid_report*, i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @picolcd_debug_raw_event(%struct.picolcd_data*, %struct.hid_device*, %struct.hid_report*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
