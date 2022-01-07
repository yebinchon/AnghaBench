; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_q40kbd.c_q40kbd_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_q40kbd.c_q40kbd_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { %struct.q40kbd* }
%struct.q40kbd = type { i32 }

@KEYBOARD_UNLOCK_REG = common dso_local global i32 0, align 4
@KEY_IRQ_ENABLE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*)* @q40kbd_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q40kbd_open(%struct.serio* %0) #0 {
  %2 = alloca %struct.serio*, align 8
  %3 = alloca %struct.q40kbd*, align 8
  store %struct.serio* %0, %struct.serio** %2, align 8
  %4 = load %struct.serio*, %struct.serio** %2, align 8
  %5 = getelementptr inbounds %struct.serio, %struct.serio* %4, i32 0, i32 0
  %6 = load %struct.q40kbd*, %struct.q40kbd** %5, align 8
  store %struct.q40kbd* %6, %struct.q40kbd** %3, align 8
  %7 = load %struct.q40kbd*, %struct.q40kbd** %3, align 8
  %8 = call i32 @q40kbd_flush(%struct.q40kbd* %7)
  %9 = load i32, i32* @KEYBOARD_UNLOCK_REG, align 4
  %10 = call i32 @master_outb(i32 -1, i32 %9)
  %11 = load i32, i32* @KEY_IRQ_ENABLE_REG, align 4
  %12 = call i32 @master_outb(i32 1, i32 %11)
  ret i32 0
}

declare dso_local i32 @q40kbd_flush(%struct.q40kbd*) #1

declare dso_local i32 @master_outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
