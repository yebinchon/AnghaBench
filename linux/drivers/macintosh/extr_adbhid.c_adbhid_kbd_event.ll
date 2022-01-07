; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_adbhid.c_adbhid_kbd_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_adbhid.c_adbhid_kbd_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.adbhid = type { i32 }

@LED_SCROLLL = common dso_local global i32 0, align 4
@LED_NUML = common dso_local global i32 0, align 4
@LED_CAPSL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32, i32)* @adbhid_kbd_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adbhid_kbd_event(%struct.input_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.adbhid*, align 8
  %11 = alloca i8, align 1
  store %struct.input_dev* %0, %struct.input_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %13 = call %struct.adbhid* @input_get_drvdata(%struct.input_dev* %12)
  store %struct.adbhid* %13, %struct.adbhid** %10, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %48 [
    i32 128, label %15
  ]

15:                                               ; preds = %4
  %16 = load i32, i32* @LED_SCROLLL, align 4
  %17 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %18 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @test_bit(i32 %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 4, i32 0
  %24 = load i32, i32* @LED_NUML, align 4
  %25 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %26 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @test_bit(i32 %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  %32 = or i32 %23, %31
  %33 = load i32, i32* @LED_CAPSL, align 4
  %34 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %35 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @test_bit(i32 %33, i32 %36)
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 2, i32 0
  %41 = or i32 %32, %40
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %11, align 1
  %43 = load i8, i8* %11, align 1
  %44 = load %struct.adbhid*, %struct.adbhid** %10, align 8
  %45 = getelementptr inbounds %struct.adbhid, %struct.adbhid* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @real_leds(i8 zeroext %43, i32 %46)
  store i32 0, i32* %5, align 4
  br label %49

48:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %15
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.adbhid* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @real_leds(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
