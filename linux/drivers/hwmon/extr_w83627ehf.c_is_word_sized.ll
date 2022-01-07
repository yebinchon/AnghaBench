; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_is_word_sized.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_is_word_sized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @is_word_sized to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_word_sized(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = and i32 %3, 65280
  %5 = icmp eq i32 %4, 256
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = and i32 %7, 65280
  %9 = icmp eq i32 %8, 512
  br i1 %9, label %10, label %22

10:                                               ; preds = %6, %1
  %11 = load i32, i32* %2, align 4
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, 80
  br i1 %13, label %49, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  %16 = and i32 %15, 255
  %17 = icmp eq i32 %16, 83
  br i1 %17, label %49, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = and i32 %19, 255
  %21 = icmp eq i32 %20, 85
  br i1 %21, label %49, label %22

22:                                               ; preds = %18, %6
  %23 = load i32, i32* %2, align 4
  %24 = and i32 %23, 65520
  %25 = icmp eq i32 %24, 1584
  br i1 %25, label %49, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %2, align 4
  %28 = icmp eq i32 %27, 1600
  br i1 %28, label %49, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %2, align 4
  %31 = icmp eq i32 %30, 1602
  br i1 %31, label %49, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %2, align 4
  %34 = and i32 %33, 65520
  %35 = icmp eq i32 %34, 1616
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* %2, align 4
  %38 = and i32 %37, 15
  %39 = icmp sge i32 %38, 6
  br i1 %39, label %49, label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %2, align 4
  %42 = icmp eq i32 %41, 115
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %2, align 4
  %45 = icmp eq i32 %44, 117
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %2, align 4
  %48 = icmp eq i32 %47, 119
  br label %49

49:                                               ; preds = %46, %43, %40, %36, %29, %26, %22, %18, %14, %10
  %50 = phi i1 [ true, %43 ], [ true, %40 ], [ true, %36 ], [ true, %29 ], [ true, %26 ], [ true, %22 ], [ true, %18 ], [ true, %14 ], [ true, %10 ], [ %48, %46 ]
  %51 = zext i1 %50 to i32
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
