; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-kcopyd.c_io_job_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-kcopyd.c_io_job_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_kcopyd_throttle = type { i32, i32, i32, i64, i32 }

@throttle_spinlock = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@ACCOUNT_INTERVAL_SHIFT = common dso_local global i32 0, align 4
@MAX_SLEEPS = common dso_local global i32 0, align 4
@SLEEP_MSEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_kcopyd_throttle*)* @io_job_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @io_job_start(%struct.dm_kcopyd_throttle* %0) #0 {
  %2 = alloca %struct.dm_kcopyd_throttle*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dm_kcopyd_throttle* %0, %struct.dm_kcopyd_throttle** %2, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.dm_kcopyd_throttle*, %struct.dm_kcopyd_throttle** %2, align 8
  %10 = icmp ne %struct.dm_kcopyd_throttle* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %131

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %118, %16
  %18 = call i32 @spin_lock_irq(i32* @throttle_spinlock)
  %19 = load %struct.dm_kcopyd_throttle*, %struct.dm_kcopyd_throttle** %2, align 8
  %20 = getelementptr inbounds %struct.dm_kcopyd_throttle, %struct.dm_kcopyd_throttle* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @READ_ONCE(i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp uge i32 %23, 100
  %25 = zext i1 %24 to i32
  %26 = call i64 @likely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %125

29:                                               ; preds = %17
  %30 = load i32, i32* @jiffies, align 4
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.dm_kcopyd_throttle*, %struct.dm_kcopyd_throttle** %2, align 8
  %33 = getelementptr inbounds %struct.dm_kcopyd_throttle, %struct.dm_kcopyd_throttle* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub i32 %31, %34
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.dm_kcopyd_throttle*, %struct.dm_kcopyd_throttle** %2, align 8
  %38 = getelementptr inbounds %struct.dm_kcopyd_throttle, %struct.dm_kcopyd_throttle* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.dm_kcopyd_throttle*, %struct.dm_kcopyd_throttle** %2, align 8
  %40 = getelementptr inbounds %struct.dm_kcopyd_throttle, %struct.dm_kcopyd_throttle* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %29
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.dm_kcopyd_throttle*, %struct.dm_kcopyd_throttle** %2, align 8
  %46 = getelementptr inbounds %struct.dm_kcopyd_throttle, %struct.dm_kcopyd_throttle* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %29
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.dm_kcopyd_throttle*, %struct.dm_kcopyd_throttle** %2, align 8
  %52 = getelementptr inbounds %struct.dm_kcopyd_throttle, %struct.dm_kcopyd_throttle* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = add i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.dm_kcopyd_throttle*, %struct.dm_kcopyd_throttle** %2, align 8
  %56 = getelementptr inbounds %struct.dm_kcopyd_throttle, %struct.dm_kcopyd_throttle* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.dm_kcopyd_throttle*, %struct.dm_kcopyd_throttle** %2, align 8
  %59 = getelementptr inbounds %struct.dm_kcopyd_throttle, %struct.dm_kcopyd_throttle* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp ugt i32 %57, %60
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %49
  %66 = load %struct.dm_kcopyd_throttle*, %struct.dm_kcopyd_throttle** %2, align 8
  %67 = getelementptr inbounds %struct.dm_kcopyd_throttle, %struct.dm_kcopyd_throttle* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.dm_kcopyd_throttle*, %struct.dm_kcopyd_throttle** %2, align 8
  %70 = getelementptr inbounds %struct.dm_kcopyd_throttle, %struct.dm_kcopyd_throttle* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %65, %49
  %72 = load %struct.dm_kcopyd_throttle*, %struct.dm_kcopyd_throttle** %2, align 8
  %73 = getelementptr inbounds %struct.dm_kcopyd_throttle, %struct.dm_kcopyd_throttle* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @ACCOUNT_INTERVAL_SHIFT, align 4
  %76 = shl i32 1, %75
  %77 = icmp uge i32 %74, %76
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %71
  %82 = load %struct.dm_kcopyd_throttle*, %struct.dm_kcopyd_throttle** %2, align 8
  %83 = getelementptr inbounds %struct.dm_kcopyd_throttle, %struct.dm_kcopyd_throttle* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @ACCOUNT_INTERVAL_SHIFT, align 4
  %86 = lshr i32 %84, %85
  %87 = call i32 @fls(i32 %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.dm_kcopyd_throttle*, %struct.dm_kcopyd_throttle** %2, align 8
  %90 = getelementptr inbounds %struct.dm_kcopyd_throttle, %struct.dm_kcopyd_throttle* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = lshr i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.dm_kcopyd_throttle*, %struct.dm_kcopyd_throttle** %2, align 8
  %95 = getelementptr inbounds %struct.dm_kcopyd_throttle, %struct.dm_kcopyd_throttle* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = lshr i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %81, %71
  %99 = load %struct.dm_kcopyd_throttle*, %struct.dm_kcopyd_throttle** %2, align 8
  %100 = getelementptr inbounds %struct.dm_kcopyd_throttle, %struct.dm_kcopyd_throttle* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %3, align 4
  %103 = load %struct.dm_kcopyd_throttle*, %struct.dm_kcopyd_throttle** %2, align 8
  %104 = getelementptr inbounds %struct.dm_kcopyd_throttle, %struct.dm_kcopyd_throttle* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = mul i32 %102, %105
  %107 = udiv i32 %106, 100
  %108 = sub i32 %101, %107
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp sgt i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i64 @unlikely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %98
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @MAX_SLEEPS, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %114
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  %121 = call i32 @spin_unlock_irq(i32* @throttle_spinlock)
  %122 = load i32, i32* @SLEEP_MSEC, align 4
  %123 = call i32 @msleep(i32 %122)
  br label %17

124:                                              ; preds = %114, %98
  br label %125

125:                                              ; preds = %124, %28
  %126 = load %struct.dm_kcopyd_throttle*, %struct.dm_kcopyd_throttle** %2, align 8
  %127 = getelementptr inbounds %struct.dm_kcopyd_throttle, %struct.dm_kcopyd_throttle* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %127, align 8
  %130 = call i32 @spin_unlock_irq(i32* @throttle_spinlock)
  br label %131

131:                                              ; preds = %125, %15
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
