; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_sa1111ps2.c_ps2_txint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_sa1111ps2.c_ps2_txint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps2if = type { i64, i64, i32, i64, i32* }

@PS2STAT = common dso_local global i64 0, align 8
@PS2STAT_TXE = common dso_local global i32 0, align 4
@PS2DATA = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ps2_txint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps2_txint(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ps2if*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ps2if*
  store %struct.ps2if* %8, %struct.ps2if** %5, align 8
  %9 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %10 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %9, i32 0, i32 2
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %13 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PS2STAT, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl_relaxed(i64 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %19 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %22 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @disable_irq_nosync(i32 %26)
  br label %56

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @PS2STAT_TXE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %28
  %34 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %35 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %38 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %43 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PS2DATA, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel_relaxed(i32 %41, i64 %46)
  %48 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %49 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 1
  %52 = and i64 %51, 7
  %53 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %54 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %33, %28
  br label %56

56:                                               ; preds = %55, %25
  %57 = load %struct.ps2if*, %struct.ps2if** %5, align 8
  %58 = getelementptr inbounds %struct.ps2if, %struct.ps2if* %57, i32 0, i32 2
  %59 = call i32 @spin_unlock(i32* %58)
  %60 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %60
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
