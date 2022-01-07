; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_led_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-modules.c_wiimod_led_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimod_ops = type { i64 }
%struct.wiimote_data = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiimod_ops*, %struct.wiimote_data*)* @wiimod_led_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiimod_led_remove(%struct.wiimod_ops* %0, %struct.wiimote_data* %1) #0 {
  %3 = alloca %struct.wiimod_ops*, align 8
  %4 = alloca %struct.wiimote_data*, align 8
  store %struct.wiimod_ops* %0, %struct.wiimod_ops** %3, align 8
  store %struct.wiimote_data* %1, %struct.wiimote_data** %4, align 8
  %5 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %6 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %5, i32 0, i32 0
  %7 = load i32**, i32*** %6, align 8
  %8 = load %struct.wiimod_ops*, %struct.wiimod_ops** %3, align 8
  %9 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i32*, i32** %7, i64 %10
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %41

15:                                               ; preds = %2
  %16 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %17 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %16, i32 0, i32 0
  %18 = load i32**, i32*** %17, align 8
  %19 = load %struct.wiimod_ops*, %struct.wiimod_ops** %3, align 8
  %20 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32*, i32** %18, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @led_classdev_unregister(i32* %23)
  %25 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %26 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %25, i32 0, i32 0
  %27 = load i32**, i32*** %26, align 8
  %28 = load %struct.wiimod_ops*, %struct.wiimod_ops** %3, align 8
  %29 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32*, i32** %27, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @kfree(i32* %32)
  %34 = load %struct.wiimote_data*, %struct.wiimote_data** %4, align 8
  %35 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = load %struct.wiimod_ops*, %struct.wiimod_ops** %3, align 8
  %38 = getelementptr inbounds %struct.wiimod_ops, %struct.wiimod_ops* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32*, i32** %36, i64 %39
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @led_classdev_unregister(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
