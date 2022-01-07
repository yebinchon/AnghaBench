; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_sg_nents_xlen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_algo.c_sg_nents_xlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scatterlist*, i32, i32, i32)* @sg_nents_xlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sg_nents_xlen(%struct.scatterlist* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %34, %4
  %13 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %14 = icmp ne %struct.scatterlist* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i1 [ false, %12 ], [ %17, %15 ]
  br i1 %19, label %20, label %35

20:                                               ; preds = %18
  %21 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %22 = call i32 @sg_dma_len(%struct.scatterlist* %21)
  %23 = load i32, i32* %8, align 4
  %24 = icmp ule i32 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %27 = call i32 @sg_dma_len(%struct.scatterlist* %26)
  %28 = load i32, i32* %8, align 4
  %29 = sub i32 %28, %27
  store i32 %29, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %30 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %31 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %30)
  store %struct.scatterlist* %31, %struct.scatterlist** %5, align 8
  br label %34

32:                                               ; preds = %20
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %32, %25
  br label %12

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %44, %35
  %37 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %38 = icmp ne %struct.scatterlist* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi i1 [ false, %36 ], [ %41, %39 ]
  br i1 %43, label %44, label %63

44:                                               ; preds = %42
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %47 = call i32 @sg_dma_len(%struct.scatterlist* %46)
  %48 = load i32, i32* %11, align 4
  %49 = sub i32 %47, %48
  %50 = call i32 @min(i32 %45, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @DIV_ROUND_UP(i32 %51, i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %6, align 4
  %60 = sub i32 %59, %58
  store i32 %60, i32* %6, align 4
  store i32 0, i32* %11, align 4
  %61 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %62 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %61)
  store %struct.scatterlist* %62, %struct.scatterlist** %5, align 8
  br label %36

63:                                               ; preds = %42
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
