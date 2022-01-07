; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwspinlock/extr_hwspinlock_core.c_hwspin_lock_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwspinlock/extr_hwspinlock_core.c_hwspin_lock_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwspinlock_device = type { i32, i64, %struct.hwspinlock* }
%struct.hwspinlock = type { i32 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hwspin_lock_unregister(%struct.hwspinlock_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hwspinlock_device*, align 8
  %4 = alloca %struct.hwspinlock*, align 8
  %5 = alloca %struct.hwspinlock*, align 8
  %6 = alloca i32, align 4
  store %struct.hwspinlock_device* %0, %struct.hwspinlock_device** %3, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %38, %1
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.hwspinlock_device*, %struct.hwspinlock_device** %3, align 8
  %10 = getelementptr inbounds %struct.hwspinlock_device, %struct.hwspinlock_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %7
  %14 = load %struct.hwspinlock_device*, %struct.hwspinlock_device** %3, align 8
  %15 = getelementptr inbounds %struct.hwspinlock_device, %struct.hwspinlock_device* %14, i32 0, i32 2
  %16 = load %struct.hwspinlock*, %struct.hwspinlock** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.hwspinlock, %struct.hwspinlock* %16, i64 %18
  store %struct.hwspinlock* %19, %struct.hwspinlock** %4, align 8
  %20 = load %struct.hwspinlock_device*, %struct.hwspinlock_device** %3, align 8
  %21 = getelementptr inbounds %struct.hwspinlock_device, %struct.hwspinlock_device* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = call %struct.hwspinlock* @hwspin_lock_unregister_single(i64 %25)
  store %struct.hwspinlock* %26, %struct.hwspinlock** %5, align 8
  %27 = load %struct.hwspinlock*, %struct.hwspinlock** %5, align 8
  %28 = icmp ne %struct.hwspinlock* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %13
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %42

32:                                               ; preds = %13
  %33 = load %struct.hwspinlock*, %struct.hwspinlock** %5, align 8
  %34 = load %struct.hwspinlock*, %struct.hwspinlock** %4, align 8
  %35 = icmp ne %struct.hwspinlock* %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @WARN_ON(i32 %36)
  br label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %7

41:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %29
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.hwspinlock* @hwspin_lock_unregister_single(i64) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
