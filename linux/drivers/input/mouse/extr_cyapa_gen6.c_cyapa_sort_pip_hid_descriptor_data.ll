; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen6.c_cyapa_sort_pip_hid_descriptor_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cyapa_gen6.c_cyapa_sort_pip_hid_descriptor_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa = type { i32 }

@PIP_HID_DESCRIPTOR_SIZE = common dso_local global i32 0, align 4
@PIP_RESP_REPORT_ID_OFFSET = common dso_local global i64 0, align 8
@PIP_HID_APP_REPORT_ID = common dso_local global i64 0, align 8
@PIP_HID_BL_REPORT_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cyapa*, i64*, i32)* @cyapa_sort_pip_hid_descriptor_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyapa_sort_pip_hid_descriptor_data(%struct.cyapa* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cyapa*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.cyapa* %0, %struct.cyapa** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PIP_HID_DESCRIPTOR_SIZE, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %28

12:                                               ; preds = %3
  %13 = load i64*, i64** %6, align 8
  %14 = load i64, i64* @PIP_RESP_REPORT_ID_OFFSET, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PIP_HID_APP_REPORT_ID, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %12
  %20 = load i64*, i64** %6, align 8
  %21 = load i64, i64* @PIP_RESP_REPORT_ID_OFFSET, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PIP_HID_BL_REPORT_ID, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19, %12
  store i32 1, i32* %4, align 4
  br label %28

27:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %26, %11
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
