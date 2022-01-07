; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_imx_keypad.c_imx_keypad_inhibit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_imx_keypad.c_imx_keypad_inhibit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_keypad = type { i32, i64 }

@KPSR = common dso_local global i64 0, align 8
@KBD_STAT_KRIE = common dso_local global i16 0, align 2
@KBD_STAT_KDIE = common dso_local global i16 0, align 2
@KBD_STAT_KPKR = common dso_local global i16 0, align 2
@KBD_STAT_KPKD = common dso_local global i16 0, align 2
@KPCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_keypad*)* @imx_keypad_inhibit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_keypad_inhibit(%struct.imx_keypad* %0) #0 {
  %2 = alloca %struct.imx_keypad*, align 8
  %3 = alloca i16, align 2
  store %struct.imx_keypad* %0, %struct.imx_keypad** %2, align 8
  %4 = load %struct.imx_keypad*, %struct.imx_keypad** %2, align 8
  %5 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @KPSR, align 8
  %8 = add nsw i64 %6, %7
  %9 = call zeroext i16 @readw(i64 %8)
  store i16 %9, i16* %3, align 2
  %10 = load i16, i16* @KBD_STAT_KRIE, align 2
  %11 = zext i16 %10 to i32
  %12 = load i16, i16* @KBD_STAT_KDIE, align 2
  %13 = zext i16 %12 to i32
  %14 = or i32 %11, %13
  %15 = xor i32 %14, -1
  %16 = load i16, i16* %3, align 2
  %17 = zext i16 %16 to i32
  %18 = and i32 %17, %15
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %3, align 2
  %20 = load i16, i16* @KBD_STAT_KPKR, align 2
  %21 = zext i16 %20 to i32
  %22 = load i16, i16* @KBD_STAT_KPKD, align 2
  %23 = zext i16 %22 to i32
  %24 = or i32 %21, %23
  %25 = load i16, i16* %3, align 2
  %26 = zext i16 %25 to i32
  %27 = or i32 %26, %24
  %28 = trunc i32 %27 to i16
  store i16 %28, i16* %3, align 2
  %29 = load i16, i16* %3, align 2
  %30 = load %struct.imx_keypad*, %struct.imx_keypad** %2, align 8
  %31 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @KPSR, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writew(i16 zeroext %29, i64 %34)
  %36 = load %struct.imx_keypad*, %struct.imx_keypad** %2, align 8
  %37 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, 255
  %40 = shl i32 %39, 8
  %41 = trunc i32 %40 to i16
  store i16 %41, i16* %3, align 2
  %42 = load i16, i16* %3, align 2
  %43 = load %struct.imx_keypad*, %struct.imx_keypad** %2, align 8
  %44 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @KPCR, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writew(i16 zeroext %42, i64 %47)
  ret void
}

declare dso_local zeroext i16 @readw(i64) #1

declare dso_local i32 @writew(i16 zeroext, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
