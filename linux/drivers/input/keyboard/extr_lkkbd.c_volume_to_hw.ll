; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_lkkbd.c_volume_to_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_lkkbd.c_volume_to_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i32)* @volume_to_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @volume_to_hw(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  store i8 0, i8* %3, align 1
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %6, %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp sgt i32 %8, 100
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 100, i32* %2, align 4
  br label %11

11:                                               ; preds = %10, %7
  %12 = load i32, i32* %2, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i8 7, i8* %3, align 1
  br label %15

15:                                               ; preds = %14, %11
  %16 = load i32, i32* %2, align 4
  %17 = icmp sge i32 %16, 13
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i8 6, i8* %3, align 1
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i32, i32* %2, align 4
  %21 = icmp sge i32 %20, 25
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i8 5, i8* %3, align 1
  br label %23

23:                                               ; preds = %22, %19
  %24 = load i32, i32* %2, align 4
  %25 = icmp sge i32 %24, 38
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i8 4, i8* %3, align 1
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32, i32* %2, align 4
  %29 = icmp sge i32 %28, 50
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i8 3, i8* %3, align 1
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, i32* %2, align 4
  %33 = icmp sge i32 %32, 63
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i8 2, i8* %3, align 1
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i32, i32* %2, align 4
  %37 = icmp sge i32 %36, 75
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i8 1, i8* %3, align 1
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i32, i32* %2, align 4
  %41 = icmp sge i32 %40, 88
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i8 0, i8* %3, align 1
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i8, i8* %3, align 1
  %45 = zext i8 %44 to i32
  %46 = or i32 %45, 128
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %3, align 1
  %48 = load i8, i8* %3, align 1
  ret i8 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
