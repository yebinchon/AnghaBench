; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_selftest.c_apply_subtest_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_selftest.c_apply_subtest_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__st_filter = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @apply_subtest_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_subtest_filter(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 1, i32* %8, align 4
  %11 = load i32, i32* @__st_filter, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kstrdup(i32 %11, i32 %12)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %6, align 8
  br label %15

15:                                               ; preds = %60, %48, %31, %2
  %16 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %63

18:                                               ; preds = %15
  store i32 1, i32* %9, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 33
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %7, align 8
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i8*, i8** %7, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %15

32:                                               ; preds = %26
  %33 = load i8*, i8** %7, align 8
  %34 = call i8* @strchr(i8* %33, i8 signext 47)
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %10, align 8
  store i8 0, i8* %38, align 1
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = call i64 @strcmp(i8* %40, i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %47, %44
  br label %15

49:                                               ; preds = %37
  %50 = load i8*, i8** %10, align 8
  store i8* %50, i8** %7, align 8
  br label %51

51:                                               ; preds = %49, %32
  %52 = load i8*, i8** %7, align 8
  %53 = load i8*, i8** %4, align 8
  %54 = call i64 @strcmp(i8* %52, i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %59, %56
  br label %15

61:                                               ; preds = %51
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %61, %15
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @kfree(i8* %64)
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

declare dso_local i8* @kstrdup(i32, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
