; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_throttle_work_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_throttle_work_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throttle = type { i32, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.throttle*)* @throttle_work_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @throttle_work_update(%struct.throttle* %0) #0 {
  %2 = alloca %struct.throttle*, align 8
  store %struct.throttle* %0, %struct.throttle** %2, align 8
  %3 = load %struct.throttle*, %struct.throttle** %2, align 8
  %4 = getelementptr inbounds %struct.throttle, %struct.throttle* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* @jiffies, align 8
  %9 = load %struct.throttle*, %struct.throttle** %2, align 8
  %10 = getelementptr inbounds %struct.throttle, %struct.throttle* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %8, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = load %struct.throttle*, %struct.throttle** %2, align 8
  %15 = getelementptr inbounds %struct.throttle, %struct.throttle* %14, i32 0, i32 2
  %16 = call i32 @down_write(i32* %15)
  %17 = load %struct.throttle*, %struct.throttle** %2, align 8
  %18 = getelementptr inbounds %struct.throttle, %struct.throttle* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  br label %19

19:                                               ; preds = %13, %7, %1
  ret void
}

declare dso_local i32 @down_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
