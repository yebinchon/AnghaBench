; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-sa11x0.c_sa1100irq_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-sa11x0.c_sa1100irq_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1100irq_state = type { i32, i32, i32, i64 }

@sa1100irq_state = common dso_local global %struct.sa1100irq_state zeroinitializer, align 8
@iobase = common dso_local global i64 0, align 8
@ICCR = common dso_local global i64 0, align 8
@ICLR = common dso_local global i64 0, align 8
@ICMR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sa1100irq_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sa1100irq_resume() #0 {
  %1 = alloca %struct.sa1100irq_state*, align 8
  store %struct.sa1100irq_state* @sa1100irq_state, %struct.sa1100irq_state** %1, align 8
  %2 = load %struct.sa1100irq_state*, %struct.sa1100irq_state** %1, align 8
  %3 = getelementptr inbounds %struct.sa1100irq_state, %struct.sa1100irq_state* %2, i32 0, i32 3
  %4 = load i64, i64* %3, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %0
  %7 = load %struct.sa1100irq_state*, %struct.sa1100irq_state** %1, align 8
  %8 = getelementptr inbounds %struct.sa1100irq_state, %struct.sa1100irq_state* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load i64, i64* @iobase, align 8
  %11 = load i64, i64* @ICCR, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel_relaxed(i32 %9, i64 %12)
  %14 = load %struct.sa1100irq_state*, %struct.sa1100irq_state** %1, align 8
  %15 = getelementptr inbounds %struct.sa1100irq_state, %struct.sa1100irq_state* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* @iobase, align 8
  %18 = load i64, i64* @ICLR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel_relaxed(i32 %16, i64 %19)
  %21 = load %struct.sa1100irq_state*, %struct.sa1100irq_state** %1, align 8
  %22 = getelementptr inbounds %struct.sa1100irq_state, %struct.sa1100irq_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* @iobase, align 8
  %25 = load i64, i64* @ICMR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel_relaxed(i32 %23, i64 %26)
  br label %28

28:                                               ; preds = %6, %0
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
