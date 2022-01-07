; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_coh901318.c_enable_powersave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_coh901318.c_enable_powersave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coh901318_chan = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.powersave }
%struct.powersave = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coh901318_chan*)* @enable_powersave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_powersave(%struct.coh901318_chan* %0) #0 {
  %2 = alloca %struct.coh901318_chan*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.powersave*, align 8
  store %struct.coh901318_chan* %0, %struct.coh901318_chan** %2, align 8
  %5 = load %struct.coh901318_chan*, %struct.coh901318_chan** %2, align 8
  %6 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.powersave* %8, %struct.powersave** %4, align 8
  %9 = load %struct.powersave*, %struct.powersave** %4, align 8
  %10 = getelementptr inbounds %struct.powersave, %struct.powersave* %9, i32 0, i32 1
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.coh901318_chan*, %struct.coh901318_chan** %2, align 8
  %14 = getelementptr inbounds %struct.coh901318_chan, %struct.coh901318_chan* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = shl i64 1, %15
  %17 = xor i64 %16, -1
  %18 = load %struct.powersave*, %struct.powersave** %4, align 8
  %19 = getelementptr inbounds %struct.powersave, %struct.powersave* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = and i64 %20, %17
  store i64 %21, i64* %19, align 8
  %22 = load %struct.powersave*, %struct.powersave** %4, align 8
  %23 = getelementptr inbounds %struct.powersave, %struct.powersave* %22, i32 0, i32 1
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
