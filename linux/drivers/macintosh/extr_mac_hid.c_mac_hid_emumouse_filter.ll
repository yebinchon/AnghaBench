; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_mac_hid.c_mac_hid_emumouse_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_mac_hid.c_mac_hid_emumouse_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_handle = type { i32 }

@EV_KEY = common dso_local global i32 0, align 4
@mouse_button2_keycode = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@mouse_button3_keycode = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@mac_hid_emumouse_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_handle*, i32, i32, i32)* @mac_hid_emumouse_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_hid_emumouse_filter(%struct.input_handle* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_handle*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.input_handle* %0, %struct.input_handle** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @EV_KEY, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %36

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @mouse_button2_keycode, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @BTN_MIDDLE, align 4
  store i32 %20, i32* %10, align 4
  br label %29

21:                                               ; preds = %15
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @mouse_button3_keycode, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @BTN_RIGHT, align 4
  store i32 %26, i32* %10, align 4
  br label %28

27:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %36

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %28, %19
  %30 = load i32, i32* @mac_hid_emumouse_dev, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @input_report_key(i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* @mac_hid_emumouse_dev, align 4
  %35 = call i32 @input_sync(i32 %34)
  store i32 1, i32* %5, align 4
  br label %36

36:                                               ; preds = %29, %27, %14
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
