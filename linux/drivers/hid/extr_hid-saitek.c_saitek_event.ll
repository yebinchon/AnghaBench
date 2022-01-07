; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-saitek.c_saitek_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-saitek.c_saitek_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_field = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.hid_usage = type { i64, i32 }
%struct.saitek_sc = type { i32 }

@EV_KEY = common dso_local global i64 0, align 8
@SAITEK_RELEASE_MODE_RAT7 = common dso_local global i32 0, align 4
@BTN_MOUSE = common dso_local global i32 0, align 4
@SAITEK_RELEASE_MODE_MMO7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i64)* @saitek_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saitek_event(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_field*, align 8
  %8 = alloca %struct.hid_usage*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.saitek_sc*, align 8
  %11 = alloca %struct.input_dev*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_field* %1, %struct.hid_field** %7, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %13 = call %struct.saitek_sc* @hid_get_drvdata(%struct.hid_device* %12)
  store %struct.saitek_sc* %13, %struct.saitek_sc** %10, align 8
  %14 = load %struct.hid_field*, %struct.hid_field** %7, align 8
  %15 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.input_dev*, %struct.input_dev** %17, align 8
  store %struct.input_dev* %18, %struct.input_dev** %11, align 8
  %19 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %20 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @EV_KEY, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %66

24:                                               ; preds = %4
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %66

27:                                               ; preds = %24
  %28 = load %struct.saitek_sc*, %struct.saitek_sc** %10, align 8
  %29 = getelementptr inbounds %struct.saitek_sc, %struct.saitek_sc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @SAITEK_RELEASE_MODE_RAT7, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %36 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @BTN_MOUSE, align 4
  %39 = sub nsw i32 %37, %38
  %40 = icmp eq i32 %39, 10
  br i1 %40, label %55, label %41

41:                                               ; preds = %34, %27
  %42 = load %struct.saitek_sc*, %struct.saitek_sc** %10, align 8
  %43 = getelementptr inbounds %struct.saitek_sc, %struct.saitek_sc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SAITEK_RELEASE_MODE_MMO7, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %41
  %49 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %50 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @BTN_MOUSE, align 4
  %53 = sub nsw i32 %51, %52
  %54 = icmp eq i32 %53, 15
  br i1 %54, label %55, label %66

55:                                               ; preds = %48, %34
  %56 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %57 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %58 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @input_report_key(%struct.input_dev* %56, i32 %59, i32 1)
  %61 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %62 = load %struct.hid_usage*, %struct.hid_usage** %8, align 8
  %63 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @input_report_key(%struct.input_dev* %61, i32 %64, i32 0)
  store i32 1, i32* %5, align 4
  br label %67

66:                                               ; preds = %48, %41, %24, %4
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %55
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local %struct.saitek_sc* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
