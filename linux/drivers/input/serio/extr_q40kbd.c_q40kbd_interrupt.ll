; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_q40kbd.c_q40kbd_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_q40kbd.c_q40kbd_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.q40kbd = type { i32, i32 }

@Q40_IRQ_KEYB_MASK = common dso_local global i32 0, align 4
@INTERRUPT_REG = common dso_local global i32 0, align 4
@KEYCODE_REG = common dso_local global i32 0, align 4
@KEYBOARD_UNLOCK_REG = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @q40kbd_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q40kbd_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.q40kbd*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.q40kbd*
  store %struct.q40kbd* %8, %struct.q40kbd** %5, align 8
  %9 = load %struct.q40kbd*, %struct.q40kbd** %5, align 8
  %10 = getelementptr inbounds %struct.q40kbd, %struct.q40kbd* %9, i32 0, i32 0
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load i32, i32* @Q40_IRQ_KEYB_MASK, align 4
  %14 = load i32, i32* @INTERRUPT_REG, align 4
  %15 = call i32 @master_inb(i32 %14)
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.q40kbd*, %struct.q40kbd** %5, align 8
  %20 = getelementptr inbounds %struct.q40kbd, %struct.q40kbd* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @KEYCODE_REG, align 4
  %23 = call i32 @master_inb(i32 %22)
  %24 = call i32 @serio_interrupt(i32 %21, i32 %23, i32 0)
  br label %25

25:                                               ; preds = %18, %2
  %26 = load i32, i32* @KEYBOARD_UNLOCK_REG, align 4
  %27 = call i32 @master_outb(i32 -1, i32 %26)
  %28 = load %struct.q40kbd*, %struct.q40kbd** %5, align 8
  %29 = getelementptr inbounds %struct.q40kbd, %struct.q40kbd* %28, i32 0, i32 0
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %32
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @master_inb(i32) #1

declare dso_local i32 @serio_interrupt(i32, i32, i32) #1

declare dso_local i32 @master_outb(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
