; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_md.c_mddev_congested.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_md.c_mddev_congested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mddev = type { i64, %struct.md_personality* }
%struct.md_personality = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mddev_congested(%struct.mddev* %0, i32 %1) #0 {
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.md_personality*, align 8
  %6 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mddev*, %struct.mddev** %3, align 8
  %8 = getelementptr inbounds %struct.mddev, %struct.mddev* %7, i32 0, i32 1
  %9 = load %struct.md_personality*, %struct.md_personality** %8, align 8
  store %struct.md_personality* %9, %struct.md_personality** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load %struct.mddev*, %struct.mddev** %3, align 8
  %12 = getelementptr inbounds %struct.mddev, %struct.mddev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %34

16:                                               ; preds = %2
  %17 = load %struct.md_personality*, %struct.md_personality** %5, align 8
  %18 = icmp ne %struct.md_personality* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %16
  %20 = load %struct.md_personality*, %struct.md_personality** %5, align 8
  %21 = getelementptr inbounds %struct.md_personality, %struct.md_personality* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.mddev*, i32)**
  %23 = load i32 (%struct.mddev*, i32)*, i32 (%struct.mddev*, i32)** %22, align 8
  %24 = icmp ne i32 (%struct.mddev*, i32)* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load %struct.md_personality*, %struct.md_personality** %5, align 8
  %27 = getelementptr inbounds %struct.md_personality, %struct.md_personality* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.mddev*, i32)**
  %29 = load i32 (%struct.mddev*, i32)*, i32 (%struct.mddev*, i32)** %28, align 8
  %30 = load %struct.mddev*, %struct.mddev** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 %29(%struct.mddev* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %25, %19, %16
  br label %34

34:                                               ; preds = %33, %15
  %35 = call i32 (...) @rcu_read_unlock()
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
