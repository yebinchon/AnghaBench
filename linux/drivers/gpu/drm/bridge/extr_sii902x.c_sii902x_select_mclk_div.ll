; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii902x.c_sii902x_select_mclk_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii902x.c_sii902x_select_mclk_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sii902x_mclk_div_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i32)* @sii902x_select_mclk_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sii902x_select_mclk_div(i64* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = udiv i32 %12, %13
  store i32 %14, i32* %7, align 4
  store i32 100000, i32* %8, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %15

15:                                               ; preds = %39, %3
  %16 = load i64, i64* %9, align 8
  %17 = load i32*, i32** @sii902x_mclk_div_table, align 8
  %18 = call i64 @ARRAY_SIZE(i32* %17)
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** @sii902x_mclk_div_table, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %21, %25
  %27 = call i32 @abs(i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp uge i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %39

32:                                               ; preds = %20
  %33 = load i64, i64* %9, align 8
  store i64 %33, i64* %10, align 8
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %42

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %31
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %9, align 8
  br label %15

42:                                               ; preds = %37, %15
  %43 = load i64, i64* %10, align 8
  %44 = shl i64 %43, 4
  %45 = load i64*, i64** %4, align 8
  %46 = load i64, i64* %45, align 8
  %47 = or i64 %46, %44
  store i64 %47, i64* %45, align 8
  %48 = load i32*, i32** @sii902x_mclk_div_table, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  ret i32 %51
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
