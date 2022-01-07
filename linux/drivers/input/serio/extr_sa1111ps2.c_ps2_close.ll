; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_sa1111ps2.c_ps2_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_sa1111ps2.c_ps2_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { %struct.ps2if* }
%struct.ps2if = type { i32, i32, i32, i64, i64 }

@PS2CR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.serio*)* @ps2_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps2_close(%struct.serio* %0) #0 {
  %2 = alloca %struct.serio*, align 8
  %3 = alloca %struct.ps2if*, align 8
  store %struct.serio* %0, %struct.serio** %2, align 8
  %4 = load %struct.serio*, %struct.serio** %2, align 8
  %5 = getelementptr inbounds %struct.serio, %struct.serio* %4, i32 0, i32 0
  %6 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  store %struct.ps2if* %6, %struct.ps2if** %3, align 8
  %7 = load %struct.ps2if*, %struct.ps2if** %3, align 8
  %8 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PS2CR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel_relaxed(i32 0, i64 %11)
  %13 = load %struct.ps2if*, %struct.ps2if** %3, align 8
  %14 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @disable_irq_wake(i32 %15)
  %17 = load %struct.ps2if*, %struct.ps2if** %3, align 8
  %18 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.ps2if*, %struct.ps2if** %3, align 8
  %20 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ps2if*, %struct.ps2if** %3, align 8
  %23 = call i32 @free_irq(i32 %21, %struct.ps2if* %22)
  %24 = load %struct.ps2if*, %struct.ps2if** %3, align 8
  %25 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ps2if*, %struct.ps2if** %3, align 8
  %28 = call i32 @free_irq(i32 %26, %struct.ps2if* %27)
  %29 = load %struct.ps2if*, %struct.ps2if** %3, align 8
  %30 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @sa1111_disable_device(i32 %31)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @disable_irq_wake(i32) #1

declare dso_local i32 @free_irq(i32, %struct.ps2if*) #1

declare dso_local i32 @sa1111_disable_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
