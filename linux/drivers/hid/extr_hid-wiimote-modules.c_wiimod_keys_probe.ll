; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_keys_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_keys_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimod_ops = type { i32 }
%struct.wiimote_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@EV_KEY = common dso_local global i32 0, align 4
@WIIPROTO_KEY_COUNT = common dso_local global i32 0, align 4
@wiimod_keys_map = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiimod_ops*, %struct.wiimote_data*)* @wiimod_keys_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiimod_keys_probe(%struct.wiimod_ops* %0, %struct.wiimote_data* %1) #0 {
  %3 = alloca %struct.wiimod_ops*, align 8
  %4 = alloca %struct.wiimote_data*, align 8
  %5 = alloca i32, align 4
  store %struct.wiimod_ops* %0, %struct.wiimod_ops** %3, align 8
  store %struct.wiimote_data* %1, %struct.wiimote_data** %4, align 8
  %6 = load i32, i32* @EV_KEY, align 4
  %7 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %8 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @set_bit(i32 %6, i32 %11)
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %29, %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @WIIPROTO_KEY_COUNT, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = load i32*, i32** @wiimod_keys_map, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %24 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @set_bit(i32 %22, i32 %27)
  br label %29

29:                                               ; preds = %17
  %30 = load i32, i32* %5, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %13

32:                                               ; preds = %13
  ret i32 0
}

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
