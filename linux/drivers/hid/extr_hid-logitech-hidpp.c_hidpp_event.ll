; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i32 }
%struct.hidpp_device = type { i32, i32*, %struct.hidpp_scroll_counter }
%struct.hidpp_scroll_counter = type { i64 }

@HIDPP_QUIRK_HI_RES_SCROLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i32)* @hidpp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpp_event(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_field*, align 8
  %8 = alloca %struct.hid_usage*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hidpp_device*, align 8
  %11 = alloca %struct.hidpp_scroll_counter*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_field* %1, %struct.hid_field** %7, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %13 = call %struct.hidpp_device* @hid_get_drvdata(%struct.hid_device* %12)
  store %struct.hidpp_device* %13, %struct.hidpp_device** %10, align 8
  %14 = load %struct.hidpp_device*, %struct.hidpp_device** %10, align 8
  %15 = icmp ne %struct.hidpp_device* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %47

17:                                               ; preds = %4
  %18 = load %struct.hidpp_device*, %struct.hidpp_device** %10, align 8
  %19 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %18, i32 0, i32 2
  store %struct.hidpp_scroll_counter* %19, %struct.hidpp_scroll_counter** %11, align 8
  %20 = load %struct.hidpp_device*, %struct.hidpp_device** %10, align 8
  %21 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @HIDPP_QUIRK_HI_RES_SCROLL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %17
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %26
  %30 = load %struct.hidpp_device*, %struct.hidpp_device** %10, align 8
  %31 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.hidpp_scroll_counter*, %struct.hidpp_scroll_counter** %11, align 8
  %36 = getelementptr inbounds %struct.hidpp_scroll_counter, %struct.hidpp_scroll_counter* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %29, %26, %17
  store i32 0, i32* %5, align 4
  br label %47

40:                                               ; preds = %34
  %41 = load %struct.hidpp_device*, %struct.hidpp_device** %10, align 8
  %42 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.hidpp_scroll_counter*, %struct.hidpp_scroll_counter** %11, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @hidpp_scroll_counter_handle_scroll(i32* %43, %struct.hidpp_scroll_counter* %44, i32 %45)
  store i32 1, i32* %5, align 4
  br label %47

47:                                               ; preds = %40, %39, %16
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local %struct.hidpp_device* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hidpp_scroll_counter_handle_scroll(i32*, %struct.hidpp_scroll_counter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
