; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pxa27x_keypad.c_pxa27x_keypad_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_pxa27x_keypad.c_pxa27x_keypad_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa27x_keypad = type { i32 }

@KPC = common dso_local global i32 0, align 4
@KPC_DI = common dso_local global i64 0, align 8
@KPC_MI = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pxa27x_keypad_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa27x_keypad_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pxa27x_keypad*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.pxa27x_keypad*
  store %struct.pxa27x_keypad* %8, %struct.pxa27x_keypad** %5, align 8
  %9 = load i32, i32* @KPC, align 4
  %10 = call i64 @keypad_readl(i32 %9)
  store i64 %10, i64* %6, align 8
  %11 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %5, align 8
  %12 = call i32 @clear_wakeup_event(%struct.pxa27x_keypad* %11)
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @KPC_DI, align 8
  %15 = and i64 %13, %14
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %5, align 8
  %19 = call i32 @pxa27x_keypad_scan_direct(%struct.pxa27x_keypad* %18)
  br label %20

20:                                               ; preds = %17, %2
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @KPC_MI, align 8
  %23 = and i64 %21, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %5, align 8
  %27 = call i32 @pxa27x_keypad_scan_matrix(%struct.pxa27x_keypad* %26)
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %29
}

declare dso_local i64 @keypad_readl(i32) #1

declare dso_local i32 @clear_wakeup_event(%struct.pxa27x_keypad*) #1

declare dso_local i32 @pxa27x_keypad_scan_direct(%struct.pxa27x_keypad*) #1

declare dso_local i32 @pxa27x_keypad_scan_matrix(%struct.pxa27x_keypad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
