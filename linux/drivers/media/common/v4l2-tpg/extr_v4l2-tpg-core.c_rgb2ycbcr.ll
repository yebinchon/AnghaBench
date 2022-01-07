; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_rgb2ycbcr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_rgb2ycbcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ([3 x i32]*, i32, i32, i32, i32, i32*, i32*, i32*)* @rgb2ycbcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgb2ycbcr([3 x i32]* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6, i32* %7) #0 {
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
  %17 = load [3 x i32]*, [3 x i32]** %9, align 8
  %18 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %10, align 4
  %22 = mul nsw i32 %20, %21
  %23 = load [3 x i32]*, [3 x i32]** %9, align 8
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %11, align 4
  %28 = mul nsw i32 %26, %27
  %29 = add nsw i32 %22, %28
  %30 = load [3 x i32]*, [3 x i32]** %9, align 8
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %30, i64 0
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %31, i64 0, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %12, align 4
  %35 = mul nsw i32 %33, %34
  %36 = add nsw i32 %29, %35
  %37 = ashr i32 %36, 16
  %38 = load i32, i32* %13, align 4
  %39 = shl i32 %38, 4
  %40 = add nsw i32 %37, %39
  %41 = load i32*, i32** %14, align 8
  store i32 %40, i32* %41, align 4
  %42 = load [3 x i32]*, [3 x i32]** %9, align 8
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %42, i64 1
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %43, i64 0, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %10, align 4
  %47 = mul nsw i32 %45, %46
  %48 = load [3 x i32]*, [3 x i32]** %9, align 8
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %48, i64 1
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %49, i64 0, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %11, align 4
  %53 = mul nsw i32 %51, %52
  %54 = add nsw i32 %47, %53
  %55 = load [3 x i32]*, [3 x i32]** %9, align 8
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %55, i64 1
  %57 = getelementptr inbounds [3 x i32], [3 x i32]* %56, i64 0, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %12, align 4
  %60 = mul nsw i32 %58, %59
  %61 = add nsw i32 %54, %60
  %62 = ashr i32 %61, 16
  %63 = add nsw i32 %62, 2048
  %64 = load i32*, i32** %15, align 8
  store i32 %63, i32* %64, align 4
  %65 = load [3 x i32]*, [3 x i32]** %9, align 8
  %66 = getelementptr inbounds [3 x i32], [3 x i32]* %65, i64 2
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %66, i64 0, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %10, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load [3 x i32]*, [3 x i32]** %9, align 8
  %72 = getelementptr inbounds [3 x i32], [3 x i32]* %71, i64 2
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %72, i64 0, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %11, align 4
  %76 = mul nsw i32 %74, %75
  %77 = add nsw i32 %70, %76
  %78 = load [3 x i32]*, [3 x i32]** %9, align 8
  %79 = getelementptr inbounds [3 x i32], [3 x i32]* %78, i64 2
  %80 = getelementptr inbounds [3 x i32], [3 x i32]* %79, i64 0, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %12, align 4
  %83 = mul nsw i32 %81, %82
  %84 = add nsw i32 %77, %83
  %85 = ashr i32 %84, 16
  %86 = add nsw i32 %85, 2048
  %87 = load i32*, i32** %16, align 8
  store i32 %86, i32* %87, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
