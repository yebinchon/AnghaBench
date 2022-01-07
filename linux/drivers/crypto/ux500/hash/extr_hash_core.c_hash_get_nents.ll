; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/ux500/hash/extr_hash_core.c_hash_get_nents.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/ux500/hash/extr_hash_core.c_hash_get_nents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i64, i64 }

@HASH_DMA_ALIGN_SIZE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scatterlist*, i32, i32*)* @hash_get_nents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_get_nents(%struct.scatterlist* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.scatterlist* %0, %struct.scatterlist** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %10

10:                                               ; preds = %48, %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %15 = icmp ne %struct.scatterlist* %14, null
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i1 [ false, %10 ], [ %15, %13 ]
  br i1 %17, label %18, label %51

18:                                               ; preds = %16
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %8, align 4
  %21 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %22 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = sub nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %6, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %18
  %31 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %32 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @HASH_DMA_ALIGN_SIZE, align 4
  %35 = call i32 @IS_ALIGNED(i64 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %30, %18
  %38 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %39 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @HASH_DMA_ALIGN_SIZE, align 4
  %42 = call i32 @IS_ALIGNED(i64 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %30
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %47, %44, %37
  %49 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %50 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %49)
  store %struct.scatterlist* %50, %struct.scatterlist** %5, align 8
  br label %10

51:                                               ; preds = %16
  %52 = load i32*, i32** %7, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @EFAULT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %60
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
