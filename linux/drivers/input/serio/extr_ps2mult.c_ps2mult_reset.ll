; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_ps2mult.c_ps2mult_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_ps2mult.c_ps2mult_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps2mult = type { i32, i32*, i32 }

@PS2MULT_SESSION_END = common dso_local global i32 0, align 4
@PS2MULT_SESSION_START = common dso_local global i32 0, align 4
@PS2MULT_KBD_PORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ps2mult*)* @ps2mult_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps2mult_reset(%struct.ps2mult* %0) #0 {
  %2 = alloca %struct.ps2mult*, align 8
  %3 = alloca i64, align 8
  store %struct.ps2mult* %0, %struct.ps2mult** %2, align 8
  %4 = load %struct.ps2mult*, %struct.ps2mult** %2, align 8
  %5 = getelementptr inbounds %struct.ps2mult, %struct.ps2mult* %4, i32 0, i32 0
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.ps2mult*, %struct.ps2mult** %2, align 8
  %9 = getelementptr inbounds %struct.ps2mult, %struct.ps2mult* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @PS2MULT_SESSION_END, align 4
  %12 = call i32 @serio_write(i32 %10, i32 %11)
  %13 = load %struct.ps2mult*, %struct.ps2mult** %2, align 8
  %14 = getelementptr inbounds %struct.ps2mult, %struct.ps2mult* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @PS2MULT_SESSION_START, align 4
  %17 = call i32 @serio_write(i32 %15, i32 %16)
  %18 = load %struct.ps2mult*, %struct.ps2mult** %2, align 8
  %19 = load %struct.ps2mult*, %struct.ps2mult** %2, align 8
  %20 = getelementptr inbounds %struct.ps2mult, %struct.ps2mult* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @PS2MULT_KBD_PORT, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = call i32 @ps2mult_select_port(%struct.ps2mult* %18, i32* %23)
  %25 = load %struct.ps2mult*, %struct.ps2mult** %2, align 8
  %26 = getelementptr inbounds %struct.ps2mult, %struct.ps2mult* %25, i32 0, i32 0
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @serio_write(i32, i32) #1

declare dso_local i32 @ps2mult_select_port(%struct.ps2mult*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
