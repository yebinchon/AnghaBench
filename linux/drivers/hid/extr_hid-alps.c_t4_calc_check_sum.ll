; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-alps.c_t4_calc_check_sum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-alps.c_t4_calc_check_sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, i64)* @t4_calc_check_sum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t4_calc_check_sum(i64* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 255, i32* %8, align 4
  store i32 255, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = add i64 %12, %13
  %15 = icmp uge i64 %14, 50
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %78

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %52, %17
  %19 = load i64, i64* %7, align 8
  %20 = icmp ugt i64 %19, 0
  br i1 %20, label %21, label %63

21:                                               ; preds = %18
  %22 = load i64, i64* %7, align 8
  %23 = icmp ugt i64 %22, 20
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %27

25:                                               ; preds = %21
  %26 = load i64, i64* %7, align 8
  br label %27

27:                                               ; preds = %25, %24
  %28 = phi i64 [ 20, %24 ], [ %26, %25 ]
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %7, align 8
  %31 = sub i64 %30, %29
  store i64 %31, i64* %7, align 8
  br label %32

32:                                               ; preds = %48, %27
  %33 = load i64*, i64** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %10, align 8
  %36 = add i64 %34, %35
  %37 = getelementptr inbounds i64, i64* %33, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %9, align 4
  %46 = load i64, i64* %10, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %10, align 8
  br label %48

48:                                               ; preds = %32
  %49 = load i64, i64* %11, align 8
  %50 = add nsw i64 %49, -1
  store i64 %50, i64* %11, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %32, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, 255
  %55 = load i32, i32* %8, align 4
  %56 = ashr i32 %55, 8
  %57 = add nsw i32 %54, %56
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, 255
  %60 = load i32, i32* %9, align 4
  %61 = ashr i32 %60, 8
  %62 = add nsw i32 %59, %61
  store i32 %62, i32* %9, align 4
  br label %18

63:                                               ; preds = %18
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %64, 255
  %66 = load i32, i32* %8, align 4
  %67 = ashr i32 %66, 8
  %68 = add nsw i32 %65, %67
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = and i32 %69, 255
  %71 = load i32, i32* %9, align 4
  %72 = ashr i32 %71, 8
  %73 = add nsw i32 %70, %72
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = shl i32 %74, 8
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %75, %76
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %63, %16
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
