; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kone.c_kone_raw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kone.c_kone_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_report = type { i32 }
%struct.kone_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kone_mouse_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_report*, i32*, i32)* @kone_raw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kone_raw_event(%struct.hid_device* %0, %struct.hid_report* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_report*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kone_device*, align 8
  %11 = alloca %struct.kone_mouse_event*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_report* %1, %struct.hid_report** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %13 = call %struct.kone_device* @hid_get_drvdata(%struct.hid_device* %12)
  store %struct.kone_device* %13, %struct.kone_device** %10, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = bitcast i32* %14 to %struct.kone_mouse_event*
  store %struct.kone_mouse_event* %15, %struct.kone_mouse_event** %11, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ne i64 %17, 4
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %54

20:                                               ; preds = %4
  %21 = load %struct.kone_device*, %struct.kone_device** %10, align 8
  %22 = icmp eq %struct.kone_device* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %54

24:                                               ; preds = %20
  %25 = load %struct.kone_device*, %struct.kone_device** %10, align 8
  %26 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.kone_mouse_event*, %struct.kone_mouse_event** %11, align 8
  %29 = getelementptr inbounds %struct.kone_mouse_event, %struct.kone_mouse_event* %28, i32 0, i32 0
  %30 = call i64 @memcmp(i32* %27, i32* %29, i32 5)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.kone_device*, %struct.kone_device** %10, align 8
  %34 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %33, i32 0, i32 1
  %35 = load %struct.kone_mouse_event*, %struct.kone_mouse_event** %11, align 8
  %36 = call i32 @memcpy(%struct.TYPE_2__* %34, %struct.kone_mouse_event* %35, i32 4)
  br label %41

37:                                               ; preds = %24
  %38 = load %struct.kone_mouse_event*, %struct.kone_mouse_event** %11, align 8
  %39 = getelementptr inbounds %struct.kone_mouse_event, %struct.kone_mouse_event* %38, i32 0, i32 0
  %40 = call i32 @memset(i32* %39, i32 0, i32 5)
  br label %41

41:                                               ; preds = %37, %32
  %42 = load %struct.kone_device*, %struct.kone_device** %10, align 8
  %43 = load %struct.kone_mouse_event*, %struct.kone_mouse_event** %11, align 8
  %44 = call i32 @kone_keep_values_up_to_date(%struct.kone_device* %42, %struct.kone_mouse_event* %43)
  %45 = load %struct.kone_device*, %struct.kone_device** %10, align 8
  %46 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = load %struct.kone_device*, %struct.kone_device** %10, align 8
  %51 = load %struct.kone_mouse_event*, %struct.kone_mouse_event** %11, align 8
  %52 = call i32 @kone_report_to_chrdev(%struct.kone_device* %50, %struct.kone_mouse_event* %51)
  br label %53

53:                                               ; preds = %49, %41
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %23, %19
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local %struct.kone_device* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_2__*, %struct.kone_mouse_event*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @kone_keep_values_up_to_date(%struct.kone_device*, %struct.kone_mouse_event*) #1

declare dso_local i32 @kone_report_to_chrdev(%struct.kone_device*, %struct.kone_mouse_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
