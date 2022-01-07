; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_lkkbd.c_lkkbd_toggle_leds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_lkkbd.c_lkkbd_toggle_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lkkbd = type { %struct.serio* }
%struct.serio = type { i32 }

@LED_CAPSL = common dso_local global i32 0, align 4
@LK_LED_SHIFTLOCK = common dso_local global i32 0, align 4
@LED_COMPOSE = common dso_local global i32 0, align 4
@LK_LED_COMPOSE = common dso_local global i32 0, align 4
@LED_SCROLLL = common dso_local global i32 0, align 4
@LK_LED_SCROLLLOCK = common dso_local global i32 0, align 4
@LED_SLEEP = common dso_local global i32 0, align 4
@LK_LED_WAIT = common dso_local global i32 0, align 4
@LK_CMD_LED_ON = common dso_local global i8 0, align 1
@LK_CMD_LED_OFF = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lkkbd*)* @lkkbd_toggle_leds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lkkbd_toggle_leds(%struct.lkkbd* %0) #0 {
  %2 = alloca %struct.lkkbd*, align 8
  %3 = alloca %struct.serio*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.lkkbd* %0, %struct.lkkbd** %2, align 8
  %6 = load %struct.lkkbd*, %struct.lkkbd** %2, align 8
  %7 = getelementptr inbounds %struct.lkkbd, %struct.lkkbd* %6, i32 0, i32 0
  %8 = load %struct.serio*, %struct.serio** %7, align 8
  store %struct.serio* %8, %struct.serio** %3, align 8
  store i8 0, i8* %4, align 1
  store i8 0, i8* %5, align 1
  %9 = load %struct.lkkbd*, %struct.lkkbd** %2, align 8
  %10 = load i8, i8* %4, align 1
  %11 = load i8, i8* %5, align 1
  %12 = load i32, i32* @LED_CAPSL, align 4
  %13 = load i32, i32* @LK_LED_SHIFTLOCK, align 4
  %14 = call i32 @CHECK_LED(%struct.lkkbd* %9, i8 zeroext %10, i8 zeroext %11, i32 %12, i32 %13)
  %15 = load %struct.lkkbd*, %struct.lkkbd** %2, align 8
  %16 = load i8, i8* %4, align 1
  %17 = load i8, i8* %5, align 1
  %18 = load i32, i32* @LED_COMPOSE, align 4
  %19 = load i32, i32* @LK_LED_COMPOSE, align 4
  %20 = call i32 @CHECK_LED(%struct.lkkbd* %15, i8 zeroext %16, i8 zeroext %17, i32 %18, i32 %19)
  %21 = load %struct.lkkbd*, %struct.lkkbd** %2, align 8
  %22 = load i8, i8* %4, align 1
  %23 = load i8, i8* %5, align 1
  %24 = load i32, i32* @LED_SCROLLL, align 4
  %25 = load i32, i32* @LK_LED_SCROLLLOCK, align 4
  %26 = call i32 @CHECK_LED(%struct.lkkbd* %21, i8 zeroext %22, i8 zeroext %23, i32 %24, i32 %25)
  %27 = load %struct.lkkbd*, %struct.lkkbd** %2, align 8
  %28 = load i8, i8* %4, align 1
  %29 = load i8, i8* %5, align 1
  %30 = load i32, i32* @LED_SLEEP, align 4
  %31 = load i32, i32* @LK_LED_WAIT, align 4
  %32 = call i32 @CHECK_LED(%struct.lkkbd* %27, i8 zeroext %28, i8 zeroext %29, i32 %30, i32 %31)
  %33 = load i8, i8* %4, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %1
  %37 = load %struct.serio*, %struct.serio** %3, align 8
  %38 = load i8, i8* @LK_CMD_LED_ON, align 1
  %39 = call i32 @serio_write(%struct.serio* %37, i8 zeroext %38)
  %40 = load %struct.serio*, %struct.serio** %3, align 8
  %41 = load i8, i8* %4, align 1
  %42 = call i32 @serio_write(%struct.serio* %40, i8 zeroext %41)
  br label %43

43:                                               ; preds = %36, %1
  %44 = load i8, i8* %5, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load %struct.serio*, %struct.serio** %3, align 8
  %49 = load i8, i8* @LK_CMD_LED_OFF, align 1
  %50 = call i32 @serio_write(%struct.serio* %48, i8 zeroext %49)
  %51 = load %struct.serio*, %struct.serio** %3, align 8
  %52 = load i8, i8* %5, align 1
  %53 = call i32 @serio_write(%struct.serio* %51, i8 zeroext %52)
  br label %54

54:                                               ; preds = %47, %43
  ret void
}

declare dso_local i32 @CHECK_LED(%struct.lkkbd*, i8 zeroext, i8 zeroext, i32, i32) #1

declare dso_local i32 @serio_write(%struct.serio*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
