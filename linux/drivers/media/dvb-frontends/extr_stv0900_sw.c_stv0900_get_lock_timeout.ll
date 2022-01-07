; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0900_sw.c_stv0900_get_lock_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0900_sw.c_stv0900_get_lock_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @stv0900_get_lock_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stv0900_get_lock_timeout(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %28 [
    i32 130, label %10
    i32 129, label %27
    i32 128, label %27
  ]

10:                                               ; preds = %4
  %11 = load i32, i32* %7, align 4
  %12 = icmp sle i32 %11, 1500000
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i32*, i32** %5, align 8
  store i32 1500, i32* %14, align 4
  %15 = load i32*, i32** %6, align 8
  store i32 400, i32* %15, align 4
  br label %26

16:                                               ; preds = %10
  %17 = load i32, i32* %7, align 4
  %18 = icmp sle i32 %17, 5000000
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32*, i32** %5, align 8
  store i32 1000, i32* %20, align 4
  %21 = load i32*, i32** %6, align 8
  store i32 300, i32* %21, align 4
  br label %25

22:                                               ; preds = %16
  %23 = load i32*, i32** %5, align 8
  store i32 700, i32* %23, align 4
  %24 = load i32*, i32** %6, align 8
  store i32 100, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %19
  br label %26

26:                                               ; preds = %25, %13
  br label %66

27:                                               ; preds = %4, %4
  br label %28

28:                                               ; preds = %4, %27
  %29 = load i32, i32* %7, align 4
  %30 = icmp sle i32 %29, 1000000
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32*, i32** %5, align 8
  store i32 3000, i32* %32, align 4
  %33 = load i32*, i32** %6, align 8
  store i32 1700, i32* %33, align 4
  br label %65

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = icmp sle i32 %35, 2000000
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32*, i32** %5, align 8
  store i32 2500, i32* %38, align 4
  %39 = load i32*, i32** %6, align 8
  store i32 1100, i32* %39, align 4
  br label %64

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  %42 = icmp sle i32 %41, 5000000
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32*, i32** %5, align 8
  store i32 1000, i32* %44, align 4
  %45 = load i32*, i32** %6, align 8
  store i32 550, i32* %45, align 4
  br label %63

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = icmp sle i32 %47, 10000000
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32*, i32** %5, align 8
  store i32 700, i32* %50, align 4
  %51 = load i32*, i32** %6, align 8
  store i32 250, i32* %51, align 4
  br label %62

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  %54 = icmp sle i32 %53, 20000000
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32*, i32** %5, align 8
  store i32 400, i32* %56, align 4
  %57 = load i32*, i32** %6, align 8
  store i32 130, i32* %57, align 4
  br label %61

58:                                               ; preds = %52
  %59 = load i32*, i32** %5, align 8
  store i32 300, i32* %59, align 4
  %60 = load i32*, i32** %6, align 8
  store i32 100, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %55
  br label %62

62:                                               ; preds = %61, %49
  br label %63

63:                                               ; preds = %62, %43
  br label %64

64:                                               ; preds = %63, %37
  br label %65

65:                                               ; preds = %64, %31
  br label %66

66:                                               ; preds = %65, %26
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, 128
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %70, align 4
  %72 = sdiv i32 %71, 2
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %69, %66
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
