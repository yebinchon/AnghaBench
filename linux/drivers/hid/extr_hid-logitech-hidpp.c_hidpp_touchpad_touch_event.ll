; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_touchpad_touch_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_touchpad_touch_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpp_touchpad_raw_xy_finger = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.hidpp_touchpad_raw_xy_finger*)* @hidpp_touchpad_touch_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidpp_touchpad_touch_event(i32* %0, %struct.hidpp_touchpad_raw_xy_finger* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.hidpp_touchpad_raw_xy_finger*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.hidpp_touchpad_raw_xy_finger* %1, %struct.hidpp_touchpad_raw_xy_finger** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = shl i32 %9, 2
  store i32 %10, i32* %5, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 2
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, 2
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = shl i32 %15, 6
  %17 = load i32*, i32** %3, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %16, %19
  %21 = load %struct.hidpp_touchpad_raw_xy_finger*, %struct.hidpp_touchpad_raw_xy_finger** %4, align 8
  %22 = getelementptr inbounds %struct.hidpp_touchpad_raw_xy_finger, %struct.hidpp_touchpad_raw_xy_finger* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = shl i32 %23, 6
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %24, %27
  %29 = load %struct.hidpp_touchpad_raw_xy_finger*, %struct.hidpp_touchpad_raw_xy_finger** %4, align 8
  %30 = getelementptr inbounds %struct.hidpp_touchpad_raw_xy_finger, %struct.hidpp_touchpad_raw_xy_finger* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 6
  %35 = load %struct.hidpp_touchpad_raw_xy_finger*, %struct.hidpp_touchpad_raw_xy_finger** %4, align 8
  %36 = getelementptr inbounds %struct.hidpp_touchpad_raw_xy_finger, %struct.hidpp_touchpad_raw_xy_finger* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 6
  %41 = load %struct.hidpp_touchpad_raw_xy_finger*, %struct.hidpp_touchpad_raw_xy_finger** %4, align 8
  %42 = getelementptr inbounds %struct.hidpp_touchpad_raw_xy_finger, %struct.hidpp_touchpad_raw_xy_finger* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32*, i32** %3, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.hidpp_touchpad_raw_xy_finger*, %struct.hidpp_touchpad_raw_xy_finger** %4, align 8
  %47 = getelementptr inbounds %struct.hidpp_touchpad_raw_xy_finger, %struct.hidpp_touchpad_raw_xy_finger* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load i32*, i32** %3, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.hidpp_touchpad_raw_xy_finger*, %struct.hidpp_touchpad_raw_xy_finger** %4, align 8
  %52 = getelementptr inbounds %struct.hidpp_touchpad_raw_xy_finger, %struct.hidpp_touchpad_raw_xy_finger* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = load i32*, i32** %3, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 6
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 4
  %57 = load %struct.hidpp_touchpad_raw_xy_finger*, %struct.hidpp_touchpad_raw_xy_finger** %4, align 8
  %58 = getelementptr inbounds %struct.hidpp_touchpad_raw_xy_finger, %struct.hidpp_touchpad_raw_xy_finger* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
