; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_bpt3_button_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_bpt3_button_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { %struct.wacom_features, %struct.input_dev* }
%struct.wacom_features = type { i64 }
%struct.input_dev = type { i32 }

@INTUOSHT = common dso_local global i64 0, align 8
@INTUOSHT2 = common dso_local global i64 0, align 8
@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_BACK = common dso_local global i32 0, align 4
@BTN_FORWARD = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wacom_wac*, i8*)* @wacom_bpt3_button_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_bpt3_button_msg(%struct.wacom_wac* %0, i8* %1) #0 {
  %3 = alloca %struct.wacom_wac*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.wacom_features*, align 8
  store %struct.wacom_wac* %0, %struct.wacom_wac** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %8 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %7, i32 0, i32 1
  %9 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  store %struct.input_dev* %9, %struct.input_dev** %5, align 8
  %10 = load %struct.wacom_wac*, %struct.wacom_wac** %3, align 8
  %11 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %10, i32 0, i32 0
  store %struct.wacom_features* %11, %struct.wacom_features** %6, align 8
  %12 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %13 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @INTUOSHT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.wacom_features*, %struct.wacom_features** %6, align 8
  %19 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @INTUOSHT2, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %17, %2
  %24 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %25 = load i32, i32* @BTN_LEFT, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %29, 2
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @input_report_key(%struct.input_dev* %24, i32 %25, i32 %32)
  %34 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %35 = load i32, i32* @BTN_BACK, align 4
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 8
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @input_report_key(%struct.input_dev* %34, i32 %35, i32 %42)
  br label %65

44:                                               ; preds = %17
  %45 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %46 = load i32, i32* @BTN_BACK, align 4
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, 2
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @input_report_key(%struct.input_dev* %45, i32 %46, i32 %53)
  %55 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %56 = load i32, i32* @BTN_LEFT, align 4
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %60, 8
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @input_report_key(%struct.input_dev* %55, i32 %56, i32 %63)
  br label %65

65:                                               ; preds = %44, %23
  %66 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %67 = load i32, i32* @BTN_FORWARD, align 4
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @input_report_key(%struct.input_dev* %66, i32 %67, i32 %74)
  %76 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %77 = load i32, i32* @BTN_RIGHT, align 4
  %78 = load i8*, i8** %4, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = and i32 %81, 1
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @input_report_key(%struct.input_dev* %76, i32 %77, i32 %84)
  ret void
}

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
