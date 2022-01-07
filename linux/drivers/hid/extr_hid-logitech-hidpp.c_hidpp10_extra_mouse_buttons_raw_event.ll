; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp10_extra_mouse_buttons_raw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp10_extra_mouse_buttons_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpp_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@REPORT_ID_HIDPP_SHORT = common dso_local global i32 0, align 4
@HIDPP_SUB_ID_MOUSE_EXTRA_BTNS = common dso_local global i32 0, align 4
@BTN_MOUSE = common dso_local global i64 0, align 8
@BTN_MISC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidpp_device*, i32*, i32)* @hidpp10_extra_mouse_buttons_raw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpp10_extra_mouse_buttons_raw_event(%struct.hidpp_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hidpp_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hidpp_device* %0, %struct.hidpp_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %10 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %82

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 7
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %82

20:                                               ; preds = %16
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @REPORT_ID_HIDPP_SHORT, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @HIDPP_SUB_ID_MOUSE_EXTRA_BTNS, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %20
  store i32 0, i32* %4, align 4
  br label %82

33:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %52, %33
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 8
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  %38 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %39 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* @BTN_MOUSE, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = shl i32 1, %48
  %50 = and i32 %47, %49
  %51 = call i32 @input_report_key(i32 %40, i64 %44, i32 %50)
  br label %52

52:                                               ; preds = %37
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %34

55:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %74, %55
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 8
  br i1 %58, label %59, label %77

59:                                               ; preds = %56
  %60 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %61 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* @BTN_MISC, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %8, align 4
  %71 = shl i32 1, %70
  %72 = and i32 %69, %71
  %73 = call i32 @input_report_key(i32 %62, i64 %66, i32 %72)
  br label %74

74:                                               ; preds = %59
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %56

77:                                               ; preds = %56
  %78 = load %struct.hidpp_device*, %struct.hidpp_device** %5, align 8
  %79 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @input_sync(i32 %80)
  store i32 1, i32* %4, align 4
  br label %82

82:                                               ; preds = %77, %32, %19, %13
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @input_report_key(i32, i64, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
