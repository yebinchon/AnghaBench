; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_ycbcr2rgb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_ycbcr2rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ([3 x i32]*, i32, i32, i32, i32, i32*, i32*, i32*)* @ycbcr2rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ycbcr2rgb([3 x i32]* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca [3 x i32]*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store [3 x i32]* %0, [3 x i32]** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %17 = load i32, i32* %13, align 4
  %18 = shl i32 %17, 4
  %19 = load i32, i32* %10, align 4
  %20 = sub nsw i32 %19, %18
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = sub nsw i32 %21, 2048
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = sub nsw i32 %23, 2048
  store i32 %24, i32* %12, align 4
  %25 = load [3 x i32]*, [3 x i32]** %9, align 8
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %26, i64 0, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %10, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load [3 x i32]*, [3 x i32]** %9, align 8
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %31, i64 0
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %32, i64 0, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %11, align 4
  %36 = mul nsw i32 %34, %35
  %37 = add nsw i32 %30, %36
  %38 = load [3 x i32]*, [3 x i32]** %9, align 8
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %38, i64 0
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %39, i64 0, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %12, align 4
  %43 = mul nsw i32 %41, %42
  %44 = add nsw i32 %37, %43
  %45 = load i32*, i32** %14, align 8
  store i32 %44, i32* %45, align 4
  %46 = load [3 x i32]*, [3 x i32]** %9, align 8
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %46, i64 1
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %47, i64 0, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %10, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load [3 x i32]*, [3 x i32]** %9, align 8
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %52, i64 1
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %53, i64 0, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %11, align 4
  %57 = mul nsw i32 %55, %56
  %58 = add nsw i32 %51, %57
  %59 = load [3 x i32]*, [3 x i32]** %9, align 8
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %59, i64 1
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %60, i64 0, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %12, align 4
  %64 = mul nsw i32 %62, %63
  %65 = add nsw i32 %58, %64
  %66 = load i32*, i32** %15, align 8
  store i32 %65, i32* %66, align 4
  %67 = load [3 x i32]*, [3 x i32]** %9, align 8
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* %67, i64 2
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %68, i64 0, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %10, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load [3 x i32]*, [3 x i32]** %9, align 8
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* %73, i64 2
  %75 = getelementptr inbounds [3 x i32], [3 x i32]* %74, i64 0, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = mul nsw i32 %76, %77
  %79 = add nsw i32 %72, %78
  %80 = load [3 x i32]*, [3 x i32]** %9, align 8
  %81 = getelementptr inbounds [3 x i32], [3 x i32]* %80, i64 2
  %82 = getelementptr inbounds [3 x i32], [3 x i32]* %81, i64 0, i64 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %12, align 4
  %85 = mul nsw i32 %83, %84
  %86 = add nsw i32 %79, %85
  %87 = load i32*, i32** %16, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32*, i32** %14, align 8
  %89 = load i32, i32* %88, align 4
  %90 = ashr i32 %89, 12
  %91 = call i32 @clamp(i32 %90, i32 0, i32 4080)
  %92 = load i32*, i32** %14, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i32*, i32** %15, align 8
  %94 = load i32, i32* %93, align 4
  %95 = ashr i32 %94, 12
  %96 = call i32 @clamp(i32 %95, i32 0, i32 4080)
  %97 = load i32*, i32** %15, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32*, i32** %16, align 8
  %99 = load i32, i32* %98, align 4
  %100 = ashr i32 %99, 12
  %101 = call i32 @clamp(i32 %100, i32 0, i32 4080)
  %102 = load i32*, i32** %16, align 8
  store i32 %101, i32* %102, align 4
  ret void
}

declare dso_local i32 @clamp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
