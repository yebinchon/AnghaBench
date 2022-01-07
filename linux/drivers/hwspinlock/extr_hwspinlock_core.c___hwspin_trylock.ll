; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwspinlock/extr_hwspinlock_core.c___hwspin_trylock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwspinlock/extr_hwspinlock_core.c___hwspin_trylock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwspinlock = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.hwspinlock*)* }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__hwspin_trylock(%struct.hwspinlock* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hwspinlock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.hwspinlock* %0, %struct.hwspinlock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %9 = load %struct.hwspinlock*, %struct.hwspinlock** %5, align 8
  %10 = icmp ne %struct.hwspinlock* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load i64*, i64** %7, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 129
  br label %19

19:                                               ; preds = %16, %3
  %20 = phi i1 [ false, %3 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %35 [
    i32 129, label %24
    i32 130, label %30
    i32 128, label %34
    i32 131, label %34
  ]

24:                                               ; preds = %19
  %25 = load %struct.hwspinlock*, %struct.hwspinlock** %5, align 8
  %26 = getelementptr inbounds %struct.hwspinlock, %struct.hwspinlock* %25, i32 0, i32 0
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @spin_trylock_irqsave(i32* %26, i64 %28)
  store i32 %29, i32* %8, align 4
  br label %39

30:                                               ; preds = %19
  %31 = load %struct.hwspinlock*, %struct.hwspinlock** %5, align 8
  %32 = getelementptr inbounds %struct.hwspinlock, %struct.hwspinlock* %31, i32 0, i32 0
  %33 = call i32 @spin_trylock_irq(i32* %32)
  store i32 %33, i32* %8, align 4
  br label %39

34:                                               ; preds = %19, %19
  store i32 1, i32* %8, align 4
  br label %39

35:                                               ; preds = %19
  %36 = load %struct.hwspinlock*, %struct.hwspinlock** %5, align 8
  %37 = getelementptr inbounds %struct.hwspinlock, %struct.hwspinlock* %36, i32 0, i32 0
  %38 = call i32 @spin_trylock(i32* %37)
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %35, %34, %30, %24
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %79

45:                                               ; preds = %39
  %46 = load %struct.hwspinlock*, %struct.hwspinlock** %5, align 8
  %47 = getelementptr inbounds %struct.hwspinlock, %struct.hwspinlock* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32 (%struct.hwspinlock*)*, i32 (%struct.hwspinlock*)** %51, align 8
  %53 = load %struct.hwspinlock*, %struct.hwspinlock** %5, align 8
  %54 = call i32 %52(%struct.hwspinlock* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %77, label %57

57:                                               ; preds = %45
  %58 = load i32, i32* %6, align 4
  switch i32 %58, label %70 [
    i32 129, label %59
    i32 130, label %65
    i32 128, label %69
    i32 131, label %69
  ]

59:                                               ; preds = %57
  %60 = load %struct.hwspinlock*, %struct.hwspinlock** %5, align 8
  %61 = getelementptr inbounds %struct.hwspinlock, %struct.hwspinlock* %60, i32 0, i32 0
  %62 = load i64*, i64** %7, align 8
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %63)
  br label %74

65:                                               ; preds = %57
  %66 = load %struct.hwspinlock*, %struct.hwspinlock** %5, align 8
  %67 = getelementptr inbounds %struct.hwspinlock, %struct.hwspinlock* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock_irq(i32* %67)
  br label %74

69:                                               ; preds = %57, %57
  br label %74

70:                                               ; preds = %57
  %71 = load %struct.hwspinlock*, %struct.hwspinlock** %5, align 8
  %72 = getelementptr inbounds %struct.hwspinlock, %struct.hwspinlock* %71, i32 0, i32 0
  %73 = call i32 @spin_unlock(i32* %72)
  br label %74

74:                                               ; preds = %70, %69, %65, %59
  %75 = load i32, i32* @EBUSY, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %79

77:                                               ; preds = %45
  %78 = call i32 (...) @mb()
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %74, %42
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_trylock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_trylock_irq(i32*) #1

declare dso_local i32 @spin_trylock(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
