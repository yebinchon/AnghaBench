; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-pmu.c_pmu_fpoll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_via-pmu.c_pmu_fpoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.pmu_private* }
%struct.pmu_private = type { i64, i64, i32, i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @pmu_fpoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmu_fpoll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.pmu_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.pmu_private*, %struct.pmu_private** %10, align 8
  store %struct.pmu_private* %11, %struct.pmu_private** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.pmu_private*, %struct.pmu_private** %6, align 8
  %13 = icmp ne %struct.pmu_private* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

15:                                               ; preds = %2
  %16 = load %struct.file*, %struct.file** %4, align 8
  %17 = load %struct.pmu_private*, %struct.pmu_private** %6, align 8
  %18 = getelementptr inbounds %struct.pmu_private, %struct.pmu_private* %17, i32 0, i32 3
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @poll_wait(%struct.file* %16, i32* %18, i32* %19)
  %21 = load %struct.pmu_private*, %struct.pmu_private** %6, align 8
  %22 = getelementptr inbounds %struct.pmu_private, %struct.pmu_private* %21, i32 0, i32 2
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.pmu_private*, %struct.pmu_private** %6, align 8
  %26 = getelementptr inbounds %struct.pmu_private, %struct.pmu_private* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.pmu_private*, %struct.pmu_private** %6, align 8
  %29 = getelementptr inbounds %struct.pmu_private, %struct.pmu_private* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %15
  %33 = load i32, i32* @EPOLLIN, align 4
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %32, %15
  %37 = load %struct.pmu_private*, %struct.pmu_private** %6, align 8
  %38 = getelementptr inbounds %struct.pmu_private, %struct.pmu_private* %37, i32 0, i32 2
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %36, %14
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
