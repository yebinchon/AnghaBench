; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_selftest.c_run_selftests.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_selftest.c_run_selftests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.selftest = type { i32 (...)*, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"dma-buf: Running %s\0A\00", align 1
@ENOTTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"%s returned %d, conflicting with selftest's magic values!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.selftest*, i64)* @run_selftests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_selftests(%struct.selftest* %0, i64 %1) #0 {
  %3 = alloca %struct.selftest*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.selftest* %0, %struct.selftest** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.selftest*, %struct.selftest** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @set_default_test_all(%struct.selftest* %6, i64 %7)
  br label %9

9:                                                ; preds = %32, %2
  %10 = load i64, i64* %4, align 8
  %11 = add i64 %10, -1
  store i64 %11, i64* %4, align 8
  %12 = icmp ne i64 %10, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %9
  %14 = load %struct.selftest*, %struct.selftest** %3, align 8
  %15 = getelementptr inbounds %struct.selftest, %struct.selftest* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %32

19:                                               ; preds = %13
  %20 = load %struct.selftest*, %struct.selftest** %3, align 8
  %21 = getelementptr inbounds %struct.selftest, %struct.selftest* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.selftest*, %struct.selftest** %3, align 8
  %25 = getelementptr inbounds %struct.selftest, %struct.selftest* %24, i32 0, i32 0
  %26 = load i32 (...)*, i32 (...)** %25, align 8
  %27 = call i32 (...) %26()
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %35

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %18
  %33 = load %struct.selftest*, %struct.selftest** %3, align 8
  %34 = getelementptr inbounds %struct.selftest, %struct.selftest* %33, i32 1
  store %struct.selftest* %34, %struct.selftest** %3, align 8
  br label %9

35:                                               ; preds = %30, %9
  %36 = load i32, i32* %5, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @ENOTTY, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  br label %43

43:                                               ; preds = %38, %35
  %44 = phi i1 [ true, %35 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  %46 = load %struct.selftest*, %struct.selftest** %3, align 8
  %47 = getelementptr inbounds %struct.selftest, %struct.selftest* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @WARN(i32 %45, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store i32 -1, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %43
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @set_default_test_all(%struct.selftest*, i64) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i64 @WARN(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
