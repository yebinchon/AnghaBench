; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/occ/extr_common.c_occ_update_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/occ/extr_common.c_occ_update_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.occ = type { i32, i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@OCC_UPDATE_FREQUENCY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @occ_update_response(%struct.occ* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.occ*, align 8
  %4 = alloca i32, align 4
  store %struct.occ* %0, %struct.occ** %3, align 8
  %5 = load %struct.occ*, %struct.occ** %3, align 8
  %6 = getelementptr inbounds %struct.occ, %struct.occ* %5, i32 0, i32 1
  %7 = call i32 @mutex_lock_interruptible(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %36

12:                                               ; preds = %1
  %13 = load i64, i64* @jiffies, align 8
  %14 = load %struct.occ*, %struct.occ** %3, align 8
  %15 = getelementptr inbounds %struct.occ, %struct.occ* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @OCC_UPDATE_FREQUENCY, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i64 @time_after(i64 %13, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %12
  %22 = load %struct.occ*, %struct.occ** %3, align 8
  %23 = call i32 @occ_poll(%struct.occ* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i64, i64* @jiffies, align 8
  %25 = load %struct.occ*, %struct.occ** %3, align 8
  %26 = getelementptr inbounds %struct.occ, %struct.occ* %25, i32 0, i32 2
  store i64 %24, i64* %26, align 8
  br label %31

27:                                               ; preds = %12
  %28 = load %struct.occ*, %struct.occ** %3, align 8
  %29 = getelementptr inbounds %struct.occ, %struct.occ* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %27, %21
  %32 = load %struct.occ*, %struct.occ** %3, align 8
  %33 = getelementptr inbounds %struct.occ, %struct.occ* %32, i32 0, i32 1
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %31, %10
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @occ_poll(%struct.occ*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
