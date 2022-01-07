; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_mce_amd.c_cat_mc1_mce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_mce_amd.c_cat_mc1_mce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TT_INSTR = common dso_local global i64 0, align 8
@R4_IRD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Data/tag array parity error for a tag hit.\0A\00", align 1
@R4_SNOOP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Tag error during snoop/victimization.\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Tag parity error from victim castout.\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Microcode patch RAM parity error.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @cat_mc1_mce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cat_mc1_mce(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @R4(i32 %8)
  store i64 %9, i64* %6, align 8
  store i32 1, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @MEM_ERROR(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @TT(i32 %15)
  %17 = load i64, i64* @TT_INSTR, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %48

20:                                               ; preds = %14
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @R4_IRD, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @pr_cont(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %46

26:                                               ; preds = %20
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @R4_SNOOP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 @pr_cont(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %45

32:                                               ; preds = %26
  %33 = load i64, i64* %5, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 @pr_cont(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %44

37:                                               ; preds = %32
  %38 = load i64, i64* %5, align 8
  %39 = icmp eq i64 %38, 2
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @pr_cont(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %43

42:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %42, %40
  br label %44

44:                                               ; preds = %43, %35
  br label %45

45:                                               ; preds = %44, %30
  br label %46

46:                                               ; preds = %45, %24
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %19, %13
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @R4(i32) #1

declare dso_local i32 @MEM_ERROR(i32) #1

declare dso_local i64 @TT(i32) #1

declare dso_local i32 @pr_cont(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
