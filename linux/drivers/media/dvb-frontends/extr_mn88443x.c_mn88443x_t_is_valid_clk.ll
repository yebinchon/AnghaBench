; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mn88443x.c_mn88443x_t_is_valid_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mn88443x.c_mn88443x_t_is_valid_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIRECT_IF_57MHZ = common dso_local global i64 0, align 8
@CLK_DIRECT = common dso_local global i64 0, align 8
@CLK_MAX = common dso_local global i64 0, align 8
@DIRECT_IF_44MHZ = common dso_local global i64 0, align 8
@LOW_IF_4MHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @mn88443x_t_is_valid_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mn88443x_t_is_valid_clk(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @DIRECT_IF_57MHZ, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @CLK_DIRECT, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i64, i64* %4, align 8
  %15 = icmp sle i64 %14, 21000000
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %60

17:                                               ; preds = %13, %9
  %18 = load i64, i64* %4, align 8
  %19 = icmp sge i64 %18, 25300000
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @CLK_MAX, align 8
  %23 = icmp sle i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %60

25:                                               ; preds = %20, %17
  br label %59

26:                                               ; preds = %2
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @DIRECT_IF_44MHZ, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i64, i64* %4, align 8
  %32 = icmp sge i64 %31, 25000000
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @CLK_MAX, align 8
  %36 = icmp sle i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %60

38:                                               ; preds = %33, %30
  br label %58

39:                                               ; preds = %26
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @LOW_IF_4MHZ, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @DIRECT_IF_44MHZ, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @CLK_DIRECT, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* @CLK_MAX, align 8
  %54 = icmp sle i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %60

56:                                               ; preds = %51, %47
  br label %57

57:                                               ; preds = %56, %43, %39
  br label %58

58:                                               ; preds = %57, %38
  br label %59

59:                                               ; preds = %58, %25
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %55, %37, %24, %16
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
