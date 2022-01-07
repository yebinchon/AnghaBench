; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwspinlock/extr_hwspinlock_core.c___hwspin_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwspinlock/extr_hwspinlock_core.c___hwspin_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwspinlock = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.hwspinlock*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__hwspin_unlock(%struct.hwspinlock* %0, i32 %1, i64* %2) #0 {
  %4 = alloca %struct.hwspinlock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  store %struct.hwspinlock* %0, %struct.hwspinlock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %7 = load %struct.hwspinlock*, %struct.hwspinlock** %4, align 8
  %8 = icmp ne %struct.hwspinlock* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load i64*, i64** %6, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 129
  br label %17

17:                                               ; preds = %14, %3
  %18 = phi i1 [ false, %3 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = call i32 (...) @mb()
  %22 = load %struct.hwspinlock*, %struct.hwspinlock** %4, align 8
  %23 = getelementptr inbounds %struct.hwspinlock, %struct.hwspinlock* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.hwspinlock*)*, i32 (%struct.hwspinlock*)** %27, align 8
  %29 = load %struct.hwspinlock*, %struct.hwspinlock** %4, align 8
  %30 = call i32 %28(%struct.hwspinlock* %29)
  %31 = load i32, i32* %5, align 4
  switch i32 %31, label %43 [
    i32 129, label %32
    i32 130, label %38
    i32 128, label %42
    i32 131, label %42
  ]

32:                                               ; preds = %17
  %33 = load %struct.hwspinlock*, %struct.hwspinlock** %4, align 8
  %34 = getelementptr inbounds %struct.hwspinlock, %struct.hwspinlock* %33, i32 0, i32 0
  %35 = load i64*, i64** %6, align 8
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %36)
  br label %47

38:                                               ; preds = %17
  %39 = load %struct.hwspinlock*, %struct.hwspinlock** %4, align 8
  %40 = getelementptr inbounds %struct.hwspinlock, %struct.hwspinlock* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock_irq(i32* %40)
  br label %47

42:                                               ; preds = %17, %17
  br label %47

43:                                               ; preds = %17
  %44 = load %struct.hwspinlock*, %struct.hwspinlock** %4, align 8
  %45 = getelementptr inbounds %struct.hwspinlock, %struct.hwspinlock* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock(i32* %45)
  br label %47

47:                                               ; preds = %43, %42, %38, %32
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
