; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-hub.c_sensor_hub_report_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-sensor-hub.c_sensor_hub_report_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i64 }

@USB_DEVICE_ID_TEXAS_INSTRUMENTS_LENOVO_YOGA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.hid_device*, i32*, i32*)* @sensor_hub_report_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @sensor_hub_report_fixup(%struct.hid_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %8 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @USB_DEVICE_ID_TEXAS_INSTRUMENTS_LENOVO_YOGA, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %81

12:                                               ; preds = %3
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 2558
  br i1 %15, label %16, label %81

16:                                               ; preds = %12
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 913
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 23
  br i1 %20, label %21, label %81

21:                                               ; preds = %16
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 914
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 64
  br i1 %25, label %26, label %81

26:                                               ; preds = %21
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 915
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 129
  br i1 %30, label %31, label %81

31:                                               ; preds = %26
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 916
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 8
  br i1 %35, label %36, label %81

36:                                               ; preds = %31
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 917
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %81

41:                                               ; preds = %36
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 918
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 39
  br i1 %45, label %46, label %81

46:                                               ; preds = %41
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 921
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 7
  br i1 %50, label %51, label %81

51:                                               ; preds = %46
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 922
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %51
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 956
  store i32 192, i32* %58, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 935
  store i32 192, i32* %60, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 914
  store i32 192, i32* %62, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 957
  store i32 126, i32* %64, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 936
  store i32 126, i32* %66, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 915
  store i32 126, i32* %68, align 4
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 958
  store i32 247, i32* %70, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 937
  store i32 247, i32* %72, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 916
  store i32 247, i32* %74, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 959
  store i32 255, i32* %76, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 938
  store i32 255, i32* %78, align 4
  %79 = load i32*, i32** %5, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 917
  store i32 255, i32* %80, align 4
  br label %81

81:                                               ; preds = %56, %51, %46, %41, %36, %31, %26, %21, %16, %12, %3
  %82 = load i32*, i32** %5, align 8
  ret i32* %82
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
