; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwspinlock/extr_hwspinlock_core.c___hwspin_lock_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwspinlock/extr_hwspinlock_core.c___hwspin_lock_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwspinlock = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.hwspinlock*)* }

@jiffies = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@HWLOCK_IN_ATOMIC = common dso_local global i32 0, align 4
@HWSPINLOCK_RETRY_DELAY_US = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__hwspin_lock_timeout(%struct.hwspinlock* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hwspinlock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.hwspinlock* %0, %struct.hwspinlock** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @msecs_to_jiffies(i32 %13)
  %15 = load i64, i64* @jiffies, align 8
  %16 = add i64 %14, %15
  store i64 %16, i64* %11, align 8
  br label %17

17:                                               ; preds = %73, %4
  %18 = load %struct.hwspinlock*, %struct.hwspinlock** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i64*, i64** %9, align 8
  %21 = call i32 @__hwspin_trylock(%struct.hwspinlock* %18, i32 %19, i64* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %74

27:                                               ; preds = %17
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @HWLOCK_IN_ATOMIC, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %27
  %32 = load i64, i64* @HWSPINLOCK_RETRY_DELAY_US, align 8
  %33 = call i32 @udelay(i64 %32)
  %34 = load i64, i64* @HWSPINLOCK_RETRY_DELAY_US, align 8
  %35 = load i64, i64* %12, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i32, i32* %7, align 4
  %39 = mul i32 %38, 1000
  %40 = zext i32 %39 to i64
  %41 = icmp ugt i64 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i32, i32* @ETIMEDOUT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %76

45:                                               ; preds = %31
  br label %54

46:                                               ; preds = %27
  %47 = load i64, i64* %11, align 8
  %48 = call i64 @time_is_before_eq_jiffies(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @ETIMEDOUT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %76

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53, %45
  %55 = load %struct.hwspinlock*, %struct.hwspinlock** %6, align 8
  %56 = getelementptr inbounds %struct.hwspinlock, %struct.hwspinlock* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32 (%struct.hwspinlock*)*, i32 (%struct.hwspinlock*)** %60, align 8
  %62 = icmp ne i32 (%struct.hwspinlock*)* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %54
  %64 = load %struct.hwspinlock*, %struct.hwspinlock** %6, align 8
  %65 = getelementptr inbounds %struct.hwspinlock, %struct.hwspinlock* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32 (%struct.hwspinlock*)*, i32 (%struct.hwspinlock*)** %69, align 8
  %71 = load %struct.hwspinlock*, %struct.hwspinlock** %6, align 8
  %72 = call i32 %70(%struct.hwspinlock* %71)
  br label %73

73:                                               ; preds = %63, %54
  br label %17

74:                                               ; preds = %26
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %74, %50, %42
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @__hwspin_trylock(%struct.hwspinlock*, i32, i64*) #1

declare dso_local i32 @udelay(i64) #1

declare dso_local i64 @time_is_before_eq_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
