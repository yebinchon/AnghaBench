; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_finger_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_finger_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_report = type { i32 }
%struct.wacom = type { %struct.wacom_wac }
%struct.wacom_wac = type { %struct.TYPE_4__*, %struct.hid_data, %struct.TYPE_3__, %struct.input_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.hid_data = type { i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.input_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.hid_report*)* @wacom_wac_finger_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_wac_finger_report(%struct.hid_device* %0, %struct.hid_report* %1) #0 {
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.hid_report*, align 8
  %5 = alloca %struct.wacom*, align 8
  %6 = alloca %struct.wacom_wac*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hid_data*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  store %struct.hid_report* %1, %struct.hid_report** %4, align 8
  %10 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %11 = call %struct.wacom* @hid_get_drvdata(%struct.hid_device* %10)
  store %struct.wacom* %11, %struct.wacom** %5, align 8
  %12 = load %struct.wacom*, %struct.wacom** %5, align 8
  %13 = getelementptr inbounds %struct.wacom, %struct.wacom* %12, i32 0, i32 0
  store %struct.wacom_wac* %13, %struct.wacom_wac** %6, align 8
  %14 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %15 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %14, i32 0, i32 3
  %16 = load %struct.input_dev*, %struct.input_dev** %15, align 8
  store %struct.input_dev* %16, %struct.input_dev** %7, align 8
  %17 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %18 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %22 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %21, i32 0, i32 1
  store %struct.hid_data* %22, %struct.hid_data** %9, align 8
  %23 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %24 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %28 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %26, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %53

33:                                               ; preds = %2
  %34 = load i32, i32* %8, align 4
  %35 = icmp ugt i32 %34, 1
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %38 = call i32 @input_mt_sync_frame(%struct.input_dev* %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %41 = call i32 @input_sync(%struct.input_dev* %40)
  %42 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %43 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.hid_data*, %struct.hid_data** %9, align 8
  %46 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %48 = call i32 @wacom_wac_finger_count_touches(%struct.wacom_wac* %47)
  %49 = load %struct.wacom_wac*, %struct.wacom_wac** %6, align 8
  %50 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 4
  br label %53

53:                                               ; preds = %39, %32
  ret void
}

declare dso_local %struct.wacom* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @input_mt_sync_frame(%struct.input_dev*) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @wacom_wac_finger_count_touches(%struct.wacom_wac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
