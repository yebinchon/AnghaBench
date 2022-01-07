; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-microsoft.c_ms_presenter_8k_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-microsoft.c_ms_presenter_8k_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_input = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hid_usage = type { i32 }

@HID_USAGE_PAGE = common dso_local global i32 0, align 4
@HID_UP_MSVENDOR = common dso_local global i32 0, align 4
@EV_REP = common dso_local global i32 0, align 4
@HID_USAGE = common dso_local global i32 0, align 4
@KEY_FORWARD = common dso_local global i32 0, align 4
@KEY_BACK = common dso_local global i32 0, align 4
@KEY_PLAYPAUSE = common dso_local global i32 0, align 4
@KEY_CLOSE = common dso_local global i32 0, align 4
@KEY_PLAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_input*, %struct.hid_usage*, i64**, i32*)* @ms_presenter_8k_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ms_presenter_8k_quirk(%struct.hid_input* %0, %struct.hid_usage* %1, i64** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_input*, align 8
  %7 = alloca %struct.hid_usage*, align 8
  %8 = alloca i64**, align 8
  %9 = alloca i32*, align 8
  store %struct.hid_input* %0, %struct.hid_input** %6, align 8
  store %struct.hid_usage* %1, %struct.hid_usage** %7, align 8
  store i64** %2, i64*** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %11 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @HID_USAGE_PAGE, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @HID_UP_MSVENDOR, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %48

18:                                               ; preds = %4
  %19 = load i32, i32* @EV_REP, align 4
  %20 = load %struct.hid_input*, %struct.hid_input** %6, align 8
  %21 = getelementptr inbounds %struct.hid_input, %struct.hid_input* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @set_bit(i32 %19, i32 %24)
  %26 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %27 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @HID_USAGE, align 4
  %30 = and i32 %28, %29
  switch i32 %30, label %46 [
    i32 64776, label %31
    i32 64777, label %34
    i32 64779, label %37
    i32 64782, label %40
    i32 64783, label %43
  ]

31:                                               ; preds = %18
  %32 = load i32, i32* @KEY_FORWARD, align 4
  %33 = call i32 @ms_map_key_clear(i32 %32)
  br label %47

34:                                               ; preds = %18
  %35 = load i32, i32* @KEY_BACK, align 4
  %36 = call i32 @ms_map_key_clear(i32 %35)
  br label %47

37:                                               ; preds = %18
  %38 = load i32, i32* @KEY_PLAYPAUSE, align 4
  %39 = call i32 @ms_map_key_clear(i32 %38)
  br label %47

40:                                               ; preds = %18
  %41 = load i32, i32* @KEY_CLOSE, align 4
  %42 = call i32 @ms_map_key_clear(i32 %41)
  br label %47

43:                                               ; preds = %18
  %44 = load i32, i32* @KEY_PLAY, align 4
  %45 = call i32 @ms_map_key_clear(i32 %44)
  br label %47

46:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %48

47:                                               ; preds = %43, %40, %37, %34, %31
  store i32 1, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %46, %17
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @ms_map_key_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
