; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1145.c_si1145_compress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1145.c_si1145_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @si1145_compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si1145_compress(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %6, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 8, i32* %2, align 4
  br label %65

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %15, %24
  %17 = load i32, i32* %6, align 4
  %18 = ashr i32 %17, 1
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %25

24:                                               ; preds = %16
  br label %16

25:                                               ; preds = %23
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 5
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = sub nsw i32 4, %30
  %32 = shl i32 %29, %31
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = shl i32 %33, 4
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, 15
  %37 = or i32 %34, %36
  store i32 %37, i32* %2, align 4
  br label %65

38:                                               ; preds = %25
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = sub nsw i32 %40, 5
  %42 = ashr i32 %39, %41
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, 1
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %38
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 2
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, 64
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %5, align 4
  %56 = ashr i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %52, %46
  br label %58

58:                                               ; preds = %57, %38
  %59 = load i32, i32* %4, align 4
  %60 = shl i32 %59, 4
  %61 = load i32, i32* %5, align 4
  %62 = ashr i32 %61, 1
  %63 = and i32 %62, 15
  %64 = or i32 %60, %63
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %58, %28, %14, %10
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
