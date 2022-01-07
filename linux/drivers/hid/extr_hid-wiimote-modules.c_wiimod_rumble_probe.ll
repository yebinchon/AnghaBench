; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_rumble_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_rumble_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimod_ops = type { i32 }
%struct.wiimote_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@wiimod_rumble_worker = common dso_local global i32 0, align 4
@FF_RUMBLE = common dso_local global i32 0, align 4
@wiimod_rumble_play = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiimod_ops*, %struct.wiimote_data*)* @wiimod_rumble_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiimod_rumble_probe(%struct.wiimod_ops* %0, %struct.wiimote_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiimod_ops*, align 8
  %5 = alloca %struct.wiimote_data*, align 8
  store %struct.wiimod_ops* %0, %struct.wiimod_ops** %4, align 8
  store %struct.wiimote_data* %1, %struct.wiimote_data** %5, align 8
  %6 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %7 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %6, i32 0, i32 1
  %8 = load i32, i32* @wiimod_rumble_worker, align 4
  %9 = call i32 @INIT_WORK(i32* %7, i32 %8)
  %10 = load i32, i32* @FF_RUMBLE, align 4
  %11 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %12 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @set_bit(i32 %10, i32 %15)
  %17 = load %struct.wiimote_data*, %struct.wiimote_data** %5, align 8
  %18 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* @wiimod_rumble_play, align 4
  %21 = call i64 @input_ff_create_memless(%struct.TYPE_2__* %19, i32* null, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i64 @input_ff_create_memless(%struct.TYPE_2__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
