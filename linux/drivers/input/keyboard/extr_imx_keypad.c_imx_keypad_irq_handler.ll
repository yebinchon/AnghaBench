; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_imx_keypad.c_imx_keypad_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_imx_keypad.c_imx_keypad_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_keypad = type { i32, i64, i64, i64 }

@KPSR = common dso_local global i64 0, align 8
@KBD_STAT_KRIE = common dso_local global i16 0, align 2
@KBD_STAT_KDIE = common dso_local global i16 0, align 2
@KBD_STAT_KPKR = common dso_local global i16 0, align 2
@KBD_STAT_KPKD = common dso_local global i16 0, align 2
@jiffies = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @imx_keypad_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_keypad_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.imx_keypad*, align 8
  %6 = alloca i16, align 2
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.imx_keypad*
  store %struct.imx_keypad* %8, %struct.imx_keypad** %5, align 8
  %9 = load %struct.imx_keypad*, %struct.imx_keypad** %5, align 8
  %10 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @KPSR, align 8
  %13 = add nsw i64 %11, %12
  %14 = call zeroext i16 @readw(i64 %13)
  store i16 %14, i16* %6, align 2
  %15 = load i16, i16* @KBD_STAT_KRIE, align 2
  %16 = zext i16 %15 to i32
  %17 = load i16, i16* @KBD_STAT_KDIE, align 2
  %18 = zext i16 %17 to i32
  %19 = or i32 %16, %18
  %20 = xor i32 %19, -1
  %21 = load i16, i16* %6, align 2
  %22 = zext i16 %21 to i32
  %23 = and i32 %22, %20
  %24 = trunc i32 %23 to i16
  store i16 %24, i16* %6, align 2
  %25 = load i16, i16* @KBD_STAT_KPKR, align 2
  %26 = zext i16 %25 to i32
  %27 = load i16, i16* @KBD_STAT_KPKD, align 2
  %28 = zext i16 %27 to i32
  %29 = or i32 %26, %28
  %30 = load i16, i16* %6, align 2
  %31 = zext i16 %30 to i32
  %32 = or i32 %31, %29
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* %6, align 2
  %34 = load i16, i16* %6, align 2
  %35 = load %struct.imx_keypad*, %struct.imx_keypad** %5, align 8
  %36 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @KPSR, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writew(i16 zeroext %34, i64 %39)
  %41 = load %struct.imx_keypad*, %struct.imx_keypad** %5, align 8
  %42 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %2
  %46 = load %struct.imx_keypad*, %struct.imx_keypad** %5, align 8
  %47 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.imx_keypad*, %struct.imx_keypad** %5, align 8
  %49 = getelementptr inbounds %struct.imx_keypad, %struct.imx_keypad* %48, i32 0, i32 0
  %50 = load i64, i64* @jiffies, align 8
  %51 = call i64 @msecs_to_jiffies(i32 2)
  %52 = add nsw i64 %50, %51
  %53 = call i32 @mod_timer(i32* %49, i64 %52)
  br label %54

54:                                               ; preds = %45, %2
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %55
}

declare dso_local zeroext i16 @readw(i64) #1

declare dso_local i32 @writew(i16 zeroext, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
