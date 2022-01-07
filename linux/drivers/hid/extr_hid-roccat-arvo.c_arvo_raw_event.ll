; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-arvo.c_arvo_raw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-arvo.c_arvo_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_report = type { i32 }
%struct.arvo_device = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_report*, i32*, i32)* @arvo_raw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arvo_raw_event(%struct.hid_device* %0, %struct.hid_report* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_report*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.arvo_device*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_report* %1, %struct.hid_report** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %12 = call %struct.arvo_device* @hid_get_drvdata(%struct.hid_device* %11)
  store %struct.arvo_device* %12, %struct.arvo_device** %10, align 8
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 3
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %29

16:                                               ; preds = %4
  %17 = load %struct.arvo_device*, %struct.arvo_device** %10, align 8
  %18 = icmp ne %struct.arvo_device* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load %struct.arvo_device*, %struct.arvo_device** %10, align 8
  %21 = getelementptr inbounds %struct.arvo_device, %struct.arvo_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.arvo_device*, %struct.arvo_device** %10, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @arvo_report_to_chrdev(%struct.arvo_device* %25, i32* %26)
  br label %28

28:                                               ; preds = %24, %19, %16
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %15
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

declare dso_local %struct.arvo_device* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @arvo_report_to_chrdev(%struct.arvo_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
