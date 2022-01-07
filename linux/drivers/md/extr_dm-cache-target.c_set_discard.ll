; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_set_discard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_set_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache*, i32)* @set_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_discard(%struct.cache* %0, i32 %1) #0 {
  %3 = alloca %struct.cache*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.cache* %0, %struct.cache** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @from_dblock(i32 %6)
  %8 = load %struct.cache*, %struct.cache** %3, align 8
  %9 = getelementptr inbounds %struct.cache, %struct.cache* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @from_dblock(i32 %10)
  %12 = icmp sge i64 %7, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.cache*, %struct.cache** %3, align 8
  %16 = getelementptr inbounds %struct.cache, %struct.cache* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @atomic_inc(i32* %17)
  %19 = load %struct.cache*, %struct.cache** %3, align 8
  %20 = getelementptr inbounds %struct.cache, %struct.cache* %19, i32 0, i32 0
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @from_dblock(i32 %23)
  %25 = load %struct.cache*, %struct.cache** %3, align 8
  %26 = getelementptr inbounds %struct.cache, %struct.cache* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @set_bit(i64 %24, i32 %27)
  %29 = load %struct.cache*, %struct.cache** %3, align 8
  %30 = getelementptr inbounds %struct.cache, %struct.cache* %29, i32 0, i32 0
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @from_dblock(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
