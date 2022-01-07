; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_altera_ps2.c_altera_ps2_rxint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_altera_ps2.c_altera_ps2_rxint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps2if = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @altera_ps2_rxint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_ps2_rxint(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ps2if*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.ps2if*
  store %struct.ps2if* %9, %struct.ps2if** %5, align 8
  %10 = load i32, i32* @IRQ_NONE, align 4
  store i32 %10, i32* %7, align 4
  br label %11

11:                                               ; preds = %18, %2
  %12 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %13 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @readl(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = and i32 %15, -65536
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %20 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 255
  %24 = call i32 @serio_interrupt(i32 %21, i32 %23, i32 0)
  %25 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %25, i32* %7, align 4
  br label %11

26:                                               ; preds = %11
  %27 = load i32, i32* %7, align 4
  ret i32 %27
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @serio_interrupt(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
