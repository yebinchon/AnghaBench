; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_report_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_report_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_report = type { i32, %struct.hid_field** }
%struct.hid_field = type { i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HID_MAIN_ITEM_VARIABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.hid_report*, i32, i32)* @wacom_report_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_report_events(%struct.hid_device* %0, %struct.hid_report* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca %struct.hid_report*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hid_field*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store %struct.hid_report* %1, %struct.hid_report** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  store i32 %13, i32* %9, align 4
  br label %14

14:                                               ; preds = %77, %4
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %17 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %80

20:                                               ; preds = %14
  %21 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %22 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %21, i32 0, i32 1
  %23 = load %struct.hid_field**, %struct.hid_field*** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.hid_field*, %struct.hid_field** %23, i64 %25
  %27 = load %struct.hid_field*, %struct.hid_field** %26, align 8
  store %struct.hid_field* %27, %struct.hid_field** %10, align 8
  %28 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %29 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* @HID_MAIN_ITEM_VARIABLE, align 4
  %32 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %33 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %20
  br label %77

38:                                               ; preds = %20
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %73, %38
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %76

43:                                               ; preds = %39
  %44 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %45 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %43
  %55 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %56 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %57 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %58 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %57, i32 0, i32 3
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %64 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @wacom_wac_event(%struct.hid_device* %55, %struct.hid_field* %56, %struct.TYPE_2__* %62, i32 %69)
  br label %72

71:                                               ; preds = %43
  br label %80

72:                                               ; preds = %54
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %12, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %12, align 4
  br label %39

76:                                               ; preds = %39
  br label %77

77:                                               ; preds = %76, %37
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %14

80:                                               ; preds = %71, %14
  ret void
}

declare dso_local i32 @wacom_wac_event(%struct.hid_device*, %struct.hid_field*, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
