; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_fiji_smumgr.c_fiji_get_mclk_frequency_ratio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_fiji_smumgr.c_fiji_get_mclk_frequency_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fiji_get_mclk_frequency_ratio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiji_get_mclk_frequency_ratio(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sle i32 %4, 10000
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %8, 15000
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %64

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = icmp sle i32 %12, 20000
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 2, i32* %2, align 4
  br label %64

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = icmp sle i32 %16, 25000
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 3, i32* %2, align 4
  br label %64

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = icmp sle i32 %20, 30000
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 4, i32* %2, align 4
  br label %64

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = icmp sle i32 %24, 35000
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 5, i32* %2, align 4
  br label %64

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = icmp sle i32 %28, 40000
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 6, i32* %2, align 4
  br label %64

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = icmp sle i32 %32, 45000
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 7, i32* %2, align 4
  br label %64

35:                                               ; preds = %31
  %36 = load i32, i32* %3, align 4
  %37 = icmp sle i32 %36, 50000
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 8, i32* %2, align 4
  br label %64

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  %41 = icmp sle i32 %40, 55000
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 9, i32* %2, align 4
  br label %64

43:                                               ; preds = %39
  %44 = load i32, i32* %3, align 4
  %45 = icmp sle i32 %44, 60000
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 10, i32* %2, align 4
  br label %64

47:                                               ; preds = %43
  %48 = load i32, i32* %3, align 4
  %49 = icmp sle i32 %48, 65000
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 11, i32* %2, align 4
  br label %64

51:                                               ; preds = %47
  %52 = load i32, i32* %3, align 4
  %53 = icmp sle i32 %52, 70000
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 12, i32* %2, align 4
  br label %64

55:                                               ; preds = %51
  %56 = load i32, i32* %3, align 4
  %57 = icmp sle i32 %56, 75000
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 13, i32* %2, align 4
  br label %64

59:                                               ; preds = %55
  %60 = load i32, i32* %3, align 4
  %61 = icmp sle i32 %60, 80000
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 14, i32* %2, align 4
  br label %64

63:                                               ; preds = %59
  store i32 15, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %62, %58, %54, %50, %46, %42, %38, %34, %30, %26, %22, %18, %14, %10, %6
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
