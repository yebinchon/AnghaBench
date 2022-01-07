; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_touchpad_raw_xy_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_touchpad_raw_xy_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidpp_device = type { i32 }
%struct.hidpp_touchpad_raw_xy = type { i32, i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hidpp_device*, i32*, %struct.hidpp_touchpad_raw_xy*)* @hidpp_touchpad_raw_xy_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidpp_touchpad_raw_xy_event(%struct.hidpp_device* %0, i32* %1, %struct.hidpp_touchpad_raw_xy* %2) #0 {
  %4 = alloca %struct.hidpp_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hidpp_touchpad_raw_xy*, align 8
  store %struct.hidpp_device* %0, %struct.hidpp_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.hidpp_touchpad_raw_xy* %2, %struct.hidpp_touchpad_raw_xy** %6, align 8
  %7 = load %struct.hidpp_touchpad_raw_xy*, %struct.hidpp_touchpad_raw_xy** %6, align 8
  %8 = call i32 @memset(%struct.hidpp_touchpad_raw_xy* %7, i32 0, i32 24)
  %9 = load i32*, i32** %5, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 8
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 1
  %13 = load %struct.hidpp_touchpad_raw_xy*, %struct.hidpp_touchpad_raw_xy** %6, align 8
  %14 = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, %struct.hidpp_touchpad_raw_xy* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 8
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 1
  %19 = and i32 %18, 1
  %20 = load %struct.hidpp_touchpad_raw_xy*, %struct.hidpp_touchpad_raw_xy** %6, align 8
  %21 = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, %struct.hidpp_touchpad_raw_xy* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 15
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 15
  %26 = load %struct.hidpp_touchpad_raw_xy*, %struct.hidpp_touchpad_raw_xy** %6, align 8
  %27 = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, %struct.hidpp_touchpad_raw_xy* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 8
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 2
  %32 = and i32 %31, 1
  %33 = load %struct.hidpp_touchpad_raw_xy*, %struct.hidpp_touchpad_raw_xy** %6, align 8
  %34 = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, %struct.hidpp_touchpad_raw_xy* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.hidpp_touchpad_raw_xy*, %struct.hidpp_touchpad_raw_xy** %6, align 8
  %36 = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, %struct.hidpp_touchpad_raw_xy* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %3
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load %struct.hidpp_touchpad_raw_xy*, %struct.hidpp_touchpad_raw_xy** %6, align 8
  %43 = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, %struct.hidpp_touchpad_raw_xy* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = call i32 @hidpp_touchpad_touch_event(i32* %41, i32* %45)
  %47 = load i32*, i32** %5, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 9
  %49 = load %struct.hidpp_touchpad_raw_xy*, %struct.hidpp_touchpad_raw_xy** %6, align 8
  %50 = getelementptr inbounds %struct.hidpp_touchpad_raw_xy, %struct.hidpp_touchpad_raw_xy* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = call i32 @hidpp_touchpad_touch_event(i32* %48, i32* %52)
  br label %54

54:                                               ; preds = %39, %3
  ret void
}

declare dso_local i32 @memset(%struct.hidpp_touchpad_raw_xy*, i32, i32) #1

declare dso_local i32 @hidpp_touchpad_touch_event(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
