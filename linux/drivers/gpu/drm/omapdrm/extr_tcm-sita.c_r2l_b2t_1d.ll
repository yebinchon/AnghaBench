; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_tcm-sita.c_r2l_b2t_1d.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_tcm-sita.c_r2l_b2t_1d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64*, i64*, i64)* @r2l_b2t_1d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r2l_b2t_1d(i64 %0, i64* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %5, align 8
  %14 = sub i64 %12, %13
  %15 = load i64*, i64** %6, align 8
  store i64 %14, i64* %15, align 8
  br label %16

16:                                               ; preds = %38, %4
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %48

20:                                               ; preds = %16
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64*, i64** %6, align 8
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @find_next_bit(i64* %21, i64 %22, i64 %24)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64*, i64** %6, align 8
  %28 = load i64, i64* %27, align 8
  %29 = sub i64 %26, %28
  %30 = load i64, i64* %5, align 8
  %31 = icmp uge i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %20
  %33 = load i64*, i64** %7, align 8
  %34 = load i64*, i64** %6, align 8
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @bitmap_set(i64* %33, i64 %35, i64 %36)
  store i32 1, i32* %11, align 4
  br label %48

38:                                               ; preds = %20
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %10, align 8
  %41 = sub i64 %39, %40
  %42 = load i64, i64* %5, align 8
  %43 = add i64 %41, %42
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %5, align 8
  %46 = sub i64 %44, %45
  %47 = load i64*, i64** %6, align 8
  store i64 %46, i64* %47, align 8
  br label %16

48:                                               ; preds = %32, %16
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %55

52:                                               ; preds = %48
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  br label %55

55:                                               ; preds = %52, %51
  %56 = phi i32 [ 0, %51 ], [ %54, %52 ]
  ret i32 %56
}

declare dso_local i64 @find_next_bit(i64*, i64, i64) #1

declare dso_local i32 @bitmap_set(i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
