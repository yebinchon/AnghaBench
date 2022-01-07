; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_intuos_pro2_bt_pad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_intuos_pro2_bt_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { i8*, i32*, %struct.input_dev* }
%struct.input_dev = type { i32 }

@ABS_WHEEL = common dso_local global i32 0, align 4
@ABS_MISC = common dso_local global i32 0, align 4
@PAD_DEVICE_ID = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SERIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wacom_wac*)* @wacom_intuos_pro2_bt_pad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_intuos_pro2_bt_pad(%struct.wacom_wac* %0) #0 {
  %2 = alloca %struct.wacom_wac*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wacom_wac* %0, %struct.wacom_wac** %2, align 8
  %9 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %10 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %9, i32 0, i32 2
  %11 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  store %struct.input_dev* %11, %struct.input_dev** %3, align 8
  %12 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %13 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 282
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 281
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 64
  %24 = shl i32 %23, 2
  %25 = or i32 %18, %24
  store i32 %25, i32* %5, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 285
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 127
  store i32 %30, i32* %6, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 285
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 128
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %1
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %38, %1
  %42 = phi i1 [ true, %1 ], [ %40, %38 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 71, %44
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 13
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp sgt i32 %48, 71
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 %51, 72
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %50, %41
  %54 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @wacom_report_numbered_buttons(%struct.input_dev* %54, i32 9, i32 %55)
  %57 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %58 = load i32, i32* @ABS_WHEEL, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %6, align 4
  br label %64

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i32 [ %62, %61 ], [ 0, %63 ]
  %66 = call i32 @input_report_abs(%struct.input_dev* %57, i32 %58, i32 %65)
  %67 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %68 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %69 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 1, i32 0
  %77 = call i32 @input_report_key(%struct.input_dev* %67, i32 %72, i32 %76)
  %78 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %79 = load i32, i32* @ABS_MISC, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %64
  %83 = load i32, i32* @PAD_DEVICE_ID, align 4
  br label %85

84:                                               ; preds = %64
  br label %85

85:                                               ; preds = %84, %82
  %86 = phi i32 [ %83, %82 ], [ 0, %84 ]
  %87 = call i32 @input_report_abs(%struct.input_dev* %78, i32 %79, i32 %86)
  %88 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %89 = load i32, i32* @EV_MSC, align 4
  %90 = load i32, i32* @MSC_SERIAL, align 4
  %91 = call i32 @input_event(%struct.input_dev* %88, i32 %89, i32 %90, i32 -1)
  %92 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %93 = call i32 @input_sync(%struct.input_dev* %92)
  ret void
}

declare dso_local i32 @wacom_report_numbered_buttons(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
