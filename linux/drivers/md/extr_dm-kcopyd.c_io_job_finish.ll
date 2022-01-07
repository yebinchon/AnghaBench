; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-kcopyd.c_io_job_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-kcopyd.c_io_job_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_kcopyd_throttle = type { i32, i64, i64, i32, i32 }

@throttle_spinlock = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_kcopyd_throttle*)* @io_job_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_job_finish(%struct.dm_kcopyd_throttle* %0) #0 {
  %2 = alloca %struct.dm_kcopyd_throttle*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dm_kcopyd_throttle* %0, %struct.dm_kcopyd_throttle** %2, align 8
  %6 = load %struct.dm_kcopyd_throttle*, %struct.dm_kcopyd_throttle** %2, align 8
  %7 = icmp ne %struct.dm_kcopyd_throttle* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %77

13:                                               ; preds = %1
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @spin_lock_irqsave(i32* @throttle_spinlock, i64 %14)
  %16 = load %struct.dm_kcopyd_throttle*, %struct.dm_kcopyd_throttle** %2, align 8
  %17 = getelementptr inbounds %struct.dm_kcopyd_throttle, %struct.dm_kcopyd_throttle* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 8
  %20 = load %struct.dm_kcopyd_throttle*, %struct.dm_kcopyd_throttle** %2, align 8
  %21 = getelementptr inbounds %struct.dm_kcopyd_throttle, %struct.dm_kcopyd_throttle* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @READ_ONCE(i32 %22)
  %24 = icmp sge i32 %23, 100
  %25 = zext i1 %24 to i32
  %26 = call i64 @likely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %13
  br label %74

29:                                               ; preds = %13
  %30 = load %struct.dm_kcopyd_throttle*, %struct.dm_kcopyd_throttle** %2, align 8
  %31 = getelementptr inbounds %struct.dm_kcopyd_throttle, %struct.dm_kcopyd_throttle* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %73, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @jiffies, align 4
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.dm_kcopyd_throttle*, %struct.dm_kcopyd_throttle** %2, align 8
  %38 = getelementptr inbounds %struct.dm_kcopyd_throttle, %struct.dm_kcopyd_throttle* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub i32 %36, %39
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.dm_kcopyd_throttle*, %struct.dm_kcopyd_throttle** %2, align 8
  %43 = getelementptr inbounds %struct.dm_kcopyd_throttle, %struct.dm_kcopyd_throttle* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = load %struct.dm_kcopyd_throttle*, %struct.dm_kcopyd_throttle** %2, align 8
  %47 = getelementptr inbounds %struct.dm_kcopyd_throttle, %struct.dm_kcopyd_throttle* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, %45
  store i64 %49, i64* %47, align 8
  %50 = load i32, i32* %5, align 4
  %51 = zext i32 %50 to i64
  %52 = load %struct.dm_kcopyd_throttle*, %struct.dm_kcopyd_throttle** %2, align 8
  %53 = getelementptr inbounds %struct.dm_kcopyd_throttle, %struct.dm_kcopyd_throttle* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, %51
  store i64 %55, i64* %53, align 8
  %56 = load %struct.dm_kcopyd_throttle*, %struct.dm_kcopyd_throttle** %2, align 8
  %57 = getelementptr inbounds %struct.dm_kcopyd_throttle, %struct.dm_kcopyd_throttle* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.dm_kcopyd_throttle*, %struct.dm_kcopyd_throttle** %2, align 8
  %60 = getelementptr inbounds %struct.dm_kcopyd_throttle, %struct.dm_kcopyd_throttle* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %58, %61
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %34
  %67 = load %struct.dm_kcopyd_throttle*, %struct.dm_kcopyd_throttle** %2, align 8
  %68 = getelementptr inbounds %struct.dm_kcopyd_throttle, %struct.dm_kcopyd_throttle* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.dm_kcopyd_throttle*, %struct.dm_kcopyd_throttle** %2, align 8
  %71 = getelementptr inbounds %struct.dm_kcopyd_throttle, %struct.dm_kcopyd_throttle* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %66, %34
  br label %73

73:                                               ; preds = %72, %29
  br label %74

74:                                               ; preds = %73, %28
  %75 = load i64, i64* %3, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* @throttle_spinlock, i64 %75)
  br label %77

77:                                               ; preds = %74, %12
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
