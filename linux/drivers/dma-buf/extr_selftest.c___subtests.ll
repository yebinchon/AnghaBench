; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_selftest.c___subtests.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_selftest.c___subtests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subtest = type { i32 (i8*)*, i32 }

@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"dma-buf: Running %s/%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"dma-buf/%s: %s failed with error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__subtests(i8* %0, %struct.subtest* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.subtest*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.subtest* %1, %struct.subtest** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  br label %11

11:                                               ; preds = %58, %4
  %12 = load i32, i32* %8, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %8, align 4
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %15, label %61

15:                                               ; preds = %11
  %16 = call i32 (...) @cond_resched()
  %17 = load i32, i32* @current, align 4
  %18 = call i64 @signal_pending(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EINTR, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %62

23:                                               ; preds = %15
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.subtest*, %struct.subtest** %7, align 8
  %26 = getelementptr inbounds %struct.subtest, %struct.subtest* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @apply_subtest_filter(i8* %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %58

31:                                               ; preds = %23
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.subtest*, %struct.subtest** %7, align 8
  %34 = getelementptr inbounds %struct.subtest, %struct.subtest* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %35)
  %37 = load %struct.subtest*, %struct.subtest** %7, align 8
  %38 = getelementptr inbounds %struct.subtest, %struct.subtest* %37, i32 0, i32 0
  %39 = load i32 (i8*)*, i32 (i8*)** %38, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 %39(i8* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %31
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @EINTR, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load i8*, i8** %6, align 8
  %51 = load %struct.subtest*, %struct.subtest** %7, align 8
  %52 = getelementptr inbounds %struct.subtest, %struct.subtest* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %50, i32 %53, i32 %54)
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %5, align 4
  br label %62

57:                                               ; preds = %44, %31
  br label %58

58:                                               ; preds = %57, %30
  %59 = load %struct.subtest*, %struct.subtest** %7, align 8
  %60 = getelementptr inbounds %struct.subtest, %struct.subtest* %59, i32 1
  store %struct.subtest* %60, %struct.subtest** %7, align 8
  br label %11

61:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %49, %20
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @apply_subtest_filter(i8*, i32) #1

declare dso_local i32 @pr_info(i8*, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
